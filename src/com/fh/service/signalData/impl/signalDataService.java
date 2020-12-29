package com.fh.service.signalData.impl;

import com.fh.dao.DaoSupport;
import com.fh.entity.Page;
import com.fh.service.signalData.signalDataManager;
import com.fh.util.PageData;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

/**
 * Description: FH-WEB3
 * <p>
 * Created by w_kiven on 2020-08-07 14:54
 */
@Service("signalDataService")
public class signalDataService implements signalDataManager {

    @Resource(name = "daoSupport")
    private DaoSupport dao;
    @Override
    public List<PageData> getListByQuery(Page page) throws Exception {
        return (List<PageData>) dao.findForList("signalDataMapper.signalDatalistPage",page);
    }
}
