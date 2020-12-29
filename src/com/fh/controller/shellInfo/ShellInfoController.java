package com.fh.controller.shellInfo;

import ch.ethz.ssh2.Connection;
import ch.ethz.ssh2.Session;
import ch.ethz.ssh2.StreamGobbler;
import com.fh.controller.base.BaseController;
import com.fh.entity.Page;
import com.fh.entity.shellInfo.shellInfo;
import com.fh.entity.system.Dictionaries;
import com.fh.service.ShellInfo.shellInfoManager;
import com.fh.service.system.dictionaries.DictionariesManager;
import com.fh.util.AppUtil;
import com.fh.util.Jurisdiction;
import com.fh.util.PageData;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import javax.annotation.Resource;
import java.io.*;
import java.util.*;

/**
 * 2 * @Author: kiven
 * 3 * @Date: 2020-04-08 10:38
 * 4
 */
@Controller
@RequestMapping(value="/ShellInfo")
public class ShellInfoController extends BaseController{
    String menuUrl = "ShellInfo/list.do"; //菜单地址(权限用)
    @Resource(name="shellInfoService")
    private shellInfoManager shellInfoService;
    @Resource(name="dictionariesService")
    private DictionariesManager dictionariesService;

    @RequestMapping(value="/list")
    public ModelAndView list(Page page)throws Exception{
        ModelAndView mv = this.getModelAndView();
        List<PageData> shellInfoList = shellInfoService.getListByQuery(page);
        mv.setViewName("shell/shellInfo_list");
        mv.addObject("shellInfoList", shellInfoList);
        mv.addObject("QX", Jurisdiction.getHC());	//按钮权限
        return mv;
    }

    @RequestMapping(value = "/toAdd")
    public ModelAndView toAdd()throws Exception{
        ModelAndView mv = this.getModelAndView();
        mv.addObject("msg","Add");
        mv.setViewName("shell/shellInfo_edit");
        return mv;
    }
    @RequestMapping(value = "/Add")
    public ModelAndView Add()throws Exception{
        ModelAndView mv = this.getModelAndView();
        PageData pd = this.getPageData();
        pd.put("id",this.get32UUID());
        shellInfoService.saveShell(pd);
        mv.addObject("msg","success");
        mv.setViewName("save_result");
        return mv;
    }
    @RequestMapping(value = "/toEdit")
    public ModelAndView toEdit( )throws Exception{
        ModelAndView mv = this.getModelAndView();
        PageData pd = this.getPageData();
        shellInfo info = shellInfoService.selectShell(pd);
        mv.addObject("info",info);
        mv.addObject("msg","Edit");
        mv.setViewName("shell/shellInfo_edit");
        return mv;
    }
    @RequestMapping(value = "/Edit")
    public ModelAndView Edit()throws Exception{
        ModelAndView mv = this.getModelAndView();
        PageData pd = this.getPageData();
        shellInfoService.updateShell(pd);
        mv.addObject("msg","success");
        mv.setViewName("save_result");
        return mv;
    }
    /**删除流程
     * @param out
     * @throws Exception
     */
    @RequestMapping(value="/delete")
    public void delete(PrintWriter out) throws Exception{
        if(!Jurisdiction.buttonJurisdiction(menuUrl, "del")){return ;} //校验权限
        logBefore(logger, Jurisdiction.getUsername()+"删除流程");
        PageData pd = new PageData();
        pd = this.getPageData();
        shellInfoService.delShell(pd);
        out.write("success");
        out.close();
    }

    /**判断编码是否存在
     * @return
     */
    @RequestMapping(value="/startShell")
    @ResponseBody
    public Object startShell(){
        Map<String,String> map = new HashMap<String,String>();
        String errInfo = "success";
        PageData pd = new PageData();
        pd = this.getPageData();
        String msg = "";
        if (pd.getString("shell")==null){
            msg = "脚本为空，请重试！";
        }else {
            try{
                msg  = execShellscript(pd);
            } catch(Exception e){
                logger.error(e.toString(), e);
            }
        }
        map.put("result", errInfo);				//返回结果
        map.put("msg",msg);
        return AppUtil.returnObject(new PageData(), map);
    }

    private static Connection getOpenConnection(PageData pd)throws IOException{
        Connection conn = new Connection(pd.getString("ip"), 22);
        conn.connect();
        boolean isAuthenticate = conn.authenticateWithPassword(pd.getString("user"),pd.getString("passwd") );
        if (!isAuthenticate) {
            System.out.println("Authentication failed");
            throw new IOException("Authentication failed.");
        }
        return conn;
    }

