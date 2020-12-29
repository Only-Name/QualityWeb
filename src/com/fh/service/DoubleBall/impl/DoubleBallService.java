package com.fh.service.DoubleBall.impl;

import com.fh.dao.DaoSupport;
import com.fh.entity.Page;
import com.fh.entity.doubleball.doubleBall;
import com.fh.service.DoubleBall.DoubleBallManager;
import com.fh.util.PageData;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;


/**类名称：DoubleBallService
 * @author FH Q313596790
 * 修改时间：2015年11月6日
 */
@Service("doubleballService")
public class DoubleBallService implements DoubleBallManager {

	@Resource(name = "daoSupport")
	private DaoSupport dao;

	@Override
	public List<doubleBall> listAll(Page page) throws Exception {
		return (List<doubleBall>) dao.findForList("DoubleBallMapper.datalistPage",page);
	}

}

