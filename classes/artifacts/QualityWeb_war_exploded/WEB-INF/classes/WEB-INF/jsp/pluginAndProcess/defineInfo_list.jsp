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
	<script type="text/javascript">
		//刷新ztree
	/*	function parentReload(){
			/!*if(null != ${MSG} && 'change' == ${MSG}){}*!/
			//	parent.location.href="<%=basePath%>groupInfo/listAllgroupInfo.do";

		}
		parentReload();*/
	</script>
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
							<table id="dynamic-table" class="table table-striped table-bordered table-hover">
								<thead>
									<tr>
										<th class="center" style="width: 50px;">序号</th>
										<th class='center'>流程名称</th>
										<th class='center'>显示名称</th>
										<th class='center' style="width: 50px;">版本</th>
										<th class='center' style="width: 50px;">创建时间</th>
										<th class='center' style="width: 50px;">修改时间</th>
										<th class='center' style="width: 120px;">操作</th>
									</tr>
								</thead>

								<tbody>
								<input type="hidden" name="groupId" id="groupId" value="${pd.groupId}">
								<c:choose>
									<c:when test="${not empty defineList}">
									<c:forEach items="${defineList}" var="info" varStatus="vs">
									<tr>
										<td class='center' style="width: 10px;">${vs.index+1}</td>
										<td class='center'style="width: 15%;">${info.processName}</td>
										<td class='center' style="width: 15%;">${info.displayName }</td>
										<td class='center'style="width: 10%;">${info.version}</td>
										<td class='center'style="width: 20%;">${info.createTime}</td>
										<td class='center'style="width: 20%;">${info.updateTime}</td>
										<td class='center'>
											<div class="hidden-sm hidden-xs action-buttons">
												<c:if test="${QX.edit == 1 }">
												<a class="green" href="javascript:editmenu('${info.processName}');">
													<i class="ace-icon fa fa-pencil-square-o bigger-130" title="修改"></i>
												</a>
												</c:if>
												<c:if test="${QX.del == 1 }">
												<a class="red" href="javascript:delmenu('${info.processName }');">
													<i class="ace-icon fa fa-trash-o bigger-130" title="删除"></i>
												</a>
												</c:if>
											</div>
											<div class="hidden-md hidden-lg">
												<div class="inline pos-rel">
													<button
														class="btn btn-minier btn-yellow dropdown-toggle"
														data-toggle="dropdown" data-position="auto">
														<i
															class="ace-icon fa fa-caret-down icon-only bigger-120"></i>
													</button>

													<ul class="dropdown-menu dropdown-only-icon dropdown-yellow dropdown-menu-right dropdown-caret dropdown-close">
														<c:if test="${QX.edit == 1 }">
														<li><a href="javascript:editmenu('${info.processName }');" class="tooltip-success" data-rel="tooltip" title="Edit">
															<span class="green">
																<i class="ace-icon fa fa-pencil-square-o bigger-120" title="修改"></i>
															</span>
														</a></li>
														</c:if>
														<c:if test="${QX.del == 1 }">
														<li><a href="javascript:delmenu('${info.processName }');" class="tooltip-error" data-rel="tooltip" title="Delete">
															<span class="red"> <i class="ace-icon fa fa-trash-o bigger-120"  title="删除"></i>
															</span>
														</a></li>
														</c:if>
													</ul>
												</div>
											</div>
										</td>
									</tr>
									</c:forEach>
									</c:when>
										<c:otherwise>
											<tr>
											<td colspan="100" class='center'>没有相关数据</td>
											</tr>
										</c:otherwise>
									</c:choose>
								</tbody>
							</table>
							
							<div>
								&nbsp;&nbsp;
								<c:if test="${QX.add == 1 }"><a class="btn btn-sm btn-success" onclick="addmenu('${pd.groupId}');">新增</a></c:if>
								<a class="btn btn-sm btn-success" onclick="goheadMenu();">返回</a>
							</div>
							
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
	<!-- 删除时确认窗口 -->
	<script src="static/ace/js/bootbox.js"></script>
	<!-- ace scripts -->
	<script src="static/ace/js/ace/ace.js"></script>

	<!-- inline scripts related to this page -->
	<script type="text/javascript">
		$(document).ready(function(){
			top.hangge();
		});	
		
		//去此ID下子菜单列表
		function goSonmenu(MENU_ID){
			top.jzts();
			window.location.href="<%=basePath%>groupInfo/pluginInfo.do?groupId="+MENU_ID;
		};
		//回到原主节点
		function goheadMenu() {
			top.jzts();
            window.location.href="<%=basePath%>process_Define.do";
        }
		
		//新增菜单
		function addmenu(MENU_ID){
			top.jzts();
			window.location.href="<%=basePath%>process_Define/toAdd.do?groupId="+MENU_ID;
		};
		
		//编辑菜单
		function editmenu(MENU_ID){
			top.jzts();
			window.location.href="<%=basePath%>process_Define/toEdit.do?processName="+MENU_ID+"&groupId="+${pd.groupId};
		};
		
		//删除
		function delmenu(processName){
			bootbox.confirm("确定要删除此菜单吗?", function(result) {
				if(result) {
					var url = "<%=basePath%>process_Define/delete.do?processName="+processName;
					top.jzts();
					$.get(url,function(data){
						if("success" == data.result){
							parent.location.href="<%=basePath%>process_Define/processInfo.do?groupId="+${pd.groupId};
						}else if("false" == data.result){
							top.hangge();
							bootbox.dialog({
								message: "<span class='bigger-110'>删除失败.请重试！</span>",
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




	</script>


</body>
</html>