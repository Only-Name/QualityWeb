package com.fh.service.TaskInfo;

import com.fh.entity.processInfo.TaskInfo;
import com.fh.util.PageData;

import java.util.List;

/**
 * 2 * @Author: kiven
 * 3 * @Date: 2020-04-08 10:41
 * 4
 */
public interface taskInfoManager {
    List<TaskInfo> getListByOrderid(String  orderId) throws Exception ;
    /**
     * 删除子任务
     */
    void delTaskInfo(PageData pd)throws Exception;
    /**
     * 获取任务信息下面所有的任务
     */
    List<TaskInfo> selectListBytaskId(PageData pd)throws Exception;
}
