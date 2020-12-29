package com.fh.service.ShellInfo;

import com.fh.entity.Page;
import com.fh.entity.shellInfo.shellInfo;
import com.fh.util.PageData;

import java.util.List;

/**
 * Description: FH-WEB3
 * <p>
 * Created by w_kiven on 2020-08-07 14:54
 */
public interface shellInfoManager {

    /**
     * todo 查询原始数据信息
     */
    List<PageData> getListByQuery(Page page)throws Exception;

    void saveShell(PageData pd)throws Exception;

    void updateShell(PageData pd)throws Exception;

    void delShell(PageData pd)throws Exception;

    shellInfo selectShell(PageData pd)throws Exception;



}
