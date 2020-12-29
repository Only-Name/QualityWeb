package com.fh.controller.pluginAndprocess;

import com.fh.controller.base.BaseController;
import com.fh.entity.pluginAndprocess.*;
import com.fh.service.pluginAndProcess.groupInfoManager;
import com.fh.service.system.fhlog.FHlogManager;
import com.fh.util.*;
import net.sf.json.JSONArray;
import org.jdom2.Document;
import org.jdom2.Element;
import org.jdom2.input.SAXBuilder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import org.xml.sax.InputSource;
import javax.annotation.Resource;
import java.io.StringReader;
import java.util.ArrayList;
import java.util.List;

/** 
 * 类名称：groupInfoController 菜单处理
 * 创建人：FH 
 * 创建时间：2015年10月27日
 * @version
 */
@Controller
@RequestMapping(value="/groupInfo")
public class groupInfoController extends BaseController {

	String groupInfoUrl = "groupInfo.do"; //菜单地址(权限用)
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
			mv.addObject("QX",Jurisdiction.getHC());	//按钮权限
			mv.setViewName("pluginAndProcess/groupInfo_list");
		} catch(Exception e){
			logger.error(e.toString(), e);
		}
		return mv;
	}
	@RequestMapping(value = "pluginInfo")
	public ModelAndView pluginInfo(String  groupId)throws Exception{
		ModelAndView mv = this.getModelAndView();
		try {
			PageData pd = new PageData();
			List<pluginInfo>infoList = groupInfoService.listPluginInfo(groupId);
			pd.put("groupId",groupId);
			mv.addObject("pd",pd);
			mv .addObject("infoList",infoList);
			mv.addObject("QX",Jurisdiction.getHC());
			mv.setViewName("pluginAndProcess/pluginInfo_list");
		}catch (Exception e){
			logger.error(e.toString(),e);
		}
		return mv;
	}
	@RequestMapping(value = "toAddPlugin")
	public ModelAndView toAddPlugin(String groupId)throws Exception{
		ModelAndView mv = this.getModelAndView();
		try{
			PageData pd = this.getPageData();
			pd.put("groupId",groupId);
			mv.addObject("pd",pd);
			mv.addObject("MSG", "addPlugin");							//执行状态 add 为添加
			mv.setViewName("pluginAndProcess/pluginInfo_edit");
		} catch(Exception e){
			logger.error(e.toString(), e);
		}
		return mv;
	}
	@RequestMapping(value = "addPlugin")
	public ModelAndView addPlugin()throws Exception{
		ModelAndView  mv = this.getModelAndView();
		//ModuleInfo moduleInfo = info.getModuleInfo();
		PageData pd = this.getPageData();
		if (pd.getString("enabled").equals("on")){
			pd.put("enabled","1");
		}else {
			pd.put("enabled","0");
		}
		int moduleId = groupInfoService.selectTopModule()+1;
		pd.put("moduleId",moduleId);
		pd.put("createTime",DateUtil.getTime());
		groupInfoService.savePlugin(pd);
		groupInfoService.saveModule(pd);
		mv.setViewName("redirect:/groupInfo/pluginInfo.do?groupId="+pd.getString("groupId")); //保存成功跳转到列表页面
		return mv;
	}
	@RequestMapping(value = "/toEditplugin")
	public ModelAndView toEditplugin(String moduleId)throws Exception{
		ModelAndView mv = this.getModelAndView();
		PageData pd = this.getPageData();
		try {
			pluginInfo info = groupInfoService.getpluginAndModule(moduleId);
			mv.addObject("info",info);
			pd.put("moduleId",info.getDefaultModuleId());
			pd.put("groupId",info.getGroup_Id());
			mv.addObject("pd",pd);
			mv.addObject("MSG", "editPlugin");							//执行状态 add 为添加
			mv.setViewName("pluginAndProcess/pluginInfo_edit");
		}catch (Exception e){
			logger.error(e.toString(), e);
		}
		return mv;
	}
	@RequestMapping(value = "/editPlugin")
	public ModelAndView editPlugin()throws Exception{
		if(!Jurisdiction.buttonJurisdiction(groupInfoUrl, "edit")){return null;} //校验权限
		logBefore(logger, Jurisdiction.getUsername()+"修改插件");
		ModelAndView mv = this.getModelAndView();
		PageData pd = this.getPageData();
		try{
			pd.put("updateTime",DateUtil.getTime());
			if (pd.getString("gpuReq")==null||"".equals(pd.getString("gpuReq"))){
				pd.put("gpuReq",0);
			}
			if (pd.getString("enabled").equals("on")){
				pd.put("enabled","1");
			}else {
				pd.put("enabled","0");
			}
			groupInfoService.editModuleInfo(pd);
			groupInfoService.editPluginInfo(pd);
			FHLOG.save(Jurisdiction.getUsername(), "修改菜单"+pd.getString("displayName"));
		} catch(Exception e){
			logger.error(e.toString(), e);
		}
		mv.setViewName("redirect:/groupInfo/pluginInfo.do?groupId="+pd.getString("groupId")); //保存成功跳转到列表页面
		return mv;
	}
	/**
	 * 请求新增菜单页面
	 * @return
	 */
	@RequestMapping(value="/toAdd")
	public ModelAndView toAdd()throws Exception{
		ModelAndView mv = this.getModelAndView();
		try{
			mv.addObject("MSG", "add");							//执行状态 add 为添加
			mv.setViewName("pluginAndProcess/groupInfo_edit");
		} catch(Exception e){
			logger.error(e.toString(), e);
		}
		return mv;
	}
	@RequestMapping(value="/add")
	public ModelAndView add(groupInfo groupInfo)throws Exception{
		if(!Jurisdiction.buttonJurisdiction(groupInfoUrl, "add")){return null;} //校验权限
		logBefore(logger, Jurisdiction.getUsername()+"保存菜单");
		ModelAndView mv = this.getModelAndView();
		PageData pd = new PageData();
		pd = this.getPageData();
		try{
			groupInfoService.save(groupInfo); //保存菜单
			FHLOG.save(Jurisdiction.getUsername(), "新增菜单"+groupInfo.getGroupName());
		} catch(Exception e){
			logger.error(e.toString(), e);
			mv.addObject("msg","failed");
		}
		mv.setViewName("redirect:/groupInfo.do"); //保存成功跳转到列表页面
		return mv;
	}
	@RequestMapping(value="/toEdit")
	public ModelAndView toEdit(String id)throws Exception{
		ModelAndView mv = this.getModelAndView();
		PageData pd = new PageData();
		try{
			pd = this.getPageData();
			pd.put("groupId",id);				//接收过来的要修改的ID
			groupInfo info = groupInfoService.getGroupInfoById(pd);	//读取此ID的菜单数据
			mv.addObject("pd", pd);				//放入视图容器
			mv.addObject("info",info);
			mv.addObject("MSG", "edit");
			mv.addObject("QX",Jurisdiction.getHC());	//按钮权限
			mv.setViewName("pluginAndProcess/groupInfo_edit");
		} catch(Exception e){
			logger.error(e.toString(), e);
		}
		return mv;
	}
	@RequestMapping(value="/edit")
	public ModelAndView edit(groupInfo groupInfo)throws Exception{
		if(!Jurisdiction.buttonJurisdiction(groupInfoUrl, "edit")){return null;} //校验权限
		logBefore(logger, Jurisdiction.getUsername()+"修改菜单");
		ModelAndView mv = this.getModelAndView();
		try{
			groupInfoService.edit(groupInfo);
			FHLOG.save(Jurisdiction.getUsername(), "修改菜单"+groupInfo.getGroupName());
		} catch(Exception e){
			logger.error(e.toString(), e);
		}
		mv.setViewName("redirect:/groupInfo.do"); //保存成功跳转到列表页面
		return mv;
	}
	/*@RequestMapping(value="/delete")
	@ResponseBody
	public Object delete(@RequestParam String groupInfo_ID)throws Exception{
		if(!Jurisdiction.buttonJurisdiction(groupInfoUrl, "del")){return null;} //校验权限
		logBefore(logger, Jurisdiction.getUsername()+"删除菜单");
		Map<String,String> map = new HashMap<String,String>();
		String errInfo = "";
		try{
			if(groupInfoService.listSubgroupInfoByParentId(groupInfo_ID).size() > 0){//判断是否有子菜单，是：不允许删除
				errInfo = "false";
			}else{
				groupInfoService.deletegroupInfoById(groupInfo_ID);
				FHLOG.save(Jurisdiction.getUsername(), "删除菜单ID"+groupInfo_ID);
				errInfo = "success";
			}
		} catch(Exception e){
			logger.error(e.toString(), e);
		}
		map.put("result", errInfo);
		return AppUtil.returnObject(new PageData(), map);
	}*/
	/**
	 * 显示菜单列表ztree(菜单管理)
	 * @param model
	 * @return
	 */
	@RequestMapping(value="/listAllgroupInfo")
	public ModelAndView listAllgroupInfo(Model model,String groupInfo_ID)throws Exception{
		ModelAndView mv = this.getModelAndView();
		try{
			List<groupInfo>infos= groupInfoService.listAllgroupInfo("");
			String templateXML = infos.get(4).getPluginInfo().get(0).getTemplateXml();
			//sax
			SAXBuilder builder = new SAXBuilder();
            StringReader stReader = new StringReader(templateXML);
            InputSource source = new InputSource(stReader);
			Document superInfo = builder.build(source);
			Element ele = superInfo.getRootElement();
			Element elee = ele .getChild("process",null);
			List<Element>elementList = elee.getChildren();

			List<TaskXml> taskXmlList = new ArrayList<>();
			List<RefXml> refXmlList = new ArrayList<>();

			for (int k=0;k<elementList.size();k++){
				Element ttt = elementList.get(k);
				if (ttt.getName().contains("task")){
					TaskXml taskXml = new TaskXml();
					taskXml.setId(ttt.getAttributeValue("id"));
					taskXml.setName(ttt.getAttributeValue("name"));
					taskXmlList.add(taskXml);
				}else if (ttt.getName().contains("sequenceFlow")){
					RefXml refXml = new RefXml();
					refXml.setSourceRef(ttt.getAttributeValue("sourceRef"));
					refXml.setTargetRef(ttt.getAttributeValue("targetRef"));
					refXmlList.add(refXml);
				}
			}
			JSONArray arr = JSONArray.fromObject(groupInfoService.listAllgroupInfo(""));
			String json = arr.toString();
			json = json.replaceAll("defaultModuleId", "id").replaceAll("groupId", "pId").replaceAll("groupName", "name").replaceAll("pluginInfo","nodes").replaceAll("displayName","name").replaceAll("editUrl","url");
			model.addAttribute("zTreeNodes", json);
			mv.addObject("groupInfo_ID",groupInfo_ID);
			mv.setViewName("pluginAndProcess/groupInfo_ztree");
		} catch(Exception e){
			logger.error(e.toString(), e);
		}
		return mv;
	}
}
