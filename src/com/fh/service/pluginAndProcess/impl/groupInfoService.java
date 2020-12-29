package com.fh.service.pluginAndProcess.impl;

import com.fh.dao.DaoSupport;
import com.fh.entity.pluginAndprocess.groupInfo;
import com.fh.entity.pluginAndprocess.pluginInfo;
import com.fh.entity.system.Menu;
import com.fh.service.pluginAndProcess.groupInfoManager;
import com.fh.util.PageData;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.ArrayList;
import java.util.List;

/** 
 * 类名称：groupInfoService 菜单处理
 * 创建人：FH qq  3  1 3 5 9 6 7 9 0[青苔]
 * 修改时间：2015年10月27日
 * @version v2
 */
@Service("groupInfoService")
public class groupInfoService implements groupInfoManager {

	@Resource(name = "daoSupport")
	private DaoSupport dao;



	@Override
	public List<groupInfo> listAllgroupInfo(String MENU_ID) throws Exception {
		List<groupInfo> groupInfoList = (List<groupInfo>) dao.findForList("groupInfoMapper.listAllgroupInfo","");
		for (groupInfo info:groupInfoList){
			info.setTarget("treeFrame");
			info.setEditUrl("groupInfo/toEdit.do?id="+info.getGroupId());
			for (pluginInfo info1:info.getPluginInfo()){
				info1.setEditUrl("groupInfo/toEditplugin.do?moduleId="+info1.getDefaultModuleId());
                info1.setTarget("treeFrame");
			}
		}
		return groupInfoList;
	}

	@Override
	public List<groupInfo> listAll(String groupId) throws Exception {
		List<groupInfo> groupInfoList = (List<groupInfo>) dao.findForList("groupInfoMapper.listAll","");
		if (groupInfoList!=null&&groupInfoList.size()>0){
			return groupInfoList;
		}else {
			return null;
		}
	}

	@Override
	public void save(groupInfo groupInfo) throws Exception {
		dao.save("groupInfoMapper.save",groupInfo);
	}
	public List<pluginInfo>listPluginInfo(String groupId)throws Exception{
		List<pluginInfo> pluginInfoList = (List<pluginInfo>) dao.findForList("groupInfoMapper.listAllplugin",groupId);
		return pluginInfoList;
	}

	@Override
	public groupInfo getGroupInfoById(PageData pd) throws Exception {
		return (groupInfo) dao.findForObject("groupInfoMapper.getGroupInfoById",pd);
	}
	public void edit(groupInfo groupInfo)throws Exception{
		dao.update("groupInfoMapper.editGroupInfo",groupInfo);
	}

	@Override
	public int selectTopModule() throws Exception {
		return (int) dao.findForObject("groupInfoMapper.selectTopModule","");
	}

	@Override
	public void savePlugin(PageData pd) throws Exception {
		dao.save("groupInfoMapper.savePlugin",pd);
	}

	@Override
	public void saveModule(PageData pd) throws Exception {
		dao.save("groupInfoMapper.saveModule",pd);
	}

    @Override
    public pluginInfo getpluginAndModule(String moduleId) throws Exception {
        return (pluginInfo) dao.findForObject("groupInfoMapper.getpluginAndModule",moduleId);
    }
    public void editPluginInfo(PageData pd)throws Exception{
	    dao.update("groupInfoMapper.editPluginInfo",pd);
    }
    public void editModuleInfo(PageData pd)throws Exception{
	    dao.update("groupInfoMapper.editModuleInfo",pd);
    }

	@Override
	public List<pluginInfo> listpluginInfo() throws Exception {
		return (List<pluginInfo>) dao.findForList("groupInfoMapper.listpluginInfo","");
	}

}
