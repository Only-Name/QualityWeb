package com.fh.service.DoubleBall;

import com.fh.entity.Page;
import com.fh.entity.doubleball.doubleBall;

import java.util.List;


/** 会员接口类
 * @author fh313596790qq(青苔)
 * 修改时间：2015.11.2
 */
public interface DoubleBallManager {


	public List<doubleBall> listAll(Page page)throws Exception;

	
}

