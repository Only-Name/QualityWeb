package com.fh.controller.workFlowOrder;

import com.fh.controller.base.BaseController;
import com.fh.entity.Page;
import com.fh.entity.processInfo.ProcessInfo;
import com.fh.entity.processInfo.TaskInfo;
import com.fh.entity.system.Dictionaries;
import com.fh.entity.workFlowOrder.WorkflowOrder;
import com.fh.service.TaskInfo.taskInfoManager;
import com.fh.service.processInfo.processInfoManager;
import com.fh.service.system.dictionaries.DictionariesManager;
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
@RequestMapping(value="/WorkFlowOrder")
public class WorkFlowOrderController extends BaseController{
    String menuUrl = "WorkFlowOrder/list.do"; //菜单地址(权限用)
    @Resource(name="workFlowOrderService")
    private WorkFlowOrderManager workFlowOrderService;
    @Resource(name="dictionariesService")
    private DictionariesManager dictionariesService;
    @Resource(name="taskInfoService")
    private taskInfoManager taskInfoService;
    @RequestMapping("/orderList")
    public ModelAndView getList(Page page)throws Exception{
        ModelAndView mv = this.getModelAndView();
        PageData pd = new PageData();
        pd = this.getPageData();
        page.setPd(pd);
        List<PageData>orderList = workFlowOrderService.getOrderList(page);
        if (orderList!=null){
            String orderStatus = "";
            for (int i=0;i<orderList.size();i++){
                orderStatus = orderList.get(i).getString("orderStatus");
               /* orderList.get(i).put("startTime",orderList.get(i).getString("startTime").substring(0,18));
                orderList.get(i).put("endTime",orderList.get(i).getString("endTime").substring(0,18));*/
                switch (orderStatus){
                    case "0":
                        //Ready进入准备状态Hold（任务单处于排队中）；Running（任务单处于执行中）;Aborted（任务单处于放弃状态）；Completed（任务单处于完成状态）
                        orderStatus = "Ready";
                        break;
                    case"1":
                        orderStatus = "Hold";
                        break;
                    case"2":
                        orderStatus = "Running";
                        break;
                    case"3":
                        orderStatus = "Completed";
                        break;
                    case"4":
                        orderStatus = "Aborted";
                        break;
                    case"5":
                        orderStatus = "Cancel";
                        break;
                    case"7":
                        orderStatus = "Suspended";
                        break;
                    case"8":
                        orderStatus = "startImmidately";
                        break;
                }
                orderList.get(i).put("orderStatus",orderStatus);
            }
        }
        List<Dictionaries>satelliteList = dictionariesService.findBianma("004");
        mv.addObject("satelliteList",satelliteList);
        List<Dictionaries>taskModeList = dictionariesService.findBianma("006");
        mv.addObject("taskModeList",taskModeList);
        mv.addObject("orderList",orderList);
        mv.addObject("QX", Jurisdiction.getHC());	//按钮权限
        mv.addObject("pd",pd);
        mv.setViewName("workFlowOrder/order_list");
        return mv;
    }
    @RequestMapping(value = "/selectTaskList")
    @ResponseBody
    public List<TaskInfo>selectTaskList()throws Exception{
        List<TaskInfo>infoList = new ArrayList<>();
        PageData pd = this.getPageData();
        infoList = taskInfoService.selectListBytaskId(pd);
        return infoList;
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
        pd.put("beginTime",beginTime);
        if (endTime==null||endTime.equals("")){
            SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
            String date = sdf.format(new Date());
            date +=" 23:59:59";
            endTime = date;
        }else{
            endTime+=" 23:59:59";
        }
        pd.put("endTime",endTime);
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
        List<PageData> reportList = workFlowOrderService.getReportList(page);
        mv.setViewName("workFlowOrder/report_list");
        mv.addObject("reportList", reportList);
        mv.addObject("pd", pd);
        mv.addObject("QX", Jurisdiction.getHC());	//按钮权限
        return mv;
    }
    @RequestMapping(value = "/changeReport")
    public ModelAndView changeReport()throws Exception{
        ModelAndView mv = this.getModelAndView();
        List<Dictionaries>satelliteList = dictionariesService.findBianma("004");
        mv.addObject("satelliteList",satelliteList);
        mv.setViewName("workFlowOrder/change_report");
        return mv;
    }
    @RequestMapping(value = "/goDatask")
    public ModelAndView goDatask()throws Exception{
        ModelAndView mv = this.getModelAndView();
        PageData pd = this.getPageData();
        String satellite = "2";
        if (pd.getString("jobtaskId")!=null){
            pd.put("jobtaskId",pd.getString("jobtaskId").split(";")[0]);
            satellite = pd.getString("sceneId").split(";")[0].split("_")[0].replaceAll("0","-");
        }
        List<Dictionaries>satelliteList = dictionariesService.findBianma("004");
        List<Dictionaries>statusList = dictionariesService.findBianma("005");
        mv.addObject("satellite",satellite);
        mv.addObject("pd",pd);
        mv.addObject("taskSerialNumber","DA"+ DateUtil.getSdfTimes());
        mv.addObject("satelliteList",satelliteList);
        mv.addObject("statusList",statusList);
        mv.setViewName("workFlowOrder/daTask_edit");
        mv.addObject("msg","addDatask");
        return mv;
    }
    @RequestMapping(value ="/addDatask")
    public String addDatask()throws Exception{
        PageData pd = this.getPageData();
        Properties pro = new Properties();
        pro.load(Thread.currentThread().getContextClassLoader().getResourceAsStream("systemconfig.properties"));
        String xml = "<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n" +
                "<DATask>\n" +
                "  <fileHeader>\n" +
                "    <title>数据归档任务</title>\n" +
                "    <identificationCode>DATask</identificationCode>\n" +
                "    <source>OMO</source>\n" +
                "    <destination>DQA</destination>\n" +
                "    <createdTime>"+DateUtil.getTime()+"</createdTime>\n" +
                "    <authorInfo></authorInfo>\n" +
                "  </fileHeader>\n" +
                "  <content>\n" +
                "    <taskBasicInfo>\n" +
                "      <taskSerialNumber>"+pd.getString("taskSerialNumber")+"</taskSerialNumber>\n" +
                "      <taskPriority>"+pd.getString("taskPriority")+"</taskPriority>\n" +
                "      <taskStatus>New</taskStatus>\n" +
                "      <signalID>GF06_01_008795_20200119_MY250_R0;GF06_02_008795_20200119_MY251_R0.dat</signalID>\n" +
                "      <jobTaskID>"+pd.getString("jobTaskId")+"</jobTaskID>\n" +
                "      <satelliteName>"+pd.getString("satelliteName")+"</satelliteName>\n" +
                "      <sensorName>sensorName</sensorName>\n" +
                "      <orbitNumber>0</orbitNumber>\n" +
                "      <unzipStartByte>0</unzipStartByte>\n" +
                "      <unzipEndByte>0</unzipEndByte>\n" +
                "      <comment>"+pd.getString("comment")+"</comment>\n"+
                "    </taskBasicInfo>\n" +
                "  </content>\n" +
                "</DATask>";
        print(pro.getProperty("from_omo")+"/DATask_OMO_DQA_"+pd.getString("taskSerialNumber")+"_"+DateUtil.getSdfTimes()+".xml",xml);
        return "redirect:/WorkFlowOrder/goDatask";
    }
    @RequestMapping(value = "/goPRtask")
    public ModelAndView goPRtask()throws Exception{
        PageData pd = this.getPageData();
        String satellite = "2";
        if (pd.getString("jobtaskId")!=null){
            pd.put("jobtaskId",pd.getString("jobtaskId").split(";")[0]);
            satellite = pd.getString("sceneId").split(";")[0].split("_")[0].replaceAll("0","-");
        }
        ModelAndView mv = this.getModelAndView();
        List<Dictionaries>satelliteList = dictionariesService.findBianma("004");
        List<Dictionaries>statusList = dictionariesService.findBianma("005");
        mv.addObject("satellite",satellite);
        mv.addObject("pd",pd);
        mv.addObject("taskSerialNumber","PR"+ DateUtil.getSdfTimes());
        mv.addObject("satelliteList",satelliteList);
        mv.addObject("statusList",statusList);
        mv.setViewName("workFlowOrder/prTask_edit");
        mv.addObject("msg","addPRtask");
        return mv;
    }
    @RequestMapping(value = "/addPRtask")
    public String addPRtask()throws Exception{
        Properties pro = new Properties();
        pro.load(Thread.currentThread().getContextClassLoader().getResourceAsStream("systemconfig.properties"));
        PageData pd = this.getPageData();
        String[] sceneIdStr = pd.getString("sceneID").split(";");
        if (sceneIdStr.length>1){
            for (int i=0;i<sceneIdStr.length;i++){
                Thread.sleep(1000);
                String date = DateUtil.getSdfTimes();
                String taskSerialNumber = "PR"+date;
                String xml = "<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n" +
                        "<PRTask>\n" +
                        "  <fileHeader>\n" +
                        "    <title>数据产品生产任务</title>\n" +
                        "    <identificationCode>PRTask</identificationCode>\n" +
                        "    <source>OMO</source>\n" +
                        "    <destination>DQA</destination>\n" +
                        "    <createdTime>"+DateUtil.getTime()+"</createdTime>\n" +
                        "    <authorInfo>Auto</authorInfo>\n" +
                        "  </fileHeader>\n" +
                        "  <content>\n" +
                        "    <taskBasicInfo>\n" +
                        "      <taskSerialNumber>"+taskSerialNumber+"</taskSerialNumber>\n" +
                        "      <taskPriority>"+pd.getString("taskPriority")+"</taskPriority>\n" +
                        "      <taskStatus>New</taskStatus>\n" +
                        "      <jobTaskID>"+pd.getString("jobTaskId")+"</jobTaskID>\n" +
                        "      <productLevel>"+pd.getString("productLevel")+"</productLevel>\n" +
                        "      <sceneID>"+sceneIdStr[i]+"</sceneID>\n" +
                        "      <satelliteName>"+pd.getString("satelliteName")+"</satelliteName>\n" +
                        "      <do_CloudDetect>1</do_CloudDetect>\n" +
                        "      <earth_model>WGS84</earth_model>\n" +
                        "      <project_model>UTM</project_model>\n" +
                        "      <resample_kernal>"+pd.getString("resample_kernal")+"</resample_kernal>\n" +
                        "      <out_productdir>"+pd.getString("outPath")+"</out_productdir>\n" +
                        "      <comment>"+pd.getString("comment")+"</comment>\n" +
                        "      <oper>Auto</oper>\n" +
                        "    </taskBasicInfo>\n" +
                        "  </content>\n" +
                        "</PRTask>";
                print(pro.getProperty("from_omo")+"/PRTask_OMO_DQA_"+taskSerialNumber+"_"+date+".xml",xml);
            }
        }else {
            String date = DateUtil.getSdfTimes();
            String taskSerialNumber = pd.getString("taskSerialNumber");
            String xml = "<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n" +
                    "<PRTask>\n" +
                    "  <fileHeader>\n" +
                    "    <title>数据产品生产任务</title>\n" +
                    "    <identificationCode>PRTask</identificationCode>\n" +
                    "    <source>OMO</source>\n" +
                    "    <destination>DQA</destination>\n" +
                    "    <createdTime>"+DateUtil.getTime()+"</createdTime>\n" +
                    "    <authorInfo>Auto</authorInfo>\n" +
                    "  </fileHeader>\n" +
                    "  <content>\n" +
                    "    <taskBasicInfo>\n" +
                    "      <taskSerialNumber>"+taskSerialNumber+"</taskSerialNumber>\n" +
                    "      <taskPriority>"+pd.getString("taskPriority")+"</taskPriority>\n" +
                    "      <taskStatus>New</taskStatus>\n" +
                    "      <jobTaskID>"+pd.getString("jobTaskId")+"</jobTaskID>\n" +
                    "      <productLevel>"+pd.getString("productLevel")+"</productLevel>\n" +
                    "      <sceneID>"+pd.getString("sceneID")+"</sceneID>\n" +
                    "      <satelliteName>"+pd.getString("satelliteName")+"</satelliteName>\n" +
                    "      <do_CloudDetect>1</do_CloudDetect>\n" +
                    "      <earth_model>WGS84</earth_model>\n" +
                    "      <project_model>UTM</project_model>\n" +
                    "      <resample_kernal>"+pd.getString("resample_kernal")+"</resample_kernal>\n" +
                    "      <out_productdir>"+pd.getString("outPath")+"</out_productdir>\n" +
                    "      <comment>"+pd.getString("comment")+"</comment>\n" +
                    "      <oper>Auto</oper>\n" +
                    "    </taskBasicInfo>\n" +
                    "  </content>\n" +
                    "</PRTask>";
            print(pro.getProperty("from_omo")+"/PRTask_OMO_DQA_"+taskSerialNumber+"_"+date+".xml",xml);
        }
        return "redirect:/WorkFlowOrder/goPRtask";
    }

