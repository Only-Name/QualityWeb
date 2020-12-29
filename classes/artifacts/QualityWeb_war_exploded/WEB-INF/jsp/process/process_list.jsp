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
	<link rel="stylesheet" href="static/css/popupwindow.css">
	<link rel="stylesheet" href="static/ace/tab/css/reset-min.css"/>
	<link rel="stylesheet" href="static/ace/tab/css/progression.css"/>
	<link rel="stylesheet" href="static/ace/tab/css/style.css"/>
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
						<form action="ProcessInfo/list.do" method="post" name="Form" id="Form">
							<table style="margin-top:5px;">
								<tr>
									<td>
										<div class="nav-search">
									<span class="input-icon">
										<input style="width: 255px" class="nav-search-input" autocomplete="off" id="orderId" type="text" name="orderId" value="${pd.orderId }" placeholder="订单ID" />
									</span>
										</div>
									</td>
									<td>
										<div class="nav-search">
									<span class="input-icon">
										<input class="nav-search-input" autocomplete="off" id="platform" type="text" name="platform" value="${pd.platform }" placeholder="任务单号" />
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
							<div id="mythingy">
								<table id="simple-table" class="table table-striped table-bordered table-hover" style="margin-top:5px;">
									<thead>
									<tr>
										<th class="center" width="*">流程编号</th>
										<th class="center" width="*">任务单号</th>
										<th class="center" width="*">订单ID</th>
										<th class="center" width="*">订单类型</th>
										<th class="center" width="*">开始时间</th>
										<th class="center" width="*">结束时间</th>
										<th class="center" width="*">任务状态</th>
										<th class="center" width="*">操作</th>
									</tr>
									</thead>
									<tbody>
									<!-- 开始循环 -->
									<c:choose>
										<c:when test="${not empty processList}">
											<c:if test="${QX.cha == 1 }">
												<c:forEach items="${processList}" var="process" varStatus="vs">
													<tr>
														<c:choose>
															<c:when test="${process.status=='Aborted'||process.status=='Cancelled'}">
																<td style="background-color: #f99393" class='center'>${process.processId}</td>
																<td style="background-color: #f99393" class='center'>${process.platform}</td>
																<td style="background-color: #f99393" class='center'>${process.orderId}</td>
																<td style="background-color: #f99393" class='center'>${process.processType}</td>
																<td style="background-color: #f99393" class='center'>${process.beginTime}</td>
																<td style="background-color: #f99393" class='center'>${process.endTime}</td>
																<td style="background-color: #f99393" class='center'>${process.status}</td>
															</c:when>
															<c:when test="${process.status=='Completed'}">
																<td style="background-color: #92de90"class='center'>${process.processId}</td>
																<td style="background-color: #92de90"class='center'>${process.platform}</td>
																<td style="background-color: #92de90"class='center'>${process.orderId}</td>
																<td style="background-color: #92de90"class='center'>${process.processType}</td>
																<td style="background-color: #92de90"class='center'>${process.beginTime}</td>
																<td style="background-color: #92de90"class='center'>${process.endTime}</td>
																<td style="background-color: #92de90" class='center'>${process.status}</td>
															</c:when>
															<c:when test="${process.status=='Suspended'}">
																<td style="background-color:#28bdcc" class='center'>${process.processId}</td>
																<td style="background-color:#28bdcc" class='center'>${process.platform}</td>
																<td style="background-color:#28bdcc" class='center'>${process.orderId}</td>
																<td style="background-color:#28bdcc" class='center'>${process.processType}</td>
																<td style="background-color:#28bdcc" class='center'>${process.beginTime}</td>
																<td style="background-color:#28bdcc" class='center'>${process.endTime}</td>
																<td style="background-color:#28bdcc" class='center'>${process.status}</td>
															</c:when>
															<c:otherwise>
																<td style="background-color:#fbe49b" class='center'>${process.processId}</td>
																<td style="background-color:#fbe49b" class='center'>${process.platform}</td>
																<td style="background-color:#fbe49b" class='center'>${process.orderId}</td>
																<td style="background-color:#fbe49b" class='center'>${process.processType}</td>
																<td style="background-color:#fbe49b" class='center'>${process.beginTime}</td>
																<td style="background-color:#fbe49b" class='center'>${process.endTime}</td>
																<td style="background-color:#fbe49b" class='center'>${process.status}</td>
															</c:otherwise>
														</c:choose>
														<td class="center">
															<div class="hidden-sm hidden-xs btn-group">
																<a id="xiqi${vs.index}" class="btn btn-xs btn-info" title="详情" onclick="QuickDemo('xiqi${vs.index}','${process.orderId}');">
																	<i class="ace-icon fa fa-eye" title="详情"></i>
																</a>

																<c:if test="${process.status=='Suspended'}">
																	<a class="btn btn-xs btn-info" title="执行" onclick="running('${process.orderId}',this)">
																		<i class="ace-icon glyphicon glyphicon-play" title="执行"></i>
																	</a>
																</c:if>
																<c:if test="${process.status =='Running'}">
																	<a class="btn btn-xs btn-success" title="暂停" onclick="toStop('${process.orderId}',this);">
																		<i class="ace-icon fa fa-ban bigger-120" title="暂停"></i>
																	</a>
																	<a class="btn btn-xs btn-success" title="取消" onclick="toCancelled('${process.orderId}',this);">
																		<i class="ace-icon fa fa-flask bigger-120" title="取消"></i>
																	</a>
																</c:if>
																<c:if test="${process.status!='Running'}">
																	<a class="btn btn-xs btn-danger" onclick="del('${process.orderId}','${process.platform}');">
																		<i class="ace-icon fa fa-trash-o bigger-120" title="删除"></i>
																	</a>
																</c:if>
															</div>
														</td>
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
										<td style="vertical-align:top;"><div class="pagination" style="float: right;padding-top: 0px;margin-top: 0px;">${page.pageStr}</div></td>
									</tr>
								</table>
							</div>
							<div id="basic-demo" style="display: none">
								<table id="taskInfo1" class="table table-striped table-bordered table-hover" style="margin-top:5px;">
									<thead>
									<tr>
										<th class="center" width="15%" style='background-color: #92de90'>任务名称</th>
										<th class="center" width="5%" style='background-color: #92de90'>状态</th>
										<th class="center" width="10%" style='background-color: #92de90'>创建时间</th>
										<th class="center" width="10%" style='background-color: #92de90'>开始时间</th>
										<th class="center" width="10%" style='background-color: #92de90'>结束时间</th>
										<th class="center" width="5%" style='background-color: #92de90'>执行节点</th>
										<th class="center" width="5%" style='background-color: #92de90'>结果</th>
									</tr>
									</thead>
									<tbody id="taskInfo2" class="table table-striped table-bordered table-hover">
									</tbody>
								</table>
							</div>
							<div id="basic-demo1" style="display: none">
								<table id="taskInfo3" class="table table-striped table-bordered table-hover" >
									<tr>
										<div id="tabs">
											<ul>
												<li><a href="#tabs-1" title="">订单文件</a></li>
												<li><a href="#tabs-2" title="">脚本文件</a></li>
												<li><a href="#tabs-3" title="">结果文件</a></li>
												<li><a href="#tabs-4" title="">插件日志</a></li>
											</ul>
											<div id="tabs_container" style="width: 700px">
												<div id="tabs-1"></div>
												<div id="tabs-2"></div>
												<div id="tabs-3"></div>
												<div id="tabs-4"></div>
											</div><!--End tabs container-->
										</div>
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
<script src="static/js/jquery-1.11.0.min.js"></script>
<!-- 日期框 -->
<script src="static/ace/js/date-time/bootstrap-datepicker.js"></script>
<!--提示框-->
<script type="text/javascript" src="static/js/jquery.tips.js"></script>

