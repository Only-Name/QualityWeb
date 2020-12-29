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
                                    <tr> <td colspan="4" style="background-color: #92de90;font-size: 20px;font-family: 华文楷体">新建数据质量监测任务</td></tr>
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
                                            <input class="span10 date-picker" name="jobTaskId" id="jobTaskId" style="width: 60%" type="text" value="${pd.jobtaskId}" />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="width:150px;text-align: right;padding-top: 13px;"><span style="color: #e43416" class="mustitem">*</span>优先级:</td>
                                        <td>
                                            <select id="dataselect" name="dataselect"onchange="checkSelectType(this.value)">
                                                <option value="AutoType">AutoType</option>
                                                <option value="Full">Full</option>
                                                <option value="custom">custom</option>
                                            </select>
                                        </td>
                                        <td style="width:150px;text-align: right;padding-top: 13px;"><span style="color: #e43416" class="mustitem">*</span>任务类型:</td>
                                        <td>
                                            <select id="taskMode" name="taskMode">
                                                <option value="">--请选择--</option>
                                                <c:forEach items="${taskmodeList}" var="zt">
                                                    <option value="${zt.NAME}">${zt.NAME}</option>
                                                </c:forEach>
                                            </select>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td id="sceneId1" style="display: none;width:125px;text-align: right;padding-top: 13px;"><span style="color: #e43416" class="mustitem">*</span>景ID:</td>
                                        <td id="sceneId2" style="display: none;">
                                            <input class="span10 date-picker" style="width: 75%" name="sceneId" id="sceneId" type="text" />
                                        </td>
                                        <td style="width:125px;text-align: right;padding-top: 13px;">备注:</td>
                                        <td >
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
    function checkSelectType(selectType) {
        if(selectType=='custom'){
            $("#sceneId1").css('display', '');
            $("#sceneId2").css('display', '');
        }else {
            $("#sceneId1").css('display', 'none');
            $("#sceneId2").css('display', 'none');
            $("#sceneId").val("");
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
        if($("#taskMode").val()==''){
            $("#taskMode").tips({
                side:3,
                msg:'请选择任务类型',
                bg:'#AE81FF',
                time:1
            });
            $("#taskMode").focus();
            return false;
        }
        if($("#dataselect").val()=='custom'){
            if($("#sceneId").val()==''){
                $("#sceneId").tips({
                    side:3,
                    msg:'请输入景ID',
                    bg:'#AE81FF',
                    time:1
                });
                $("#sceneId").focus();
                return false;
            }
        }
        alert("下单成功")
        //保存
        $("#Form").submit();
    }
</script>
</html>


