package com.fh.service.pluginAndProcess;

import com.fh.entity.pluginAndprocess.groupInfo;
import com.fh.entity.pluginAndprocess.pluginInfo;
import com.fh.util.PageData;

import java.util.List;


/**说明：groupInfoService 菜单处理接口
 * @author fh 313596790
 */
public interface groupInfoManager {


	
	/**
	 * 获取所有组和插件信息
	 * @param MENU_ID
	 * @return
	 * @throws Exception
	 */
	public List<groupInfo> listAllgroupInfo(String MENU_ID) throws Exception;
	/**
	 *获取所有组
	 */
	public List<groupInfo> listAll(String groupId)throws Exception;
	/*
	*保存用户组
	* */
	public void save(groupInfo groupInfo)throws Exception;
	/*
	*  获取组下面的插件
	* */
	public List<pluginInfo>listPluginInfo(String groupId)throws Exception;
	/*
	* 获取单个组信息
	* */
	groupInfo getGroupInfoById(PageData pd)throws Exception;
	/*
	* 修改组信息
	* */
	public void edit(groupInfo groupInfo)throws Exception;
	/*
	* 获取数据库最大的moduleID的值
	* */
	int selectTopModule()throws Exception;
	/*
	* 保存插件
	* */
	void savePlugin(PageData pd)throws Exception;
	/*
	* 保存module
	* */
	void saveModule(PageData pd)throws Exception;
	/*
	* 根据moduleID获取插件信息
	* */
	pluginInfo getpluginAndModule(String  moduleId)throws Exception;
	/*
	* 修改插件信息
	* */
	void editPluginInfo(PageData pd)throws Exception;
	/*
	* 修改module信息
	* */
	void editModuleInfo(PageData pd)throws Exception;
	/*
	* 获取所有插件
	* */
	List<pluginInfo>listpluginInfo()throws Exception;
}
