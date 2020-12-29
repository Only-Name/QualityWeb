package com.fh.controller.processDefine;

import com.fh.controller.base.BaseController;
import com.fh.entity.pluginAndprocess.*;
import com.fh.service.pluginAndProcess.ProcessDefineManager;
import com.fh.service.pluginAndProcess.groupInfoManager;
import com.fh.service.system.fhlog.FHlogManager;
import com.fh.util.AppUtil;
import com.fh.util.DateUtil;
import com.fh.util.Jurisdiction;
import com.fh.util.PageData;
import net.sf.json.JSONArray;
import org.jdom2.Document;
import org.jdom2.Element;
import org.jdom2.input.SAXBuilder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import org.xml.sax.InputSource;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletResponse;
import java.io.StringReader;
import java.util.HashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;

/**
 * 1 *
 * 2 * @Author:w_kiven
 * 3 * @Date:2019/11/8 14:09
 * 4
 */
@Controller
@RequestMapping(value="/process_Define")
public class ProcessDefineController extends BaseController {
    String processUrl = "process_Define.do"; //菜单地址(权限用)

    @Resource(name = "processDefineService")
    private ProcessDefineManager processDefineService;
    @Resource(name="groupInfoService")
    private groupInfoManager groupInfoService;
    @Resource(name="fhlogService")
    private FHlogManager FHLOG;


    /**
     * 显示菜单列表
     * @return
     */
    @RequestMapping
    public ModelAndView list()throws Exception{
        ModelAndView mv = this.getModelAndView();
        try{
            List<groupInfo>groupInfoList = groupInfoService.listAll("");
            mv.addObject("groupInfoList", groupInfoList);
            mv.addObject("QX", Jurisdiction.getHC());	//按钮权限
            mv.setViewName("pluginAndProcess/processDefine_list");
        } catch(Exception e){
            logger.error(e.toString(), e);
        }
        return mv;
    }
    @RequestMapping(value = "processInfo")
    public ModelAndView processInfo()throws Exception{
        ModelAndView mv = this.getModelAndView();
        PageData pd = this.getPageData();
        try {
            List<ProcessDefine>defineList = processDefineService.listAlldefine(pd);
            mv.addObject("pd",pd);
            mv.addObject("QX",Jurisdiction.getHC());
            mv.addObject("defineList",defineList);
            mv.setViewName("pluginAndProcess/defineInfo_list");
        }catch (Exception e){
            logger.error(e.toString(),e);
        }
        return mv;
    }
    /**
     * 请求新增菜单页面
     * @return
     */
    @RequestMapping(value="/toAdd")
    public ModelAndView toAdd()throws Exception{
        ModelAndView mv = this.getModelAndView();
        PageData pd = this.getPageData();
        try{

            List<pluginInfo> infoList = groupInfoService.listpluginInfo();
            mv.addObject("infoList",infoList);
            mv.addObject("pd",pd);
            mv.addObject("MSG", "add");							//执行状态 add 为添加
            mv.setViewName("pluginAndProcess/defineInfo_edit");
        } catch(Exception e){
            logger.error(e.toString(), e);
        }
        return mv;
    }
    @RequestMapping(value="/add")
    @ResponseBody
    public ModelAndView add(ProcessDefine info)throws Exception{
        if(!Jurisdiction.buttonJurisdiction(processUrl, "add")){return null;} //校验权限
        logBefore(logger, Jurisdiction.getUsername()+"保存流程");
        Map<String,String> map= new HashMap<String,String>();
        ModelAndView mv = this.getModelAndView();
        PageData pd = new PageData();
        pd = this.getPageData();
        pd.put("createTime", DateUtil.getTime());
        try{
            String defineXML = checkPd(pd.getString("plugin"));
            pd.put("defineXml",defineXML);
            processDefineService.save(pd); //保存菜单
            FHLOG.save(Jurisdiction.getUsername(), "新增流程"+pd.getString("processName"));
        } catch(Exception e){
            logger.error(e.toString(), e);

        }
        map.put("result","success");
        map.put("groupId",pd.getString("groupId"));
        mv.addObject("pd",pd);
        mv.addObject("result","success");
        mv.setViewName("redirect:/process_Define/processInfo.do?groupId="+pd.getString("groupId")); //保存成功跳转到列表页面
        return mv;
        //return map;
    }

