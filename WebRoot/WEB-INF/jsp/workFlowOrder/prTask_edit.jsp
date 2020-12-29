<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <base href="<%=basePath%>">
    <link rel="stylesheet" type="text/css" href="<%=basePath%>plugins/webuploader/webuploader.css">
    <script type="text/javascript" src="<%=basePath%>plugins/menu/js/jquery-1.9.1.min.js" ></script>
    <!-- 日期框 -->
    <link rel="stylesheet" href="<%=basePath%>static/ace/css/datepicker.css" />
    <script src="<%=basePath%>static/ace/js/date-time/bootstrap-datepicker.js"></script>
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
                        <form action="<%=basePath%>WorkFlowOrder/${msg}.do" name="Form" id="Form" method="post">
                            <div class="project-tab project_tab_show" id="tab-basic">
                                <table class="table table-striped table-bordered table-hover">
                                    <tr> <td colspan="4" style="background-color: #92de90;font-size: 20px;font-family: 华文楷体">新建产品生产任务</td></tr>
                                    <tr>
                                        <td  style="width:15%;text-align: right;padding-top: 13px;"><span  style="color: #e43416" class="mustitem">*</span>任务单号:</td>
                                        <td>
                                            <input class="span10 date-picker" style="width: 30%" id="taskSerialNumber" name="taskSerialNumber" value="${taskSerialNumber}"/>
                                        </td>
                                        <td style="width:150px;text-align: right;padding-top: 13px;"><span style="color: #e43416" class="mustitem">*</span>卫星名:</td>
                                        <td>
                                            <select id="satelliteName" name="satelliteName">
                                                <option value="">--请选择--</option>
                                                <c:forEach items="${satelliteList}" var="zt">
                                                    <option <c:if test="${zt.NAME ==satellite}">selected</c:if> value="${zt.NAME}">${zt.NAME}</option>
                                                </c:forEach>
                                            </select>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="width:150px;text-align: right;padding-top: 13px;"><span style="color: #e43416" class="mustitem">*</span>景标识:</td>
                                        <td>
                                            <input class="span10 date-picker" style="width: 80%" name="sceneID" id="sceneID" type="text" value="${pd.sceneId}" />
                                        </td>
                                        <td style="width:125px;text-align: right;padding-top: 13px;"><span style="color: #e43416" class="mustitem">*</span>产品级别:</td>
                                        <td>
                                            <select id="productLevel" name="productLevel" onchange="checkLevel(this.value)">
                                                <option value="L1">1级</option>
                                                <option value="L2">2级</option>
                                            </select>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="width:150px;text-align: right;padding-top: 13px;"><span style="color: #e43416" class="mustitem">*</span>优先级:</td>
                                        <td>
                                            <select id="taskPriority" name="taskPriority">
                                                <option value="">--请选择--</option>
                                                <c:forEach items="${statusList}" var="zt">
                                                    <option value="${zt.NAME}">${zt.NAME}</option>
                                                </c:forEach>
                                            </select>
                                        </td>
                                        <td style="width:125px;text-align: right;padding-top: 13px;"><span style="color: #e43416" class="mustitem">*</span>JobTaskId:</td>
                                        <td>
                                            <input class="span10 date-picker" name="jobTaskId" id="jobTaskId" type="text" style="width: 60%" value="${pd.jobtaskId}" />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="width:150px;text-align: right;padding-top: 13px;">输出路径:</td>
                                        <td>
                                            <input class="span10 date-picker" style="width: 90%" name="outPath" id="outPath" type="text" />
                                        </td>
                                        <td id="resample1" style="display: none;width:125px;text-align: right;padding-top: 13px;"><span style="color: #e43416" class="mustitem">*</span>重采样方式:</td>
                                        <td id="resample2" style="display: none">
                                            <select id="resample_kernal" name="resample_kernal">
                                                <option value="BI">BI</option>
                                                <option value="BC">BC</option>
                                                <option value="NN">NN</option>
                                            </select>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="width:125px;text-align: right;padding-top: 13px;">备注:</td>
                                        <td colspan="3" style="width: 60%">
                                            <textarea id="comment" name="comment"  style="width: 400px;height: 120px"></textarea>
                                        </td>
                                    </tr>
                                    <%--结束--%>
                                    <tr>
                                        <td style="text-align: center;" colspan="4">
                                            <a class="btn btn-mini btn-primary" onclick="save();">保存</a> &nbsp;
                                            <a class="btn btn-mini btn-danger" href="<%=basePath%>WorkFlowOrder/goDatask.do">取消</a> &nbsp;
                                        </td>
                                    </tr>
                                </table>
                            </div>
                        </form>
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
    <!-- 页面底部js¨ -->
    <%@ include file="../system/index/foot.jsp"%>
</body>
<!-- ace scripts -->
<script src="<%=basePath%>static/ace/js/ace/ace.js"></script>
<script type="text/javascript" src="<%=basePath%>plugins/webuploader/webuploader.js"></script>
<!--提示框-->
<script type="text/javascript" src="<%=basePath%>static/js/jquery.tips.js"></script>
<script type="text/javascript">
    $(top.hangge());//关闭加载状态
    function checkLevel(level) {
        if (level=="L2"){
            $("#resample1").css('display', '');
            $("#resample2").css('display', '');
        }else {
            $("#resample1").css('display', 'none');
            $("#resample2").css('display', 'none');
            $("#resample_kernal").val("");
        }
    }
    function  save() {
        var taskSerialNumber = $("#taskSerialNumber").val();
        if( taskSerialNumber==""){
            $("#taskSerialNumber").tips({
                side:3,
                msg:'请填写任务单号',
                bg:'#AE81FF',
                time:1
            });
            $("#taskSerialNumber").focus();
            return false;
        }

        if($("#satelliteName").val()==''){
            $("#satelliteName").tips({
                side:3,
                msg:'请选择卫星',
                bg:'#AE81FF',
                time:1
            });
            $("#satelliteName").focus();
            return false;
        }

        if($("#sceneID").val()==''){
            $("#sceneID").tips({
                side:3,
                msg:'请输入景标识',
                bg:'#AE81FF',
                time:1
            });
            $("#sceneID").focus();
            return false;
        }
        if($("#taskPriority").val()==''){
            $("#taskPriority").tips({
                side:3,
                msg:'请选择订单状态',
                bg:'#AE81FF',
                time:1
            });
            $("#taskPriority").focus();
            return false;
        }
        var jobTaskId = $("#jobTaskId").val();
        if (jobTaskId==null||jobTaskId==""){
            $("#jobTaskId").tips({
                side:3,
                msg:'请填写JobTaskId',
                bg:'#AE81FF',
                time:1
            });
            $("#jobTaskId").focus();
            return false;
        }
        alert("下单成功")
        //保存
        $("#Form").submit();
    }
</script>
</html>


