package com.fh.service.workFlowOrder.impl;

import com.fh.dao.DaoSupport;
import com.fh.entity.Page;
import com.fh.entity.workFlowOrder.WorkflowOrder;
import com.fh.service.workFlowOrder.WorkFlowOrderManager;
import com.fh.util.PageData;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service("workFlowOrderService")
public class WorkFlowOrderService implements WorkFlowOrderManager {

	@Resource(name = "daoSupport")
	private DaoSupport dao;

	/**
	 * 按流程进行查询
	 */
	public List<PageData>getOrderList(Page page)throws Exception{
		return (List<PageData>) dao.findForList("WorkFlowOrderMapper.orderlistPage",page);
	}
	@Override
	public List<PageData>getReportList(Page page)throws Exception{
		return (List<PageData>) dao.findForList("WorkFlowOrderMapper.reportlistPage", page);
	}
	@Override
	public void save(WorkflowOrder order) throws Exception {
		dao.save("WorkFlowOrderMapper.save",order);
	}

	@Override
	public WorkflowOrder findById(String taskId) throws Exception {
		return (WorkflowOrder) dao.findForObject("WorkFlowOrderMapper.findById",taskId);
	}

	@Override
	public void updateOrder(WorkflowOrder order) throws Exception {
		dao.update("WorkFlowOrderMapper.updateOrder",order);
	}

	@Override
	public String selectLogUrl(String taskId) throws Exception {
		return (String) dao.findForObject("WorkFlowOrderMapper.selectLogUrl",taskId);
	}

	@Override
	public List<WorkflowOrder> selectList(String orderStatus) throws Exception {
		return (List<WorkflowOrder>) dao.findForList("WorkFlowOrderMapper.selectList",orderStatus);
	}

	@Override
	public WorkflowOrder findDataskByJobId(String jobTaskId) throws Exception {
		return (WorkflowOrder) dao.findForObject("WorkFlowOrderMapper.findDataskByJobId",jobTaskId);
	}

	public List<WorkflowOrder>findList(String jobtaskId)throws Exception{
		return (List<WorkflowOrder>) dao.findForList("WorkFlowOrderMapper.findList",jobtaskId);
	}
	/**
	 *查询每个月的任务总数
	 */
	public String getJobCount(PageData pd)throws Exception{
		return (String) dao.findForObject("WorkFlowOrderMapper.getJobCount",pd);
	}
	/**
	 * 删除任务信息
	 */
	public void delOrder(PageData pd)throws Exception{
		 dao.delete("WorkFlowOrderMapper.delOrder",pd);
	}
}
