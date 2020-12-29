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
		function parentReload(){
			/*if(null != ${MSG} && 'change' == ${MSG}){}*/
			//	parent.location.href="<%=basePath%>groupInfo/listAllgroupInfo.do";

		}
		parentReload();
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
										<th class='center'>组ID</th>
										<th class='center'>组名称</th>
									</tr>
								</thead>

								<tbody>
								<c:choose>
									<c:when test="${not empty groupInfoList}">
									<c:forEach items="${groupInfoList}" var="groupInfo" varStatus="vs">
									<tr>
										<td class='center' style="width: 10px;">${vs.index+1}</td>
										<td class='center' style="width: 20%;">${groupInfo.groupId }</td>
										<td class='center'><i class="${groupInfo.groupName}">&nbsp;</i>
											<a href="javascript:goSonmenu('${groupInfo.groupId }')">${groupInfo.groupName }</a>
											&nbsp;
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
							
						<%--	<div>
								&nbsp;&nbsp;
								<c:if test="${QX.add == 1 }"><a class="btn btn-sm btn-success" onclick="addmenu();">新增</a></c:if>
								<c:if test="${null != pd.MENU_ID && pd.MENU_ID != '0'}">
									<a class="btn btn-sm btn-success" onclick="goSonmenu('${pd.PARENT_ID}');">返回</a>
								</c:if>
							</div>--%>
							
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
			window.location.href="<%=basePath%>process_Define/processInfo.do?groupId="+MENU_ID;
		};
	</script>
</body>
</html>