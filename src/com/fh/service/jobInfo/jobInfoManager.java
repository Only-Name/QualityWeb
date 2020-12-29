package com.fh.service.jobInfo;

import com.fh.entity.processInfo.JobInfo;
import com.fh.util.PageData;

/**
 * 2 * @Author: kiven
 * 3 * @Date: 2020-04-08 10:41
 * 4
 */
public interface jobInfoManager {
    JobInfo findJobInfo(PageData pd) throws Exception ;
}