<script src="static/js/popupwindow.min.js"></script>
<script src="static/ace/tab/js/tabulous.js"></script>
<script src="static/ace/tab/js/js.js"></script>
<script>
    $(top.hangge());//关闭加载状态
    $(function() {
        //日期框
        $('.date-picker').datepicker({
            autoclose: true,
            todayHighlight: true
        });
    });
    /*定时刷新*/
    setInterval(function () {
        $("#Form").submit();
    },100*1000);
    function QuickDemo(id,orderId){
        $("#taskInfo2").empty();
        $.ajax({
            type:'post',
            datatype:'json',
            url : '<%=basePath%>ProcessInfo/getTaskInfo.do',
            data:{
                orderId:orderId
            },
            success: function (data) {
                for(i=0;i<data.length;i++){
                    var  taskId = data[i].taskId;
                    var addhtml ="<tr>" +
						"<td class='center' ><a id="+data[i].taskId+" onclick=getJobInfo('"+data[i].taskId+"')>"+ data[i].taskId+"</a></td>" +
						"<td class='center' >"+ data[i].status+"</td>" +
						"<td class='center' >"+ data[i].createTime+"</td>" +
						"<td class='center' >"+ data[i].beginTime+"</td>" +
						"<td class='center' ,>"+ data[i].endTime+"</td>" +
						"<td class='center' ,>"+ data[i].nodeName+"</td>" +
						"<td class='center' ,>"+ data[i].result+"</td>" +
						"</tr>";
                    $("#taskInfo2").append(addhtml)
                        /*$('#trade').append("<option value='" + parentId + "' selected  >" + name+ "</option>");*/
                }
            }
        })
        $("#basic-demo").PopupWindow({
            title       : "流程信息",
            height      : 318,
            width       : 1186,
            autoOpen    : false
        });
        $("#"+id).on("click", function(event){
            $("#basic-demo").css('display', '');
            $("#basic-demo").PopupWindow("open");
        });
    }
    //检索
    function tosearch(){
        top.jzts();
        $("#Form").submit();
    }
    function getJobInfo(taskId) {
        $("#tabs-1").empty();
        $("#tabs-2").empty();
        $("#tabs-3").empty();
        $("#tabs-4").empty();
		$.ajax({
			type:'post',
			datatype:'json',
			url:'<%=basePath%>ProcessInfo/getJobInfo',
			data:{
			    taskId:taskId
			},
            success: function (data) {
                    $("#tabs-1").append("<textarea style='width:550px;height: 240px'>"+data.orderFile+"</textarea>")
                    $("#tabs-2").append("<textarea style='width:550px;height: 240px'>"+data.scriptFile+"</textarea>")
                    $("#tabs-3").append("<textarea style='width:550px;height: 240px'>"+data.resultFile+"</textarea>")
                    $("#tabs-4").append("<textarea style='width:550px;height: 240px'>"+data.outFile+"</textarea>")
			}
		})
        $("#basic-demo1").PopupWindow({
            title       : "任务信息",
            height      : 400,
            width       : 700,
            autoOpen    : false
        });
        $("#"+taskId).on("click", function(event){
            $("#basic-demo1").css('display', '');
            $("#basic-demo1").PopupWindow("open");
        });
    }
    //删除
    function del(orderId,platform){
        bootbox.confirm("确定要删除吗?", function(result) {
            if(result) {
                $.ajax({
                    type: "post",
                    url: "<%=basePath%>ProcessInfo/delete.do" ,
                    data: {
                        "orderId":orderId,
						"platform":platform
					},
                    dataType: "text",
                    success: function (data){
                        if("success"==data){
                            alert("删除成功！");
                            tosearch();
                        }else{
                            alert();
                        }
                    },
                    error:function (XMLHttpRequest, textStatus, errorThrown) {
                        alert("删除成功！");
                        tosearch();
                    }
                });
            }
        });
    }
    //继续
    function running(id, $a) {
        bootbox.confirm("确定要恢复执行吗?", function(result) {
            if (result){
        top.jzts();
        var url = "<%=basePath%>ProcessInfo/Continue.do?orderId="+id;
        $.get(url,function(data){
            top.hangge();
            var idStr=id;
            if("success" == data.result){
                $("#"+idStr+"").tips({
                    side:1,
                    msg:'恢复执行',
                    bg:'#009933',
                    time:3
                });
                $($a).tips({
                    side:1,
                    msg:'恢复执行',
                    bg:'#009933',
                    time:3
                });
            }
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
    //取消
    function toCancelled(id, $a) {
        top.jzts();
        var url = "<%=basePath%>ProcessInfo/Cancelled.do?orderId="+id;
        $.get(url,function(data){
            top.hangge();
            var idStr=id;
            if("success" == data.result){
                $("#"+idStr+"").tips({
                    side:1,
                    msg:'取消成功',
                    bg:'#009933',
                    time:3
                });
                $($a).tips({
                    side:1,
                    msg:'取消成功',
                    bg:'#009933',
                    time:3
                });
            }
        });
    }
</script>
</body>
</html>