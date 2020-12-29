<%@ page language="java" contentType="text/html; charset=UTF-8"
		 pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE html>
<html lang="en">
<head>
	<base href="<%=basePath%>">
	<!-- jsp文件头和头部 -->
	<%@ include file="../system/index/top.jsp"%>
	<!-- 日期框 -->
	<style>
		*{margin: 0; padding: 0;}
		.container1{}
		h1{padding-bottom: 10px; color: darkmagenta; font-weight: bolder;}
		img{cursor: pointer;}
		#pic{position: absolute; display: none;}
		#pic1{ width: 380px; height: 460px; border-radius: 5px; -webkit-box-shadow: 5px 5px 5px 5px hsla(0,0%,5%,1.00); box-shadow: 5px 5px 5px 0px hsla(0,0%,5%,0.3); }
	</style>
</head>
<body class="no-skin">
<!-- /section:basics/navbar.layout -->
<div class="main-container1" id="main-container1">
	<!-- /section:basics/sidebar -->
	<div class="main-content">
		<div class="main-content-inner">
			<div class="page-content">
				<div class="row">
					<div class="col-xs-12">
						<form action="SignalData/list.do" method="post" name="Form" id="Form">
							<table style="margin-top:5px;">
								<tr>
									<td>
										<div class="nav-search">
											<span class="input-icon">
												<select id="satelliteId" name="satelliteId">
														<option value="">--请选择卫星--</option>
														<c:forEach items="${satelliteList}" var="zt">
															<option  <c:if test="${zt.NAME ==satellite}">selected</c:if> value="${zt.NAME}">${zt.NAME}</option>
														</c:forEach>
													</select>
											</span>
										</div>
									</td>
									<td>
										<div class="nav-search">
										<span class="input-icon">
											<input class="nav-search-input" autocomplete="on" id="jobtaskId" type="text" name="jobtaskId" value="${pd.jobtaskId }" placeholder="JobTaskId" />
										</span>
										</div>
									</td>
									<td style="padding-left:2px;">
										<div class="nav-search">
										<input type="text" readonly="readonly" style="width:160px;" class="Wdate" onclick="WdatePicker({maxDate:new Date(),dateFmt:'yyyy-MM-dd'})" id="beginTime" name="beginTime" value="${pd.beginTime}" placeholder="这里选择开始时间"/>
										</div>
									</td>
									<td style="padding-left:2px;">
										<div class="nav-search">
										<input type="text" readonly="readonly" style="width:160px;" class="Wdate" onclick="WdatePicker({maxDate:new Date(),dateFmt:'yyyy-MM-dd'})" id="endTime" name="endTime" value="${pd.endTime}"placeholder="这里选择结束时间"/>
										</div>
									</td>
									<td>
										<div class="nav-search">
											<span class="input-icon">
												<select id="station" name="station">
														<option value="">--请选择卫星站--</option>
														<c:forEach items="${stationList}" var="zt">
															<option  <c:if test="${zt.NAME_EN ==pd.station}">selected</c:if> value="${zt.NAME_EN}">${zt.NAME}</option>
														</c:forEach>
													</select>
											</span>
										</div>
									</td>
									<c:if test="${QX.cha == 1 }">
										<td style="vertical-align:top;padding-left:2px"><a class="btn btn-light btn-xs" onclick="tosearch();"  title="检索"><i id="nav-search-icon" class="ace-icon fa fa-search bigger-110 nav-search-icon blue"></i></a></td>
									</c:if>
								</tr>
							</table>
							<div id="mythingy">
								<table id="simple-table" class="table table-striped table-bordered table-hover" style="margin-top:5px;">
									<thead>
									<tr>
										<th class="center" style="width:35px;background-color: #92de90;">
											<label class="pos-rel"><input type="checkbox" class="ace" id="zcheckbox" /><span class="lbl"></span></label>
										</th>
										<th class="center"style="background-color: #92de90;" width="*">signalID</th>
										<th class="center"style="background-color: #92de90;" width="*">JobTaskID</th>
										<th class="center"style="background-color: #92de90;" width="*">卫星名</th>
										<th class="center"style="background-color: #92de90;" width="*">接收站</th>
										<th class="center"style="background-color: #92de90;" width="*">接收开始时间</th>
										<th class="center"style="background-color: #92de90;" width="*">接收结束时间</th>
										<th class="center"style="background-color: #92de90;" width="*">归档任务</th>
                                    <th class="center"style="background-color: #92de90;" width="*">QATask任务</th>
									</tr>
									</thead>
									<tbody>
									<!-- 开始循环 -->
									<c:choose>
										<c:when test="${not empty dataInfoList}">
											<c:if test="${QX.cha == 1 }">
												<c:forEach items="${dataInfoList}" var="dataInfo" varStatus="vs">
													<tr>
														<td class='center' style="width: 5%;background-color: #92de90;">
															<label><input type='checkbox' name='ids' value="${dataInfo.satelliteid }" id="${dataInfo.jobtaskid}" alt="${dataInfo.jobtaskid}" class="ace"/><span class="lbl"></span></label>
														</td>
                                                        <td style="background-color: #92de90;width: 20%;" class='center'>${dataInfo.signalid}</td>
														<td style="background-color: #92de90;width: 10%;" class='center'>${dataInfo.jobtaskid}</td>
														<td style="background-color: #92de90;width: 5%;" class='center'>${dataInfo.satelliteid}</td>
														<td style="background-color: #92de90;width: 5%;" class='center'>${dataInfo.stationid}</td>
														<td style="background-color: #92de90;width: 10%;" class='center'>${dataInfo.receivestarttime}</td>
														<td style="background-color: #92de90;width: 10%;" class='center'>${dataInfo.receiveendtime}</td>
														<td style="background-color: #92de90;width: 10%;" class='center'>${dataInfo.isDataArchive}</td>
														<td style="background-color: #92de90;width: 10%;" class='center'>${dataInfo.isQatask}</td>
													</tr>
												</c:forEach>
											</c:if>
											<c:if test="${QX.cha == 0 }">
												<tr>
													<td colspan="100" class="center">您无权查看</td>
												</tr>
											</c:if>
										</c:when>
										<c:otherwise>
											<tr class="main_info">
												<td colspan="100" class="center" >没有相关数据</td>
											</tr>
										</c:otherwise>
									</c:choose>
									</tbody>
								</table>
							</div>
							<div class="page-header position-relative">
								<table style="width:100%;">
									<tr>
										<td style="vertical-align:top;">
											<a class="btn btn-mini btn-warning" onclick="makeAll('确定生成归档任务吗?');">归档任务</a>
											<a class="btn btn-mini btn-danger" onclick="makeAll('确定生成QA任务吗?');">QA任务</a>
										</td>
										<td style="vertical-align:top;"><div class="pagination" style="float: right;padding-top: 0px;margin-top: 0px;">${page.pageStr}</div></td>
									</tr>
								</table>
							</div>
						</form>
					</div>
					<!-- /.col -->
				</div>
				<!-- /.row -->
			</div>
			<!-- /.page-content -->
		</div>
	</div>
	<!-- /.main-content -->
	<!-- 返回顶部 -->
	<a href="#" id="btn-scroll-up" class="btn-scroll-up btn btn-sm btn-inverse">
		<i class="ace-icon fa fa-angle-double-up icon-only bigger-110"></i>
	</a>
