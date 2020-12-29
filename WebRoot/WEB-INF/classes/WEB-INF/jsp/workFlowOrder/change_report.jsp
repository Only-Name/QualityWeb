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
                                    <tr> <td colspan="4" style="background-color: #87b87f;font-size: 20px;font-family: 华文楷体">数据质量变化趋势分析</td></tr>
                                    <tr>
                                        <td style="width:30%;text-align: right;padding-top: 13px;"><span style="color: #e43416" class="mustitem">*</span>卫星名:</td>
                                        <td style="width: 20%">
                                            <select id="satelliteName" name="satelliteName">
                                                <option value="">--请选择--</option>
                                                <c:forEach items="${satelliteList}" var="zt">
                                                    <option value="${zt.NAME}">${zt.NAME}</option>
                                                </c:forEach>
                                            </select>
                                        </td>
                                        <td style="width:7%;text-align: right;padding-top: 13px;"><span style="color: #e43416" class="mustitem">*</span>接收站:</td>
                                        <td style="width: 40%">
                                            <select id="station" name="station">
                                                <option value="MYC">密云</option>
                                                <option value="KSC">喀什</option>
                                                <option value="SYC">三亚</option>
                                            </select>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="width:150px;text-align: right;padding-top: 13px;"><span style="color: #e43416" class="mustitem">*</span>开始日期:</td>
                                        <td style="padding-left:2px;"><input class="span10 date-picker" name="startTime" id="startTime" type="text" data-date-format="yyyy-mm-dd" readonly="readonly" style="width:88px;" placeholder="开始日期" title="开始日期"/></td>
                                        <td style="width:150px;text-align: right;padding-top: 13px;"><span style="color: #e43416" class="mustitem">*</span>结束日期:</td>
                                        <td style="padding-left:2px;"><input class="span10 date-picker" name="endTime" id="endTime" type="text" data-date-format="yyyy-mm-dd" readonly="readonly" style="width:88px;" placeholder="结束日期" title="结束日期"/></td>
                                    </tr>
                                    <tr>
                                        <td style="width:150px;text-align: right;padding-top: 13px;"><span style="color: #e43416" class="mustitem">*</span>通道标识:</td>
                                        <td>
                                            <select id="channel" name="channel">
                                                <option value="">--请选择--</option>
                                                <option value="01">01</option>
                                                <option value="02">02</option>
                                            </select>
                                        </td>
                                        <td style="width:150px;text-align: right;padding-top: 13px;"><span style="color: #e43416" class="mustitem">*</span>传感器标识:</td>
                                        <td>
                                            <select id="sensor" name="sensor">
                                                <option value="">--请选择--</option>
                                                <option value="01">01</option>
                                                <option value="02">02</option>
                                            </select>
                                        </td>
                                    </tr>

                                    <%--结束--%>
                                    <tr>
                                        <td style="text-align: center;" colspan="4">
                                            <a class="btn btn-mini btn-primary" onclick="save();">查询</a> &nbsp;
                                            <a class="btn btn-mini btn-danger" href="<%=basePath%>WorkFlowOrder/changeReport.do">重置</a> &nbsp;
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
<!-- 下拉框 -->
<script src="static/ace/js/chosen.jquery.js"></script>
<!-- 日期框 -->
<script src="static/ace/js/date-time/bootstrap-datepicker.js"></script>
<!--提示框-->
<script type="text/javascript" src="<%=basePath%>static/js/jquery.tips.js"></script>
<script type="text/javascript">
    $(top.hangge());//关闭加载状态
    $(function() {
        //日期框
        $('.date-picker').datepicker({
            autoclose: true,
            todayHighlight: true
        });
    });
    function save() {
        var satellite = $("#satelliteName").val();
        var station = $("#station").val();
        var startTime = $("#startTime").val();
        if (startTime==null||startTime==""){
            $("#startTime").tips({
                side:3,
                msg:'请选择开始时间',
                bg:'#AE81FF',
                time:1
            });
            $("#startTime").focus();
            return false;
        }else {
            startTime=startTime+"%2000:00:00";
        }

        var endTime = $("#endTime").val();
        if (endTime==null||endTime==""){
            $("#endTime").tips({
                side:3,
                msg:'请选择开始时间',
                bg:'#AE81FF',
                time:1
            });
            $("#endTime").focus();
            return false;
        }else {
            endTime = endTime+"%2000:00:00";
        }
        if(endTime<startTime){
            alert("开始时间不得大于结束时间");
            return false;
        }
        var channel = $("#channel").val();
        var sensorName = $("#sensorName").val();
        var hree = "http://172.19.4.120:8080/WebReport/ReportServer?reportlet=cn.ac.radi.Report.QAReportWeb&taskmode=Q65_2&satellite="
        var url = hree+satellite+"&time="+startTime+"~"+endTime+"&station="+station+"&sensor="+sensorName+"&channelid="+channel+"&op=view";
        window.open (url, 'QualityReport', 'height=810, width=1000, top=100, left=80, toolbar=yes, menubar=yes, scrollbars=yes, resizable=yes,location=yes, status=yes');
    }
</script>
</html>


