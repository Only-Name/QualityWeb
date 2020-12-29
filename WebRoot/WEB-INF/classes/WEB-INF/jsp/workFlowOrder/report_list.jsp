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
	<link rel="stylesheet" href="static/ace/css/datepicker.css" />
</head>
<body class="no-skin">

<!-- /section:basics/navbar.layout -->
<div class="main-container" id="main-container">
	<!-- /section:basics/sidebar -->
	<div class="main-content">
		<div class="main-content-inner">
			<div class="page-content">
				<div class="row">
					<div class="col-xs-12">
						<form action="WorkFlowOrder/getReportList.do" method="post" name="Form" id="Form">
							<table style="margin-top:5px;">
								<tr>
									<td>
										<div class="nav-search">
									<span class="input-icon">
										<input style="width: 255px" class="nav-search-input" autocomplete="off" id="jobtaskId" type="text" name="jobtaskId" value="${pd.jobtaskId }" placeholder="JobTaskID" />
									</span>
										</div>
									</td>
									<td>
										<div class="nav-search">
									<span class="input-icon">
										<input class="nav-search-input" autocomplete="off" id="taskSerialNumber" type="text" name="taskSerialNumber" value="${pd.taskSerialNumber }" placeholder="任务单号" />
									</span>
										</div>
									</td>
									<td style="padding-left:2px;"><input class="span10 date-picker" name="beginTime" id="beginTime"  value="${pd.beginTime}" type="text" data-date-format="yyyy-mm-dd" readonly="readonly" style="width:88px;" placeholder="开始日期" title="开始日期"/></td>

									<td style="padding-left:2px;"><input class="span10 date-picker" name="endTime" name="endTime"  value="${pd.endTime}" type="text" data-date-format="yyyy-mm-dd" readonly="readonly" style="width:88px;" placeholder="结束日期" title="结束日期"/></td>
									<c:if test="${QX.cha == 1 }">
										<td style="vertical-align:top;padding-left:2px"><a class="btn btn-light btn-xs" onclick="tosearch();"  title="检索"><i id="nav-search-icon" class="ace-icon fa fa-search bigger-110 nav-search-icon blue"></i></a></td>
									</c:if>
								</tr>
							</table>
							<table id="simple-table" class="table table-striped table-bordered table-hover" style="margin-top:5px;">
								<thead>
								<tr>
									<th class="center" width="*">任务单号</th>
									<th class="center" width="*">JobTaskId</th>
									<th class="center" width="*">卫星名</th>
									<th class="center" width="*">任务类型</th>
									<th class="center" width="*">开始时间</th>
									<th class="center" width="*">结束时间</th>
									<th class="center" width="*">报告详情</th>
								</tr>
								</thead>
								<tbody>
								<!-- 开始循环 -->
								<c:choose>
									<c:when test="${not empty reportList}">
										<c:if test="${QX.cha == 1 }">
											<c:forEach items="${reportList}" var="process" varStatus="vs">
												<tr>
													<td class='center'>${process.taskSerialNumber}</td>
													<td class='center'>${process.jobTaskID}</td>
													<td class='center'>${process.satelliteName}</td>
													<td class='center'>${process.taskMode}</td>
													<td class='center'>${process.startTime}</td>
													<td class='center'>${process.endTime}</td>
													<td class="center"><a href='http://172.19.4.120:8080/WebReport/ReportServer?reportlet=cn.ac.radi.Report.QAReportWeb&taskmode="${process.taskMode}"&tasksn="${process.taskSerialNumber}"&op=view' target='_blank'>查看质量报告</a></td>
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
							<div class="page-header position-relative">
								<table style="width:100%;">
									<tr>
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
<!-- /.main-container -->

<!-- basic scripts -->
<!-- 页面底部js¨ -->
<%@ include file="../system/index/foot.jsp"%>
<!-- 删除时确认窗口 -->
<script src="static/ace/js/bootbox.js"></script>
<!-- ace scripts -->
<script src="static/ace/js/ace/ace.js"></script>
<!-- 下拉框 -->
<script src="static/ace/js/chosen.jquery.js"></script>
<!-- 日期框 -->
<script src="static/ace/js/date-time/bootstrap-datepicker.js"></script>
<!--提示框-->
<script type="text/javascript" src="static/js/jquery.tips.js"></script>
<script type="text/javascript">
    $(top.hangge());//关闭加载状态
    $(function() {
        //日期框
        $('.date-picker').datepicker({
            autoclose: true,
            todayHighlight: true
        });
    });
    //检索
    function tosearch(){
        top.jzts();
        $("#Form").submit();
    }
    //去此ID下子列表
    function goSonmenu(CRAWLERMANAGE_ID){
        top.jzts();
        window.location.href="<%=basePath%>crawlermanage/list.do?CRAWLERMANAGE_ID="+CRAWLERMANAGE_ID;
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
        $(".splitContent").each(function() {
            var $this = $(this);
            var value = $.trim($this.text());
            var content = "";
            $.each(value.split(",fh,"), function(index, val) {
                content += val + "<br/>";
            });
            $this.html(content);
        });
    });


    //删除
    function del(orderId,platform){
        bootbox.confirm("确定要删除吗?", function(result) {
            if(result) {
                top.jzts();
                var url = "<%=basePath%>ProcessInfo/delete.do?orderId="+orderId+"&platform="+platform;
                $.get(url,function(data){
                    if("success" == data.result){
                        tosearch();
                    }else if("false" == data.result){
                        top.hangge();
                        bootbox.dialog({
                            message: "<span class='bigger-110'>删除失败,请先删除子项!</span>",
                            buttons:
                                {
                                    "button" :
                                        {
                                            "label" : "确定",
                                            "className" : "btn-sm btn-success"
                                        }
                                }
                        });
                    }
                });
            }
        });
    }


    //继续
    function running(id, $a) {
        top.jzts();
        var url = "<%=basePath%>ProcessInfo/Continue.do?orderId="+id;
        $.get(url,function(data){
            top.hangge();
            var idStr=id;
            if("success" == data.result){
                $("#"+idStr+"").tips({
                    side:1,
                    msg:'暂停成功',
                    bg:'#009933',
                    time:3
                });
                $($a).tips({
                    side:1,
                    msg:'暂停成功',
                    bg:'#009933',
                    time:3
                });
            }
        });
    }
	//暂停
    function toStop(id, $a) {
        top.jzts();
        var url = "<%=basePath%>ProcessInfo/Suspended.do?orderId="+id;
        $.get(url,function(data){
            top.hangge();
            var idStr=id;
            if("success" == data.result){
                $("#"+idStr+"").tips({
                    side:1,
                    msg:'暂停成功',
                    bg:'#009933',
                    time:3
                });
                $($a).tips({
                    side:1,
                    msg:'暂停成功',
                    bg:'#009933',
                    time:3
                });
            }
        });
    }
    //继续
    function toCancelled(id, $a) {
        top.jzts();
        var url = "<%=basePath%>ProcessInfo/Cancelled.do?orderId="+id;
        $.get(url,function(data){
            top.hangge();
            var idStr=id;
            if("success" == data.result){
                $("#"+idStr+"").tips({
                    side:1,
                    msg:'暂停成功',
                    bg:'#009933',
                    time:3
                });
                $($a).tips({
                    side:1,
                    msg:'暂停成功',
                    bg:'#009933',
                    time:3
                });
            }
        });
    }
    //导出excel
    function toExcel(){
        window.location.href='<%=basePath%>crawlermanage/excel.do';
    }
</script>
</body>
</html>