    public static String execShellscript(PageData pd) {
        Connection conn = null;
        Session sess = null;
        String line = "";
        InputStream stdout = null;
        BufferedReader br = null;
        StringBuffer buffer = new StringBuffer("exec result:");
        buffer.append(System.getProperty("line.separtor"));				//换行
        try {
            conn = getOpenConnection(pd);
            sess = conn.openSession();
            sess.execCommand(pd.getString("shell"));
            stdout = new StreamGobbler(sess.getStdout());
            br = new BufferedReader(new InputStreamReader(stdout));
            while(true) {
                line = br.readLine();
                if(line != null)
                    break;
            }
            sess.close();
            conn.close();
        } catch (IOException e) {
            e.printStackTrace();
        } finally {
            try {
                if(stdout != null)
                    stdout.close();
                if(br != null)
                    br.close();
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
        return line;
    }
    //todo 首页图表
    @RequestMapping("/getFileSize")
    public Map<String,String>getFileSize()throws Exception{
        Map<String,String>sizeMap = new HashMap<>();
        int total = 28160;
        /*Properties pro = new Properties();
        pro.load(Thread.currentThread().getContextClassLoader().getResourceAsStream("systemconfig.properties"));
       *//* List<Dictionaries>satelliteList = dictionariesService.findBianma("004");
        for (int i=0;i<satelliteList.size();i++){
            String satelliteName = satelliteList.get(i).getNAME().replaceAll("-","");

        }*//*
        String fileUrl = pro.getProperty("Node_Url");
        PageData pd = new PageData();
        pd.put("user",pro.getProperty("Node_User"));
        pd.put("ip",pro.getProperty("Node_IP"));
        pd.put("passwd",pro.getProperty("Node_Passwd"));

        double GF06l0Size = execShellscript1("du -s"+fileUrl+" /GF06/L0DATA",pd);
        double GF07l0Size = execShellscript1("du -s"+fileUrl+" /GF07/L0DATA",pd);
        double localData = GF06l0Size+GF07l0Size;
        sizeMap.put("localData",String.valueOf(Integer.parseInt(String.valueOf(localData).split("\\.")[0])));
        double GF06L1A = execShellscript1("du -s "+fileUrl+"/GF06/L1DATA",pd);
        double GF06L2A = execShellscript1("du -s "+fileUrl+"/GF06/L2DATA",pd);
        double GF07L1A = execShellscript1("du -s "+fileUrl+"/GF07/L1DATA",pd);
        double GF07L2A = execShellscript1("du -s "+fileUrl+"/GF07/L2DATA",pd);
        double productData = GF06L1A+GF06L2A+GF07L1A+GF07L2A;
        sizeMap.put("productData",String.valueOf(Integer.parseInt(String.valueOf(productData).split("\\.")[0])));
        double GF06Signal = execShellscript1("du -s "+fileUrl+"/GF06/SIGNAL",pd);
        double GF07Signal = execShellscript1("du -s /SSD0/gfinterface/fromDTC_temp",pd);
        double totalSignal = GF06Signal+GF07Signal;
        sizeMap.put("signalData",String.valueOf(Integer.parseInt(String.valueOf(totalSignal).split("\\.")[0])));
        sizeMap.put("lastData",String.valueOf(Integer.parseInt(String.valueOf(total-localData-productData-totalSignal).split("\\.")[0])));*/
        return sizeMap;
    }
    public static Double execShellscript1(String cmd, PageData pd) {
        String line = null;
        Connection conn = null;
        Session sess = null;
        InputStream stdout = null;
        BufferedReader br = null;
        StringBuffer buffer = new StringBuffer("exec result:");
        buffer.append(System.getProperty("line.separtor"));				//换行
        try {
            conn = getOpenConnection(pd);
            sess = conn.openSession();
            sess.execCommand(cmd);
            stdout = new StreamGobbler(sess.getStdout());
            br = new BufferedReader(new InputStreamReader(stdout));
            while(true) {
                line = br.readLine();
                if(line != null)
                    break;
            }
            sess.close();
            conn.close();
        } catch (IOException e) {
            e.printStackTrace();
        } finally {
            try {
                if(stdout != null)
                    stdout.close();
                if(br != null)
                    br.close();
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
        String lint = line.split("\\t")[0];
        Double total = Double.parseDouble(lint)/1024/1024;
        return total;
    }
}

