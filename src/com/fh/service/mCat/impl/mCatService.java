package com.fh.service.mCat.impl;

import com.fh.dao.DaoSupport;
import com.fh.entity.Page;
import com.fh.service.mCat.mCatManager;
import com.fh.util.PageData;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

/**
 * Description: FH-WEB3
 * <p>
 * Created by w_kiven on 2020-07-20 14:54
 */
@Service("mCatService")
public class mCatService implements mCatManager {

    @Resource(name = "daoSupport")
    private DaoSupport dao;
    @Override
    public List<PageData> getListByQuery(Page page) throws Exception {
        return (List<PageData>) dao.findForList("McatMapper.mcatlistPage",page);
    }
}
