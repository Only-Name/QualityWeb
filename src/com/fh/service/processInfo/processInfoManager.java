package com.fh.service.processInfo;

import com.fh.entity.Page;
import com.fh.entity.processInfo.ProcessInfo;
import com.fh.util.PageData;

import java.util.List;

/**
 * 2 * @Author: kiven
 * 3 * @Date: 2020-04-08 10:41
 * 4
 */
public interface processInfoManager {
    List<PageData> getListByQuery(Page page) throws Exception ;

    ProcessInfo getProcess(PageData pd)throws Exception;

    void delProcess(PageData pd)throws Exception;
    /**
     * 获取一段时间内的任务数
     */
    public String getCount(PageData pd)throws Exception;


}