    //循环插入task
    public String checkPd(String pd)throws Exception{
        //以下属于拼接字符串
        String defineXm1 = "<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n" +
                "<definitions id=\"Definition\" targetNamespace=\"http://www.jboss.org/drools\" typeLanguage=\"http://www.java.com/javaTypes\" expressionLanguage=\"http://www.mvel.org/2.0\" xmlns=\"http://www.omg.org/spec/BPMN/20100524/MODEL\" xmlns:xsi=\"http://www.w3.org/2001/XMLSchema-instance\" xsi:schemaLocation=\"http://www.omg.org/spec/BPMN/20100524/MODEL BPMN20.xsd\" xmlns:g=\"http://www.jboss.org/drools/flow/gpd\" xmlns:bpmndi=\"http://www.omg.org/spec/BPMN/20100524/DI\" xmlns:dc=\"http://www.omg.org/spec/DD/20100524/DC\" xmlns:di=\"http://www.omg.org/spec/DD/20100524/DI\" xmlns:tns=\"http://www.jboss.org/drools\">\n" +
                "  <itemDefinition id=\"_OrderItem\" structureRef=\"String\" />\n" +
                "  <process processType=\"Private\" isExecutable=\"true\" id=\"未命名\" name=\"未命名\" tns:packageName=\"org.iecas.bpmn2\" tns:version=\"1.0\">\n" +
                "    <!-- process variables -->\n" +
                "    <property id=\"Order\" itemSubjectRef=\"_OrderItem\" />\n" +
                "    <startEvent id=\"_1\" name=\"StartProcess\" />";
        String defineXm3 = "\n</process>\n" +
                "  <bpmndi:BPMNDiagram>\n" +
                "    <bpmndi:BPMNPlane bpmnElement=\"qulity_estimate\">\n" +
                "      <bpmndi:BPMNShape bpmnElement=\"_1\">\n" +
                "        <dc:Bounds x=\"16\" y=\"16\" width=\"100\" height=\"100\" />\n" +
                "      </bpmndi:BPMNShape>\n" +
                "      <bpmndi:BPMNShape bpmnElement=\"_2\">\n" +
                "        <dc:Bounds x=\"16\" y=\"16\" width=\"100\" height=\"100\" />\n" +
                "      </bpmndi:BPMNShape>\n" +
                "      <bpmndi:BPMNShape bpmnElement=\"_3\">\n" +
                "        <dc:Bounds x=\"16\" y=\"16\" width=\"100\" height=\"100\" />\n" +
                "      </bpmndi:BPMNShape>\n" +
                "      <bpmndi:BPMNShape bpmnElement=\"_4\">\n" +
                "        <dc:Bounds x=\"16\" y=\"16\" width=\"100\" height=\"100\" />\n" +
                "      </bpmndi:BPMNShape>\n" +
                "      <bpmndi:BPMNEdge bpmnElement=\"_1-_2\">\n" +
                "        <di:waypoint x=\"40\" y=\"40\" />\n" +
                "        <di:waypoint x=\"40\" y=\"40\" />\n" +
                "      </bpmndi:BPMNEdge>\n" +
                "      <bpmndi:BPMNEdge bpmnElement=\"_2-_4\">\n" +
                "        <di:waypoint x=\"40\" y=\"40\" />\n" +
                "        <di:waypoint x=\"40\" y=\"40\" />\n" +
                "      </bpmndi:BPMNEdge>\n" +
                "      <bpmndi:BPMNEdge bpmnElement=\"_4-_3\">\n" +
                "        <di:waypoint x=\"40\" y=\"40\" />\n" +
                "        <di:waypoint x=\"40\" y=\"40\" />\n" +
                "      </bpmndi:BPMNEdge>\n" +
                "    </bpmndi:BPMNPlane>\n" +
                "  </bpmndi:BPMNDiagram>\n" +
                "</definitions>";
        String defineXm2 = "";
        String []define = pd.split(";");
        for (int i=2;i<define.length+2;i++){
            int source = i-1;
            defineXm2=defineXm2+" <task id=\"_"+i+"\" name=\""+define[i-2]+" 1.0.0\" tns:taskName=\"ArsTask\">\n" +
                    "      <ioSpecification>\n" +
                    "        <dataInput id=\"_"+i+"_OrderInput\" name=\"Order\" />\n" +
                    "        <dataInput id=\"_"+i+"_TaskNameInput\" name=\"TaskName\" />\n" +
                    "        <inputSet>\n" +
                    "          <dataInputRefs>_"+i+"_OrderInput</dataInputRefs>\n" +
                    "          <dataInputRefs>_"+i+"_TaskNameInput</dataInputRefs>\n" +
                    "        </inputSet>\n" +
                    "        <outputSet>\n" +
                    "        </outputSet>\n" +
                    "      </ioSpecification>\n" +
                    "      <dataInputAssociation>\n" +
                    "        <targetRef>_"+i+"_OrderInput</targetRef>\n" +
                    "        <assignment>\n" +
                    "          <from xsi:type=\"tFormalExpression\">#{Order}</from>\n" +
                    "          <to xsi:type=\"tFormalExpression\">_"+i+"_OrderInput</to>\n" +
                    "        </assignment>\n" +
                    "      </dataInputAssociation>\n" +
                    "      <dataInputAssociation>\n" +
                    "        <targetRef>_"+i+"_TaskNameInput</targetRef>\n" +
                    "        <assignment>\n" +
                    "          <from xsi:type=\"tFormalExpression\">"+define[i-2]+"</from>\n" +
                    "          <to xsi:type=\"tFormalExpression\">_"+i+"_TaskNameInput</to>\n" +
                    "        </assignment>\n" +
                    "      </dataInputAssociation>\n" +
                    "    </task>\n<sequenceFlow id=\"_"+source+"-_"+i+"\" sourceRef=\"_"+source+"\" targetRef=\"_"+i+"\" />";
                if (i==define.length+1){
                    int k = i+1;
                    defineXm2= defineXm2+"<sequenceFlow id=\"_"+i+"-_"+k+"\" sourceRef=\"_"+i+"\" targetRef=\"_"+k+"\" />\n<endEvent id=\"_"+k+"\" name=\"End\">\n" +
                            "      <terminateEventDefinition />\n" +
                            "    </endEvent>";
                }
        }
        String defineXML = defineXm1+defineXm2+defineXm3;
        return defineXML;
    }
    @RequestMapping(value="/toEdit")
    public ModelAndView toEdit(String processName)throws Exception{
        ModelAndView mv = this.getModelAndView();
        PageData pd = new PageData();
        try{
            pd = this.getPageData();
            if (pd.getString("process_Name")!=null){
                pd.put("processName",pd.getString("process_Name"));
            }
            ProcessDefine info = processDefineService.getprocessDefine(pd);	//读取此ID的菜单数据
            List<pluginInfo> infoList = groupInfoService.listpluginInfo();
            mv.addObject("infoList",infoList);
            /*--------解析XML-------*/
            SAXBuilder builder = new SAXBuilder();
            StringReader stReader = new StringReader(info.getDefineXml());
            InputSource source = new InputSource(stReader);
            Document superInfo = builder.build(source);
            Element ele = superInfo.getRootElement();
            Element elee = ele .getChild("process",null);
            List<Element>elementList = elee.getChildren();
            List<TaskXml> taskXmlList = new LinkedList<>();
            List<RefXml> refXmlList = new LinkedList<>();
            for (int k=0;k<elementList.size();k++){
                Element ttt = elementList.get(k);
                if (ttt.getName().contains("task")){
                    TaskXml taskXml = new TaskXml();
                    taskXml.setId(ttt.getAttributeValue("id"));
                    // （\\s+）是以空格分隔
                    taskXml.setName(ttt.getAttributeValue("name").split("\\s+")[0]);
                    taskXmlList.add(taskXml);
                }else if (ttt.getName().contains("sequenceFlow")){
                    RefXml refXml = new RefXml();
                    refXml.setSourceRef(ttt.getAttributeValue("sourceRef"));
                    refXml.setTargetRef(ttt.getAttributeValue("targetRef"));
                    refXmlList.add(refXml);
                }
            }
            /*----------------*/
            pd.put("groupId",info.getGroup_Id());
            mv.addObject("taskList",taskXmlList);
            mv.addObject("pd", pd);				//放入视图容器
            mv.addObject("info",info);
            mv.addObject("MSG", "Edit");
            mv.addObject("QX",Jurisdiction.getHC());	//按钮权限
            mv.setViewName("pluginAndProcess/defineInfo_edit");
        } catch(Exception e){
            logger.error(e.toString(), e);
        }
        return mv;
    }
    @RequestMapping(value="/Edit")
    @ResponseBody
    public ModelAndView Edit(ProcessDefine info)throws Exception{
        if(!Jurisdiction.buttonJurisdiction(processUrl, "edit")){return null;} //校验权限
        logBefore(logger, Jurisdiction.getUsername()+"修改流程");
        Map<String,String> map= new HashMap<String,String>();
        ModelAndView mv = this.getModelAndView();
        PageData pd = new PageData();
        pd = this.getPageData();
        pd.put("updateTime", DateUtil.getTime());
        try{
            String defineXML = checkPd(pd.getString("plugin"));
            pd.put("defineXml",defineXML);
            processDefineService.edit(pd); //保存菜单
            FHLOG.save(Jurisdiction.getUsername(), "修改流程"+pd.getString("processName"));
        } catch(Exception e){
            logger.error(e.toString(), e);
        }
        map.put("result","success");
        map.put("groupId",pd.getString("groupId"));
        mv.addObject("pd",pd);
        mv.addObject("result","success");
        mv.setViewName("redirect:/process_Define/processInfo.do?groupId="+pd.getString("groupId")); //保存成功跳转到列表页面
        return mv;
        //return map;
    }

