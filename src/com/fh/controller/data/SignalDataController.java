package com.fh.controller.data;

import com.fh.controller.base.BaseController;
import com.fh.entity.Page;
import com.fh.entity.system.Dictionaries;
import com.fh.entity.workFlowOrder.WorkflowOrder;
import com.fh.service.mCat.mCatManager;
import com.fh.service.signalData.signalDataManager;
import com.fh.service.system.dictionaries.DictionariesManager;
import com.fh.service.workFlowOrder.WorkFlowOrderManager;
import com.fh.util.Jurisdiction;
import com.fh.util.PageData;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.annotation.Resource;
import java.util.ArrayList;
import java.util.List;

/**
 * 2 * @Author: kiven
 * 3 * @Date: 2020-04-08 10:38
 * 4
 */
@Controller
@RequestMapping(value="/SignalData")
public class SignalDataController extends BaseController{
    String menuUrl = "SignalData/list.do"; //菜单地址(权限用)
    @Resource(name="signalDataService")
    private signalDataManager signalDataService;
    @Resource(name="dictionariesService")
    private DictionariesManager dictionariesService;
    @Resource(name="workFlowOrderService")
    private WorkFlowOrderManager workFlowOrderService;




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
        page.setPd(pd);
        List<PageData> dataInfoList = signalDataService.getListByQuery(page);
        List<WorkflowOrder> orderList = new ArrayList<>();
        if (dataInfoList.size()!=0){
            for (int i=0;i<dataInfoList.size();i++){
                orderList = workFlowOrderService.findList(dataInfoList.get(i).getString("jobtaskid"));
                if (orderList==null){
                    dataInfoList.get(i).put("isDataArchive","");
                    dataInfoList.get(i).put("isQatask","");
                }else {
                    for (int j=0;j<orderList.size();j++){
                        if (orderList.get(j).getTaskMode().equals("DATask")){
                            dataInfoList.get(i).put("isDataArchive","DATask");
                        }else {
                            dataInfoList.get(i).put("isQatask",orderList.get(j).getTaskMode());
                        }
                    }
                }
            }
        }
        mv.addObject("satellite",satellite);
        mv.setViewName("data/signalData_list");
        mv.addObject("dataInfoList", dataInfoList);
        mv.addObject("pd", pd);
        mv.addObject("page",page);
        mv.addObject("QX", Jurisdiction.getHC());	//按钮权限
        return mv;
    }



}

