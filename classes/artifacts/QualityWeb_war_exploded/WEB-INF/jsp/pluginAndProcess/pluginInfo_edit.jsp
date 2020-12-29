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

						<form  action="groupInfo/${MSG}.do" name="menuForm" id="menuForm" method="post" class="form-horizontal">
							<input type="hidden" value="${pd.groupId}" name="groupId" id="groupId">
							<input type="hidden" value="${pd.moduleId}" name="moduleId" id="moduleId">
							<table id="table_report" class="table table-striped table-bordered table-hover">
								<tr >
									<td colspan="4">
										<h1>
											<small>
												<i class="ace-icon fa fa-angle-double-right"></i>
												编辑插件
											</small>
										</h1>
									</td>
								</tr>
								<tr>
									<td>
										<label class="col-sm-3 control-label no-padding-right" for="form-field-1"> 插件名称 :</label>
										<div class="col-sm-9">
											<input type="text" name="pluginName" id="pluginName" value="${info.pluginName }" placeholder="输入插件名称" class="col-xs-10 col-sm-5" />
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
									<td colspan="4">
										<h1>
											<small>
												<i class="ace-icon fa fa-angle-double-right"></i>
												编辑模块
											</small>
										</h1>
									</td>
								</tr>
								<tr>
									<td>
										<label class="col-sm-3 control-label no-padding-right" for="form-field-1"> 节点个数 :</label>
										<div class="col-sm-9">
											<input type="text" name="nodeReq" id="nodeReq" value="${info.moduleInfo.nodeReq }" placeholder="输入节点个数" class="col-xs-10 col-sm-5" />
										</div>
									</td>
									<td>
										<label class="col-sm-3 control-label no-padding-right" for="form-field-1"> 内存大小(MB) :</label>
										<div class="col-sm-9">
											<input type="text" name="memReq" id="memReq" value="${info.moduleInfo.memReq }" placeholder="输入内存大小" class="col-xs-10 col-sm-5" />
										</div>
									</td>
								</tr>
								<tr>
									<td>
										<label class="col-sm-3 control-label no-padding-right" for="form-field-1"> CPU个数 :</label>
										<div class="col-sm-9">
											<input type="text" name="cpuReq" id="cpuReq" value="${info.moduleInfo.cpuReq }" placeholder="输入CPU个数" class="col-xs-10 col-sm-5" />
										</div>
									</td>
									<td>
										<label class="col-sm-3 control-label no-padding-right" for="form-field-1"> GPU个数 :</label>
										<div class="col-sm-9">
											<input type="text" name="gpuReq" id="gpuReq" value="${info.moduleInfo.gpuReq }" placeholder="输入CPU个数" class="col-xs-10 col-sm-5" />
										</div>
									</td>
								</tr>
								<tr>
									<td>
										<label class="col-sm-3 control-label no-padding-right" for="form-field-1"> 挂起时间(秒) :</label>
										<div class="col-sm-9">
											<input type="text" name="wallTime" id="wallTime" value="${info.moduleInfo.wallTime }" placeholder="输入挂起时间" class="col-xs-10 col-sm-5" />
										</div>
									</td>
									<td>
										<label class="col-sm-3 control-label no-padding-right" for="form-field-1"> 执行文件 :</label>
										<div class="col-sm-9">
											<input type="text" name="executeFile" id="executeFile" value="${info.moduleInfo.executeFile }" placeholder="执行文件名称" class="col-xs-10 col-sm-5" />
										</div>
									</td>
								</tr>
								<tr>
									<td>
										<label class="col-sm-3 control-label no-padding-right" for="form-field-1"> 执行队列 :</label>
										<div class="col-sm-9">
											<input type="text" name="queue" id="queue" value="${info.moduleInfo.queue }" placeholder="输入执行队列" class="col-xs-10 col-sm-5" />
										</div>
									</td>
									<td>
										<label class="col-sm-3 control-label no-padding-right" for="form-field-1"> 发布者 :</label>
										<div class="col-sm-9">
											<input type="text" name="publisher" id="publisher" value="${info.moduleInfo.publisher }" placeholder="输入模块发布者" class="col-xs-10 col-sm-5" />
										</div>
									</td>
								</tr>
								<tr>
									<td colspan="3">
										<label class="col-sm-3 control-label no-padding-right" for="form-field-1"> XML模板 :</label>
										<div class="col-sm-9" >
											<textarea  style="width: 180px" name="templateXML" id="templateXML" placeholder="请输入XML模板" >${info.templateXml}</textarea>
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
	<!--提示框-->
	<script type="text/javascript" src="static/js/jquery.tips.js"></script>
	<!-- inline scripts related to this page -->
	<script type="text/javascript">
		$(top.hangge());
		
		//返回
		function goback(MENU_ID){
			top.jzts();
			window.location.href="<%=basePath%>groupInfo/pluginInfo.do?groupId="+MENU_ID;
		}
		
		//保存
		function save(){
			$("#menuForm").submit();
		}
		
		//设置菜单类型or状态
		function setType(type,value){
			if(type == '1'){
				$("#MENU_TYPE").val(value);
			}else{
				$("#MENU_STATE").val(value);
			}
		}
	</script>


</body>
</html>