package com.fh.controller.processInfo;

import com.fh.controller.base.BaseController;
import com.fh.entity.Page;
import com.fh.entity.processInfo.JobInfo;
import com.fh.entity.processInfo.ProcessInfo;
import com.fh.entity.processInfo.TaskInfo;
import com.fh.entity.workFlowOrder.WorkflowOrder;
import com.fh.service.TaskInfo.taskInfoManager;
import com.fh.service.jobInfo.jobInfoManager;
import com.fh.service.processInfo.processInfoManager;
import com.fh.service.workFlowOrder.WorkFlowOrderManager;
import com.fh.util.DateUtil;
import com.fh.util.Jurisdiction;
import com.fh.util.PageData;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import redis.clients.jedis.Jedis;

import javax.annotation.Resource;
import java.io.*;
import java.text.SimpleDateFormat;
import java.util.*;

/**
 * 2 * @Author: kiven
 * 3 * @Date: 2020-04-08 10:38
 * 4
 */
@Controller
@RequestMapping(value="/ProcessInfo")
public class ProcessInfoController extends BaseController{
    String menuUrl = "ProcessInfo/list.do"; //菜单地址(权限用)
    @Resource(name="processInfoService")
    private processInfoManager processInfoService;
    @Resource(name="workFlowOrderService")
    private WorkFlowOrderManager workFlowOrderService;
    @Resource(name="taskInfoService")
    private taskInfoManager taskInfoService;
    @Resource(name="jobInfoService")
    private jobInfoManager jobInfoService;

