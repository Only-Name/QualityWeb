package com.fh.service.ShellInfo.impl;

import com.fh.dao.DaoSupport;
import com.fh.entity.Page;
import com.fh.entity.shellInfo.shellInfo;
import com.fh.service.ShellInfo.shellInfoManager;
import com.fh.util.PageData;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

/**
 * Description: FH-WEB3
 * <p>
 * Created by w_kiven on 2020-08-07 14:54
 */
@Service("shellInfoService")
public class shellInfoService implements shellInfoManager {

    @Resource(name = "daoSupport")
    private DaoSupport dao;
    @Override
    public List<PageData> getListByQuery(Page page) throws Exception {
        return (List<PageData>) dao.findForList("shellInfoMapper.shellInfolistPage",page);
    }

    @Override
    public void saveShell(PageData pd) throws Exception {
            dao.save("shellInfoMapper.saveShell",pd);
    }

    @Override
    public void updateShell(PageData pd) throws Exception {
        dao.save("shellInfoMapper.updateShell",pd);
    }

    @Override
    public void delShell(PageData pd) throws Exception {
        dao.save("shellInfoMapper.delShell",pd);
    }

    @Override
    public shellInfo selectShell(PageData pd) throws Exception {
        return (shellInfo) dao.findForObject("shellInfoMapper.selectShell",pd);
    }

}
