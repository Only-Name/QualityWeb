package com.fh.controller.data;

import com.fh.controller.base.BaseController;
import com.fh.entity.Page;
import com.fh.entity.system.Dictionaries;
import com.fh.service.mCat.mCatManager;
import com.fh.service.system.dictionaries.DictionariesManager;
import com.fh.util.DateUtil;
import com.fh.util.Jurisdiction;
import com.fh.util.PageData;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.annotation.Resource;
import java.util.*;

/**
 * 2 * @Author: kiven
 * 3 * @Date: 2020-04-08 10:38
 * 4
 */
@Controller
@RequestMapping(value="/McatInfo")
public class McatInfoController extends BaseController{
    String menuUrl = "McatInfo/list.do"; //菜单地址(权限用)
    @Resource(name="mCatService")
    private mCatManager mCatService;
    @Resource(name="dictionariesService")
    private DictionariesManager dictionariesService;


    @RequestMapping(value="/list")
    public ModelAndView list(Page page)throws Exception{
        ModelAndView mv = this.getModelAndView();
        List<Dictionaries>satelliteList = dictionariesService.findBianma("004");
        mv.addObject("satelliteList",satelliteList);
        List<Dictionaries>stationList = dictionariesService.findBianma("007");
        mv.addObject("stationList",stationList);
        PageData pd = this.getPageData();
        String satellite = "";
        if(pd.getString("satelliteId")==null){
            satellite = "no";
        }else {
            satellite = pd.getString("satelliteId");
            pd.put("satelliteId",satellite.replaceAll("-","0"));
        }
        if (pd.getString("beginTime")==null){
            pd.put("beginTime", DateUtil.getBeforeDayDate(-7));
        }
        if (pd.getString("endTime")==null){
            pd.put("endTime",DateUtil.getTime());
        }
        page.setPd(pd);
        List<PageData> dataInfoList = mCatService.getListByQuery(page);
        if (dataInfoList.size()!=0){
            for (int i=0;i<dataInfoList.size();i++){
                String imgPath = "";
                if (dataInfoList.get(i).getString("satelliteid").equals("GF07")){
                     imgPath = dataInfoList.get(i).getString("filepath").replaceAll(".meta.xml","_Browser.jpg");
                }else {
                     imgPath = dataInfoList.get(i).getString("filepath").replaceAll(".meta.xml",".browse.jpg");
                }
                    dataInfoList.get(i).put("filepath",imgPath);
                    String ttt = dataInfoList.get(i).getString("L2productId");
                    if(null!=dataInfoList.get(i).getString("L2productId")){
                        dataInfoList.get(i).put("result","1/2级产品");
                    }else if (null!=dataInfoList.get(i).getString("L1productId")&&null==dataInfoList.get(i).getString("L2productId")){
                        dataInfoList.get(i).put("result","1级产品");
                    }else if (null==dataInfoList.get(i).getString("L1productId")){
                        dataInfoList.get(i).put("result","产品未做");
                    }
            }
        }
        mv.addObject("satellite",satellite);
        mv.setViewName("data/mcatInfo_list");
        mv.addObject("dataInfoList", dataInfoList);
        mv.addObject("pd", pd);
        mv.addObject("page",page);
        mv.addObject("QX", Jurisdiction.getHC());	//按钮权限
        return mv;
    }



}