    @RequestMapping(value="/list")
    public ModelAndView list(Page page)throws Exception{
        ModelAndView mv = this.getModelAndView();
        PageData pd = new PageData();
        pd = this.getPageData();
        String beginTime = pd.getString("beginTime");	//开始时间
        String endTime = pd.getString("endTime");		//结束时间
        //todo 如果时间为空的话，默认查询三天的数据
        if (beginTime==null||beginTime.equals("")){
           beginTime = DateUtil.getBeforeDayDate(-3);
        }else{
            beginTime +=" 00:00:00";
        }
        if (endTime==null||endTime.equals("")){
           endTime = DateUtil.getBeforeDayDate(1);
        }else{
            endTime+=" 23:59:59";
        }
        pd.put("beginTime", beginTime);
        pd.put("endTime", endTime);
        page.setPd(pd);
        List<PageData> processList = processInfoService.getListByQuery(page);
        mv.setViewName("process/process_list");
        mv.addObject("processList", processList);
        mv.addObject("pd", pd);
        mv.addObject("QX", Jurisdiction.getHC());	//按钮权限
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
        workFlowOrderService.delOrder(pd);
        processInfoService.delProcess(pd);

        taskInfoService.delTaskInfo(pd);
        out.write("success");
        out.close();
    }
    // 根据订单ID获取任务信息
    @RequestMapping(value = "getTaskInfo")
    @ResponseBody
    public List<TaskInfo> getTaskInfo()throws Exception{
        List<TaskInfo>infoList = new ArrayList<>();
        List<TaskInfo>infoList1 = new ArrayList<>();
        PageData pd = this.getPageData();
        String orderId = pd.getString("orderId");
        infoList = taskInfoService.getListByOrderid(orderId);
        for (int i=0;i<infoList.size();i++){
                TaskInfo info = infoList.get(i);
                info.setCreateTime(info.getCreateTime().split("\\.")[0]);
                if(info.getBeginTime()!=null){
                    info.setBeginTime(info.getBeginTime().split("\\.")[0]);
                }else {
                    info.setBeginTime("");
                }
              if (info.getEndTime()!=null){
                  info.setEndTime(info.getEndTime().split("\\.")[0]);
              }else {
                  info.setEndTime("");
              }
              if (info.getNodeName()==null){
                  info.setNodeName("");
              }
              if (info.getResult()==null){
                  info.setResult(info.getStatus());
              }
                 infoList1.add(info);
            }
        return infoList1;
    }
    /**
     * 根据TaskID获取任务详细信息
     */
    @RequestMapping("getJobInfo")
    @ResponseBody
    public JobInfo getJonInfo()throws Exception{
        PageData pd = this.getPageData();
        JobInfo  jobInfo = jobInfoService.findJobInfo(pd);
        String a1 = "";
        String a2 = "";
        String a3 = "";
        String a4 = "";
        a1 += readFileContent(jobInfo.getOrderFile());
        a2 += readFileContent(jobInfo.getScriptFile());
        a3 += readFileContent(jobInfo.getResultFile());
        a4 += readFileContent(jobInfo.getOutFile());
        a1.replaceAll("<xml","");
        a2.replaceAll("<xml","");
        a3.replaceAll("<xml","");
        a4.replaceAll("<xml","");
        jobInfo.setOrderFile(a1);
        jobInfo.setScriptFile(a2);
        jobInfo.setResultFile(a3);
        jobInfo.setOutFile(a4);
        return jobInfo;
    }
    private static String readFileContent(String fileName) throws IOException {
        StringBuilder sb = new StringBuilder();
        File file = new File(fileName);
        if (file.exists()){
            BufferedReader bf = new BufferedReader(new FileReader(file));
            String content = "";
            while(content != null){
                content = bf.readLine();
                if(content == null){
                    break;
                }
                sb.append(content.trim());
            }
            bf.close();
        }
        return sb.toString();
    }
    //暂停
    @RequestMapping("/Suspended")
    @ResponseBody
    public Object Suspended() throws Exception {
        Map<String, String> map = new HashMap<String, String>();
        PageData pd = this.getPageData();
        Properties pro = new Properties();
        pro.load(Thread.currentThread().getContextClassLoader().getResourceAsStream("redis.properties"));
        String redisIP = pro.getProperty("host");
        int redisPort = Integer.parseInt(pro.getProperty("port"));
        Jedis redis = new Jedis(redisIP, redisPort);
        String orderId = pd.getString("orderId");
        redis.lpush("dpps:queue:suspend",orderId);
        if(orderId!=""){
            map.put("result","success");
        }else{
            map.put("result","fail");
        }
        redis.close();
        ProcessInfo processInfo = processInfoService.getProcess(pd);
        WorkflowOrder orderInfo = new WorkflowOrder();
        orderInfo.setTaskSerialNumber(processInfo.getPlatform());
        orderInfo.setOrderStatus("7");
        workFlowOrderService.updateOrder(orderInfo);
        return map;
    }
    //暂停
    @RequestMapping("/Cancelled")
    @ResponseBody
    public Object Cancelled() throws Exception {
        Map<String, String> map = new HashMap<String, String>();
        PageData pd = this.getPageData();
        Properties pro = new Properties();
        pro.load(Thread.currentThread().getContextClassLoader().getResourceAsStream("redis.properties"));
        String redisIP = pro.getProperty("host");
        int redisPort = Integer.parseInt(pro.getProperty("port"));
        Jedis redis = new Jedis(redisIP, redisPort);
        String orderId = pd.getString("orderId");
        redis.lpush("dpps:queue:cancel",orderId);
        if(orderId!=""){
            map.put("result","success");
        }else{
            map.put("result","fail");
        }
        redis.close();
        ProcessInfo processInfo = processInfoService.getProcess(pd);
        WorkflowOrder orderInfo = new WorkflowOrder();
        orderInfo.setTaskSerialNumber(processInfo.getPlatform());
        orderInfo.setOrderStatus("5");
        workFlowOrderService.updateOrder(orderInfo);
        return map;
    }
    //继续
    @RequestMapping("/Continue")
    @ResponseBody
    public Object Continue() throws Exception {
        Map<String, String> map = new HashMap<String, String>();
        PageData pd = this.getPageData();
        Properties pro = new Properties();
        pro.load(Thread.currentThread().getContextClassLoader().getResourceAsStream("redis.properties"));
        String redisIP = pro.getProperty("host");
        int redisPort = Integer.parseInt(pro.getProperty("port"));
        Jedis redis = new Jedis(redisIP, redisPort);
        String orderId = pd.getString("orderId");
        redis.lpush("dpps:queue:unsuspend",orderId);
        if(orderId!=""){
            map.put("result","success");
        }else{
            map.put("result","fail");
        }
        redis.close();
        ProcessInfo processInfo = processInfoService.getProcess(pd);
        WorkflowOrder orderInfo = new WorkflowOrder();
        orderInfo.setTaskSerialNumber(processInfo.getPlatform());
        orderInfo.setOrderStatus("2");
        workFlowOrderService.updateOrder(orderInfo);
        return map;
    }
    //查询质量报告
    @RequestMapping("/getReportList")
    public ModelAndView getReportList(Page page)throws Exception{
        ModelAndView mv = this.getModelAndView();
        PageData pd = new PageData();
        pd = this.getPageData();
        String beginTime = pd.getString("beginTime");	//开始时间
        String endTime = pd.getString("endTime");		//结束时间
        if (beginTime==null||beginTime.equals("")){
            SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
            String date = sdf.format(new Date());
            date +=" 00:00:00";
            beginTime = date;
        }else{
            beginTime +=" 00:00:00";
        }
        if (endTime==null||endTime.equals("")){
            SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
            String date = sdf.format(new Date());
            date +=" 23:59:59";
            endTime = date;
        }else{
            endTime+=" 23:59:59";
        }

        String tet = pd.getString("jobtaskId");
        String task = pd.getString("taskSerialNumber");
        if (!"".equals(tet)&&tet!=null){
            pd.put("beginTime",null);
            pd.put("endTime",null);
        }
        if (!"".equals(task)&&task!=null){
            pd.put("beginTime",null);
            pd.put("endTime",null);
        }
        page.setPd(pd);
        List<PageData> processList = processInfoService.getListByQuery(page);
        mv.setViewName("process/process_list");
        mv.addObject("processList", processList);
        mv.addObject("pd", pd);
        mv.addObject("QX", Jurisdiction.getHC());	//按钮权限
        return mv;
    }

}

