package com.fh.service.pluginAndProcess.impl;

import com.fh.dao.DaoSupport;
import com.fh.entity.pluginAndprocess.ProcessDefine;
import com.fh.entity.pluginAndprocess.groupInfo;
import com.fh.entity.pluginAndprocess.pluginInfo;
import com.fh.service.pluginAndProcess.ProcessDefineManager;
import com.fh.service.pluginAndProcess.groupInfoManager;
import com.fh.util.PageData;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

/** 
 * 类名称：groupInfoService 菜单处理
 * 创建人：FH qq  3  1 3 5 9 6 7 9 0[青苔]
 * 修改时间：2015年10月27日
 * @version v2
 */
@Service("processDefineService")
public class ProcessDefineService implements ProcessDefineManager {

	@Resource(name = "daoSupport")
	private DaoSupport dao;



	@Override
	public List<groupInfo> listAllprocess() throws Exception {
		List<groupInfo> groupInfoList = (List<groupInfo>) dao.findForList("processDefineMapper.listAll","");
		for (groupInfo info:groupInfoList){
			for (ProcessDefine info1:info.getProcessDefine()){
				info1.setEditUrl("process_Define/toEdit.do?process_Name="+info1.getProcessName());
                info1.setTarget("treeFrame");
			}
		}
		return groupInfoList;
	}



	@Override
	public void save(PageData pd) throws Exception {
		dao.save("processDefineMapper.save",pd);
	}

	public void edit(PageData pd)throws Exception{
		dao.update("processDefineMapper.edit",pd);
	}

	@Override
	public ProcessDefine getprocessDefine(PageData pd) throws Exception {
		return (ProcessDefine) dao.findForObject("processDefineMapper.getprocessDefineById",pd);
	}

	@Override
	public List<ProcessDefine> listAlldefine(PageData pd) throws Exception {
		return (List<ProcessDefine>) dao.findForList("processDefineMapper.listAlldefine",pd);
	}
	public void DeleteProcess(PageData pd)throws Exception{
		dao.delete("processDefineMapper.delete",pd);
	}

}
