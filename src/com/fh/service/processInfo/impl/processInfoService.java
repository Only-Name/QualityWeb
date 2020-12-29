package com.fh.service.processInfo.impl;

import com.fh.dao.DaoSupport;
import com.fh.entity.Page;
import com.fh.entity.processInfo.ProcessInfo;
import com.fh.service.processInfo.processInfoManager;
import com.fh.util.PageData;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service("processInfoService")
public class processInfoService implements processInfoManager {

	@Resource(name = "daoSupport")
	private DaoSupport dao;


	@Override
	public List<PageData> getListByQuery(Page page) throws Exception {
		return (List<PageData>) dao.findForList("processInfoMapper.processlistPage", page);
	}

	@Override
	public ProcessInfo getProcess(PageData pd) throws Exception {
		return (ProcessInfo) dao.findForObject("processInfoMapper.getProcess",pd);
	}

	@Override
	public void delProcess(PageData pd) throws Exception {
		dao.delete("processInfoMapper.delProcess",pd);
	}

	/**
	 * 获取一段时间内的任务数
	 */
	public String getCount(PageData pd)throws Exception{
		return (String) dao.findForObject("processInfoMapper.getCount",pd);
	}
}
