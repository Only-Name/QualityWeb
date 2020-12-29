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
<!-- 下拉框 -->
<link rel="stylesheet" href="static/ace/css/chosen.css" />
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
								<form action="ShellInfo/${msg }.do" name="Form" id="Form" method="post">
									<div id="zhongxin" style="padding-top: 13px;">
										<input hidden type="text" id="id" name="id" value="${info.id}">
									<table id="table_report" class="table table-striped table-bordered table-hover">
										<tr>
											<td style="width:79px;text-align: right;padding-top: 13px;">启动脚本:</td>
											<td><input type="text" name="start_shell" id="start_shell" value="${info.start_shell }"  placeholder="请输入启动脚本绝对路径"  style="width:98%;"/></td>
										</tr>
										<tr>
											<td style="width:79px;text-align: right;padding-top: 13px;">停止脚本:</td>
											<td><input type="text" name="stop_shell" id="stop_shell" value="${info.stop_shell }"  placeholder="请输入停止脚本绝对路径"  style="width:98%;"/></td>
										</tr>
										<tr>
											<td style="width:79px;text-align: right;padding-top: 13px;">IP地址:</td>
											<td><input type="text" name="ip_number" id="ip_number"  value="${info.ip_number }"  placeholder="请输入IP地址" style="width:98%;"/></td>
										</tr>
										<tr>
											<td style="width:79px;text-align: right;padding-top: 13px;">用户名:</td>
											<td><input type="text" name="user_name" id="user_name"  value="${info.user_name }"  placeholder="请输入系统用户名" style="width:98%;"/></td>
										</tr>

										<tr>
											<td style="width:79px;text-align: right;padding-top: 13px;">密码:</td>
											<td><input type="password" name="password_id" id="password_id"  value="${info.password_id }"   placeholder="请输入密码"style="width:98%;"/></td>
										</tr>
										<tr>
											<td style="width:79px;text-align: right;padding-top: 13px;">确认密码:</td>
											<td><input type="password" name="chkpwd" id="chkpwd"   placeholder="确认密码"  style="width:98%;"/></td>
										</tr>

										<tr>
											<td style="width:79px;text-align: right;padding-top: 13px;">备注:</td>
											<td><input type="text" name="comment" id="comment"value="${info.comment }" placeholder="请输入备注" style="width:98%;"/></td>
										</tr>
										<tr>
											<td style="text-align: center;" colspan="10">
												<a class="btn btn-mini btn-primary" onclick="save();">保存</a>
												<a class="btn btn-mini btn-danger" onclick="top.Dialog.close();">取消</a>
											</td>
										</tr>
									</table>
									</div>
									<div id="zhongxin2" class="center" style="display:none"><br/><br/><br/><br/><img src="static/images/jiazai.gif" /><br/><h4 class="lighter block green"></h4></div>
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
	</div>
	<!-- /.main-container -->
	<!-- basic scripts -->
	<!-- 页面底部js¨ -->
	<%@ include file="../system/index/foot.jsp"%>
	<!-- ace scripts -->
	<script src="static/ace/js/ace/ace.js"></script>
	<!-- inline scripts related to this page -->
	<!-- 下拉框 -->
	<script src="static/ace/js/chosen.jquery.js"></script>
	<!--提示框-->
	<script type="text/javascript" src="static/js/jquery.tips.js"></script>
</body>
<script type="text/javascript">
	$(top.hangge());
	$(document).ready(function(){
		if($("#user_id").val()!=""){
			$("#loginname").attr("readonly","readonly");
			$("#loginname").css("color","gray");
		}
	});
	//保存
	function save(){
        if($("#start_shell").val()=="" && $("#stop_shell").val()==""){
            $("#start_shell").tips({
                side:3,
                msg:'请输入一个执行脚本',
                bg:'#AE81FF',
                time:2
            });
            $("#start_shell").focus();
            return false;
        }

		if($("#ip_number").val()==""){
			$("#ip_number").tips({
				side:3,
	            msg:'请输入IP地址',
	            bg:'#AE81FF',
	            time:3
	        });
			$("#ip_number").focus();
			return false;
		}
        if($("#user_name").val()==""){
            $("#user_name").tips({
                side:3,
                msg:'请输入用户名',
                bg:'#AE81FF',
                time:3
            });
            $("#user_name").focus();
            return false;
        }
		if($("#password_id").val()!=$("#chkpwd").val()){
			$("#chkpwd").tips({
				side:3,
	            msg:'两次密码不相同',
	            bg:'#AE81FF',
	            time:3
	        });
			$("#chkpwd").focus();
			return false;
		}
        $("#Form").submit();
        $("#zhongxin").hide();
        $("#zhongxin2").show();
	}

	$(function() {
		//下拉框
		if(!ace.vars['touch']) {
			$('.chosen-select').chosen({allow_single_deselect:true}); 
			$(window)
			.off('resize.chosen')
			.on('resize.chosen', function() {
				$('.chosen-select').each(function() {
					 var $this = $(this);
					 $this.next().css({'width': $this.parent().width()});
				});
			}).trigger('resize.chosen');
			$(document).on('settings.ace.chosen', function(e, event_name, event_val) {
				if(event_name != 'sidebar_collapsed') return;
				$('.chosen-select').each(function() {
					 var $this = $(this);
					 $this.next().css({'width': $this.parent().width()});
				});
			});
			$('#chosen-multiple-style .btn').on('click', function(e){
				var target = $(this).find('input[type=radio]');
				var which = parseInt(target.val());
				if(which == 2) $('#form-field-select-4').addClass('tag-input-style');
				 else $('#form-field-select-4').removeClass('tag-input-style');
			});
		}
	});
</script>
</html>