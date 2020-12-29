package com.fh.service.TaskInfo.impl;

import com.fh.dao.DaoSupport;
import com.fh.entity.processInfo.TaskInfo;
import com.fh.service.TaskInfo.taskInfoManager;
import com.fh.util.PageData;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service("taskInfoService")
public class taskInfoService implements taskInfoManager {

	@Resource(name = "daoSupport")
	private DaoSupport dao;

	/**
	 * 根据订单ID获取任务信息
	 */
	@Override
	public List<TaskInfo> getListByOrderid(String orderId) throws Exception {
		return (List<TaskInfo>) dao.findForList("taskInfoMapper.getListByOrderid",orderId);
	}
	public void delTaskInfo(PageData pd)throws Exception{
		dao.delete("taskInfoMapper.delTaskInfo",pd);
	}
	/**
	 * 获取任务信息下面所有的任务
	 */
	public List<TaskInfo> selectListBytaskId(PageData pd)throws Exception{
		return (List<TaskInfo>) dao.findForList("taskInfoMapper.selectListBytaskId",pd);
	}
}
