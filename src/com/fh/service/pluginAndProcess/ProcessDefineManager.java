package com.fh.service.pluginAndProcess;

import com.fh.entity.pluginAndprocess.ProcessDefine;
import com.fh.entity.pluginAndprocess.groupInfo;
import com.fh.entity.pluginAndprocess.pluginInfo;
import com.fh.util.PageData;

import java.util.List;


/**说明：processDefineService 菜单处理接口
 * @author fh 313596790
 */
public interface ProcessDefineManager {



	/**
	 * @return
	 * @throws Exception
	 */
	/*
	* 获取所有流程
	* */
	public List<groupInfo> listAllprocess() throws Exception;
	/*
	* 保存方法
	* */
	public void save(PageData pd)throws Exception;
	/*
	* 修改方法
	* */
	public void edit(PageData pd)throws Exception;
	/*
	* 根据流程名字获取流程信息
	* */
	ProcessDefine getprocessDefine(PageData pd)throws Exception;
	/*
	* 获取流程信息列表
	* */
	List<ProcessDefine>listAlldefine(PageData pd)throws Exception;
	/*
	* 删除流程
	* */
	void DeleteProcess(PageData pd)throws Exception;
}
