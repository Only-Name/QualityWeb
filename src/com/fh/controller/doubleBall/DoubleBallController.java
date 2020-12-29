package com.fh.controller.doubleBall;

import java.io.PrintWriter;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import com.fh.entity.doubleball.doubleBall;
import com.fh.service.DoubleBall.impl.DoubleBallService;
import com.fh.util.*;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.fh.controller.base.BaseController;
import com.fh.entity.Page;
import com.fh.entity.system.Role;
import com.fh.service.system.appuser.AppuserManager;
import com.fh.service.system.role.RoleManager;

/**
 * 类名称:看英文
 * 创建人：kiven
 * 修改时间：2019年06月20日
 * @version
 */
@Controller
@RequestMapping(value="/doubleball")
public class DoubleBallController extends BaseController {

	String menuUrl = "doubleball/listAll.do"; //菜单地址(权限用)
	@Resource(name="doubleballService")
	private DoubleBallService doubleBallService;

	/**显示所有信息
	 * @param page
	 * @return
	 */
	@RequestMapping(value="/listAll")
	public ModelAndView listUsers(Page page){
		ModelAndView mv = this.getModelAndView();
		PageData pd = new PageData();
		try{
			pd = this.getPageData();
			page.setPd(pd);
		    List<doubleBall> ballList = doubleBallService.listAll(page);
			mv.setViewName("doubleball/doubleball_list");
			mv.addObject("ballList", ballList);
			mv.addObject("pd", pd);
			mv.addObject("page",page);
			mv.addObject("QX",Jurisdiction.getHC());	//按钮权限
		} catch(Exception e){
			logger.error(e.toString(), e);
		}
		return mv;
	}

}
