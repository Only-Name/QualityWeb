package com.fh.service.mCat;

import com.fh.entity.Page;
import com.fh.util.PageData;

import java.util.List;

/**
 * Description: FH-WEB3
 * <p>
 * Created by w_kiven on 2020-07-20 14:46
 */
public interface mCatManager {

    /**
     * todo 查询编目数据信息
     */
    List<PageData> getListByQuery(Page page)throws Exception;
}