    @RequestMapping(value = "/goQAtask")
    public ModelAndView goQAtask()throws Exception{
        ModelAndView mv = this.getModelAndView();
        PageData pd = this.getPageData();
        String satellite = "2";
        if (pd.getString("jobtaskId")!=null){
            pd.put("jobtaskId",pd.getString("jobtaskId").split(";")[0]);
            satellite = pd.getString("sceneId").split(";")[0].split("_")[0].replaceAll("0","-");
        }
        List<Dictionaries>satelliteList = dictionariesService.findBianma("004");
        List<Dictionaries>statusList = dictionariesService.findBianma("005");
        List<Dictionaries>taskmodeList = dictionariesService.findBianma("006");
        mv.addObject("satellite",satellite);
        mv.addObject("pd",pd);
        mv.addObject("taskSerialNumber","QA"+ DateUtil.getSdfTimes());
        mv.addObject("satelliteList",satelliteList);
        mv.addObject("statusList",statusList);
        mv.addObject("taskmodeList",taskmodeList);
        mv.setViewName("workFlowOrder/qaTask_edit");
        mv.addObject("msg","addQAtask");
        return mv;
    }
    @RequestMapping(value="/addQAtask")
    public String addQAtask()throws Exception{
        PageData pd = this.getPageData();
        String taskSerialNumber = pd.getString("taskSerialNumber");
        Properties pro = new Properties();
        pro.load(Thread.currentThread().getContextClassLoader().getResourceAsStream("systemconfig.properties"));
        String xml="<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n" +
                "<QATask>\n" +
                "  <fileHeader>\n" +
                "    <title>QATask</title>\n" +
                "    <identificationCode>QATask</identificationCode>\n" +
                "    <source>OMO</source>\n" +
                "    <destination>DQA</destination>\n" +
                "    <createdTime>"+DateUtil.getTime()+"</createdTime>\n" +
                "    <authorInfo />\n" +
                "  </fileHeader>\n" +
                "  <content>\n" +
                "    <taskBasicInfo>\n" +
                "      <taskSerialNumber>"+taskSerialNumber+"</taskSerialNumber>\n" +
                "      <taskPriority>"+pd.getString("taskPriority")+"</taskPriority>\n" +
                "      <taskStatus>New</taskStatus>\n" +
                "      <taskMode>"+pd.getString("taskMode")+"</taskMode>\n" +
                "      <jobTaskID>"+pd.getString("jobTaskId")+"</jobTaskID>\n" +
                "      <sceneID>"+pd.getString("sceneId")+"</sceneID>\n" +
                "      <satelliteName>"+pd.getString("satelliteName")+"</satelliteName>\n" +
                "      <channelID>S1</channelID>\n" +
                "      <sensorName>sensorName</sensorName>\n" +
                "      <dataSelectType>"+pd.getString("dataselect")+"</dataSelectType>\n" +
                "      <comment>"+pd.getString("comment")+"</comment>\n" +
                "      <oper>Auto</oper>\n" +
                "    </taskBasicInfo>\n" +
                "  </content>\n" +
                "</QATask>\n";
        print(pro.getProperty("from_omo")+"/QATask_OMO_DQA_"+taskSerialNumber+"_"+DateUtil.getSdfTimes()+".xml",xml);
        return "redirect:/WorkFlowOrder/goQAtask";
    }
    public  boolean print(String filePath, String code) {
        try {
            File tofile = new File(filePath);
            FileWriter fw = new FileWriter(tofile, true);
            BufferedWriter bw = new BufferedWriter(fw);
            PrintWriter pw = new PrintWriter(bw);
            pw.println(code);
            pw.close();
            bw.close();
            fw.close();
            return true;
        } catch (IOException e) {
            return false;
        }
    }
}