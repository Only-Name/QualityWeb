package com.fh.service.signalData;

import com.fh.entity.Page;
import com.fh.util.PageData;

import java.util.List;

/**
 * Description: FH-WEB3
 * <p>
 * Created by w_kiven on 2020-08-07 14:54
 */
public interface signalDataManager {

    /**
     * todo 查询原始数据信息
     */
    List<PageData> getListByQuery(Page page)throws Exception;
}
