package com.fh.service.workFlowOrder;


import com.fh.entity.Page;
import com.fh.entity.workFlowOrder.WorkflowOrder;
import com.fh.util.PageData;

import java.util.List;

/**
 * 2 * @Author: kiven
 * 3 * @Date: 2019/1/12 14:26
 * 4
 */
public interface WorkFlowOrderManager {

   /**
    * 按流程进行查询
    */
   List<PageData>getOrderList(Page page)throws Exception;
   /*
   * 质量报告查询
   * */
   List<PageData>getReportList(Page page)throws Exception;
   /**
    * 保存任务订单
    */
   public void save(WorkflowOrder order)throws Exception;
   /**
    * 根据ID获取任务
    */
   public WorkflowOrder findById(String taskId)throws Exception;
   /**
    * 更新
    */
   public void updateOrder(WorkflowOrder order)throws Exception;
   /**
    * 根据ID 获取日志路径
    */
   public String selectLogUrl(String taskId)throws Exception;

   /*查询等待的订单，改为Running*/
   public List<WorkflowOrder> selectList(String orderStatus)throws Exception;


   public WorkflowOrder findDataskByJobId(String jobTaskId)throws Exception;

   public List<WorkflowOrder>findList(String jobtaskId)throws Exception;
   //todo 按月统计总数
   public String getJobCount(PageData pd)throws Exception;

   public void delOrder(PageData pd)throws Exception;
}