    /**
     * 删除菜单
     */
    @RequestMapping(value="/delete")
    @ResponseBody
    public Object delete(String processName)throws Exception{
        if(!Jurisdiction.buttonJurisdiction(processUrl, "del")){return null;} //校验权限
        logBefore(logger, Jurisdiction.getUsername()+"删除菜单");
        Map<String,String> map = new HashMap<String,String>();
        PageData pd = new PageData();
        pd = this.getPageData();
        String errInfo = "";
        try{
            processDefineService.DeleteProcess(pd);
            errInfo = "success";
        } catch(Exception e){
            logger.error(e.toString(), e);
        }
        map.put("result", errInfo);
        return AppUtil.returnObject(new PageData(), map);
    }
    /**
     * 显示菜单列表ztree(菜单管理)
     * @param model
     * @return
     */
    @RequestMapping(value="/listAllprocessDefine")
    public ModelAndView listAllgroupInfo(Model model, String groupInfo_ID)throws Exception{
        ModelAndView mv = this.getModelAndView();
        try{
            JSONArray arr = JSONArray.fromObject(processDefineService.listAllprocess());
            String json = arr.toString();
            json = json.replaceAll("processName", "id").replaceAll("groupId", "pId").replaceAll("groupName", "name").replaceAll("processDefine","nodes").replaceAll("displayName","name").replaceAll("editUrl","url");
            model.addAttribute("zTreeNodes", json);
            mv.addObject("groupInfo_ID",groupInfo_ID);
            mv.setViewName("pluginAndProcess/processDefine_ztree");
        } catch(Exception e){
            logger.error(e.toString(), e);
        }
        return mv;
    }
    @RequestMapping(value="/checkName")
    @ResponseBody
    public String checkName(HttpServletResponse  response)throws Exception{
        String status = "";
        PageData pd = this.getPageData();
        ProcessDefine processDefine = processDefineService.getprocessDefine(pd);
        if (processDefine==null){
            response.getWriter().write("0");
        }else {
            response.getWriter().write("1");
        }
        return status;
    }
}
