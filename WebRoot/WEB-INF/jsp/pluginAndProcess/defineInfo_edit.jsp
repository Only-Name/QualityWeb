<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
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
	<%--<link rel="stylesheet" href="plugins/stable/css/app.css" />--%>
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

						<form  action="process_Define/${MSG}.do" name="menuForm" id="menuForm" method="post" class="form-horizontal">
							<input id="msg" value="${MSG}" hidden>
                            <input type="hidden" value="${pd.groupId}" name="groupId" id="groupId">
							<table id="table_report" class="table table-striped table-bordered table-hover">
								<tr >
									<td colspan="4">
										<h1>
											<small>
												<i class="ace-icon fa fa-angle-double-right"></i>
												编辑
											</small>
										</h1>
									</td>
								</tr>
								<tr>
									<td>
										<label class="col-sm-3 control-label no-padding-right" for="form-field-1"> 流程名称 :</label>
										<div class="col-sm-9">
											<input type="text" name="processName" id="processName" value="${info.processName }" placeholder="输入插件名称" class="col-xs-10 col-sm-5" />
										</div>
									</td>
									<td>
										<label class="col-sm-3 control-label no-padding-right" for="form-field-1"> 显示名 :</label>
										<div class="col-sm-9">
											<input type="text" name="displayName" id="displayName" value="${info.displayName }" placeholder="输入显示名" class="col-xs-10 col-sm-5" />
										</div>
									</td>
								</tr>
								<tr>
									<td>
										<label class="col-sm-3 control-label no-padding-right" for="form-field-1"> 版本 :</label>
										<div class="col-sm-9">
											<input type="text" name="version" id="version" value="${info.version }" placeholder="输入组名称" class="col-xs-10 col-sm-5" />
										</div>
									</td>
									<td>
										<label class="col-sm-3 control-label no-padding-right" for="form-field-1"> 启用 :</label>
											<input type="radio" name="enabled" value="1" id="enabled1" <c:if test="${info.enabled=='1'}">checked="checked"</c:if>>
											<span class="lbl">启用</span>
											<input type="radio" name="enabled" value="0" id="enabled2" <c:if test="${info.enabled=='0'}">checked="checked"</c:if>>
											<span class="lbl">不启用</span>
									</td>
								</tr>
                                <tr >
                                    <td style="color: #00aa00;">
                                        <input type="hidden" runat="server" id="hidLI" />
                                        <div data-force="30" class="layer block" style="font-size: 16px;text-align: center;left: 14.5%; top: 0; width: 37%">
                                        <h1>
                                            <small>
                                                <i class="ace-icon fa fa-angle-double-right"></i>
                                                编辑流程
                                            </small>
                                        </h1>
                                        <ul id="foo" class="class">
                                            <c:forEach items="${taskList}" var="task" varStatus="vs">
                                                <li  id="${task.name}" value="${task.name}">${task.name}</li>
                                            </c:forEach>
                                            <li></li>
                                        </ul>
                                        </div>
                                    </td>
                                    <td style="color:#0e90d2">
                                        <div data-force="18" class="layer block" style="font-size: 16px;text-align: center;left: 58%; top: 143px; width: 40%;">
                                        <h1>
                                            <small>
                                                <i class="ace-icon fa fa-angle-double-right"></i>
                                                所有插件
                                            </small>
                                        </h1>
                                        <ul id="bar" class=" block__list block__list_tags">
                                            <c:forEach items="${infoList}" var="info" varStatus="vs">
                                                <li  id="${info.pluginName}" value="${info.pluginName}">${info.pluginName}</li>
                                            </c:forEach>
                                        </ul>
                                        </div>
                                    </td>
                                </tr>
							</table>
							<div class="clearfix form-actions">
								<div class="col-md-offset-3 col-md-9">
									<a class="btn btn-mini btn-primary" onclick="save();">保存</a>
									<a class="btn btn-mini btn-danger" onclick="goback('${pd.groupId}');">取消</a>
								</div>
							</div>
							<div class="hr hr-18 dotted hr-double"></div>
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
		<a href="#" id="btn-scroll-up"
			class="btn-scroll-up btn btn-sm btn-inverse"> <i
			class="ace-icon fa fa-angle-double-up icon-only bigger-110"></i>
		</a>

	</div>
	<!-- /.main-container -->

	<!-- basic scripts -->
	<!-- 页面底部js¨ -->
	<%@ include file="../system/index/foot.jsp"%>
	<script  type="text/javascript" src="plugins/stable/js/Sortable.js"></script>

	<script  type="text/javascript" src="plugins/stable/js/app.js"></script>
	<!--提示框-->
	<script type="text/javascript" src="static/js/jquery.tips.js"></script>
	<!-- inline scripts related to this page -->
	<script type="text/javascript">
		$(top.hangge());
		
		//返回
		function goback(MENU_ID){
			top.jzts();
			window.location.href="<%=basePath%>process_Define/processInfo.do?groupId="+MENU_ID;
		}
		//保存
		function save(){
		    var test = $("#msg").val();
            var groupId = $("#groupId").val();
            var processName = $("#processName").val();
            checkName(processName);
            var displayName = $("#displayName").val();
            if($("#displayName").val()==""){
                $("#displayName").tips({
                    side:3,
                    msg:'请输入显示名',
                    bg:'#AE81FF',
                    time:2
                });
                $("#displayName").focus();
                return false;
            }
            var version = $("#version").val();
            if($("#version").val()==""){
                $("#version").tips({
                    side:3,
                    msg:'请输入版本号',
                    bg:'#AE81FF',
                    time:2
                });
                $("#version").focus();
                return false;
            }
            var optionTexts = [];
            $("#foo li").each(function() { optionTexts.push($(this).text()) });
            var plugin ="" ;
            for (var i=0;i<optionTexts.length;i++){
                if (plugin==''){
                    plugin = optionTexts[i];
                }else{
                    plugin = plugin+";"+optionTexts[i];
                }
            }
            $.ajax({
                url:'<%=basePath%>process_Define/'+test+'.do',
                dataType:'text',
                type:'post',
                data:{
                    groupId:groupId,
                    processName:processName,
                    displayName:displayName,
                    version:version,
                    plugin:plugin
                },
                success:function(data){
                 window.location.href='<%=basePath%>process_Define/processInfo.do?groupId='+${pd.groupId};
                }
            });
           // $("#menuForm").submit();
		}
        function checkName(val) {
            var msg = '${msg}';
            $.ajax({
                type:'post',
                dataType:'json',
                url:'<%=basePath%>process_Define/checkName.do',
                data:{
                    processName:val
                },
                success:function (data) {
                    if(data=="1"){
                        $("#processName").tips({
                            side:3,
                            msg:'流程名字重复!',
                            bg:'#AE81FF',
                            time:2
                        });
                        $("#processName").focus();
                        return false;
                    }
                }
            })
        }
	</script>
</body>
</html>