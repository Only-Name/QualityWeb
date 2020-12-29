package com.fh.service.jobInfo.impl;

import com.fh.dao.DaoSupport;
import com.fh.entity.processInfo.JobInfo;
import com.fh.entity.processInfo.TaskInfo;
import com.fh.service.jobInfo.jobInfoManager;
import com.fh.util.PageData;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service("jobInfoService")
public class jobInfoService implements jobInfoManager {

	@Resource(name = "daoSupport")
	private DaoSupport dao;

	/**
	 * 根据订单ID获取任务信息
	 */
	@Override
	public JobInfo findJobInfo(PageData pd) throws Exception{
		return (JobInfo) dao.findForObject("jobInfoMapper.findJobInfo",pd);
	}
}