</div>
<!-- /.main-container1 -->

<!-- basic scripts -->
<!-- 页面底部js¨ -->
<%@ include file="../system/index/foot.jsp"%>

<!-- 删除时确认窗口 -->
<script src="static/ace/js/bootbox.js"></script>
<!-- ace scripts -->
<script src="static/ace/js/ace/ace.js"></script>
<!--提示框-->
<script src="static/js/jquery1.9.min.js"></script>
<script type="text/javascript" src="static/js/jquery.tips.js"></script>


<!-- 日期插件-->
<script src="static/js/My97DatePicker/WdatePicker.js"></script>

<script>
    $(top.hangge());//关闭加载状态

    //检索
    function tosearch(){
        top.jzts();
        $("#Form").submit();
    }
    $(function(){
        $(".container1 a").hover(function(){
            $(this).append("<p id='pic'><img src='"+this.href+"' id='pic1'></p>");
            $(".container1 a").mousemove(function(e){
                $("#pic").css({
                    "top":(e.pageY+10)+"px",
                    "left":(e.pageX+20)+"px"
                }).fadeIn("fast");
                // $("#pic").fadeIn("fast");
            });
        },function(){
            $("#pic").remove();
        });
    });
    //批量操作
    function makeAll(msg){
        bootbox.confirm(msg, function(result) {
            if(result) {
                var str = '';
                var task = '';
                for(var i=0;i < document.getElementsByName('ids').length;i++)
                {
                    if(document.getElementsByName('ids')[i].checked){
                        if(str=='') str += document.getElementsByName('ids')[i].value;
                        else str += ';' + document.getElementsByName('ids')[i].value;

                        if(task=='') task += document.getElementsByName('ids')[i].alt;
                        else task += ';' + document.getElementsByName('ids')[i].alt;
                    }
                }
                if(str==''){
                    bootbox.dialog({
                        message: "<span class='bigger-110'>您没有选择任何内容!</span>",
                        buttons:
                            { "button":{ "label":"确定", "className":"btn-sm btn-success"}}
                    });
                    $("#zcheckbox").tips({
                        side:3,
                        msg:'点这里全选',
                        bg:'#AE81FF',
                        time:8
                    });
                    return;
                }else{
                     if(msg == '确定生成归档任务吗?'){
                         siMenu1('z136','lm135','数据归档',"WorkFlowOrder/goDatask.do?sceneId="+str+"&jobtaskId="+task);
                    }else if(msg == '确定生成QA任务吗?'){
                         siMenu1('z138','lm135','数据质量监测任务',"WorkFlowOrder/goQAtask.do?sceneId="+str+"&jobtaskId="+task);
                    }
                }
            }
        });
    }
    var fmid = "fhindex";	//菜单点中状态
    var mid = "fhindex";	//菜单点中状态
    function siMenu1(id,fid,MENU_NAME,MENU_URL){
        if(id != mid){
            $("#"+mid).removeClass();
            mid = id;
        }
        if(fid != fmid){
            $("#"+fmid).removeClass();
            fmid = fid;
        }
        $("#"+fid).attr("class","active open");
        $("#"+id).attr("class","active");
        top.mainFrame.tabAddHandler(id,MENU_NAME,MENU_URL);
        if(MENU_URL != "druid/index.html"){
            top.jzts();
        }
    }
    $(function() {
        //复选框全选控制
        var active_class = 'active';
        $('#simple-table > thead > tr > th input[type=checkbox]').eq(0).on('click', function(){
            var th_checked = this.checked;//checkbox inside "TH" table header
            $(this).closest('table').find('tbody > tr').each(function(){
                var row = this;
                if(th_checked) $(row).addClass(active_class).find('input[type=checkbox]').eq(0).prop('checked', true);
                else $(row).removeClass(active_class).find('input[type=checkbox]').eq(0).prop('checked', false);
            });
        });
    });
</script>
</body>
</html>