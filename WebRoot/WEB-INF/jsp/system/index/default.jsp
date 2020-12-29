<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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
<%@ include file="../index/top.jsp"%>

	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>卫星大数据平台</title>
	<link href="static/dataView/css/bootstrap.css" rel="stylesheet">
	<link rel="stylesheet" href="static/dataView/css/base.css">
	<link rel="stylesheet" href="static/dataView/css/index.css">

	<style>
		.t_title{
			width: 100%;
			height: 100%;
			text-align: center;
			font-size: 2.5em;
			line-height: 80px;
			color: #fff;
		}
		#chart_map{
			cursor: pointer;
		}
		.t_show{
			position: absolute;
			top: 0;
			right: 0;
			border-radius: 2px;
			background: #2C58A6;
			padding: 2px 5px;
			color: #fff;
			cursor: pointer;
		}
		.text1{
			width:250px;
			height:30px;
			margin:0 auto;
			margin-top: 30px;
			line-height: 30px;
			text-align: center;

		}
	</style>
<script type="text/javascript">
setTimeout("top.hangge()",500);
</script>
</head>
<body class="no-skin" style="height: 100%; margin: 0;background-color: #275096;">
<div class="data_content">
	<div>
		<marquee ><h2 style="color: #FFF6D9;margin-top: 0px;;margin-bottom: 30px">当前执行任务：XXX</h2></marquee>
	</div>

	<!-- /section:basics/navbar.layout -->
	<div class="data_main">
			<input id="totalCount" value="${pd.totalCount}" hidden>
			<input id="succCount" value="${pd.succCount}"hidden>
			<input id="failCount" value="${pd.failCount}"hidden>
			<input id="cancelCount" value="${pd.cancelCount}"hidden>
            <input id="jobCount1" value="${pd.jobCount1}" hidden>
            <input id="jobCount2" value="${pd.jobCount2}"hidden>
            <input id="jobCount3" value="${pd.jobCount3}"hidden>
            <input id="jobCount4" value="${pd.jobCount4}"hidden>
            <input id="jobCount5" value="${pd.jobCount5}" hidden>
            <input id="jobCount6" value="${pd.jobCount6}"hidden>
            <input id="jobCount7" value="${pd.jobCount7}"hidden>
            <input id="jobCount8" value="${pd.jobCount8}"hidden>
            <input id="jobCount9" value="${pd.jobCount9}" hidden>
            <input id="jobCount10" value="${pd.jobCount10}"hidden>
            <input id="jobCount11" value="${pd.jobCount11}"hidden>
            <input id="jobCount12" value="${pd.jobCount12}"hidden>
			<div class="main_left fl">
				<div class="left_1 t_btn6" style="cursor: pointer;">
					<!--左上边框-->
					<div class="t_line_box">
						<i class="t_l_line"></i>
						<i class="l_t_line"></i>
					</div>
					<!--右上边框-->
					<div class="t_line_box">
						<i class="t_r_line"></i>
						<i class="r_t_line"></i>
					</div>
					<!--左下边框-->
					<div class="t_line_box">
						<i class="l_b_line"></i>
						<i class="b_l_line"></i>

					</div>
					<!--右下边框-->
					<div class="t_line_box">
						<i class="r_b_line"></i>
						<i class="b_r_line"></i>
					</div>
					<div class="main_title">
						<img src="static/dataView/img/t_1.png" alt="">
						卫星运行情况
					</div>

					<%--<div id="chart_1" class="chart" style="width:100%;height: 280px;">

						&lt;%&ndash;<table>
							<tr>
								<td style="color: white">卫星运行时间(天)</td>
								<td style="color: white">接收原始数据量(T)</td>
							</tr>
							<tr>
								<td style="color: white">365</td>
								<td style="color: white">1048</td>
							</tr>
						</table>
						<table>
							<tr>
								<td style="color: white">接收轨道数(个)</td>
								<td style="color: white">编目/产品生成结果(景)</td>
							</tr>
							<tr>
								<td style="color: white">5196</td>
								<td style="color: white">3554558</td>
							</tr>
						</table>&ndash;%&gt;
					</div>--%>
					<div class="text1" style="background-color: #d15b47">
						在轨运行时间（天）：722
					</div>
					<div class="text1" style="background-color: #1AB394">
						接收原始数据量（T）：XXXX
					</div>
					<div class="text1" style="background-color: #ffb752">
						接收轨道数（轨）：20589
					</div>
					<div class="text1" style="background-color: #2e8965">
                                编目/产品生成成果（景）：XXXX
					</div>
				</div>
				<div class="left_2" style="cursor: pointer;">
					<!--左上边框-->
					<div class="t_line_box">
						<i class="t_l_line"></i>
						<i class="l_t_line"></i>
					</div>
					<!--右上边框-->
					<div class="t_line_box">
						<i class="t_r_line"></i>
						<i class="r_t_line"></i>
					</div>
					<!--左下边框-->
					<div class="t_line_box">
						<i class="l_b_line"></i>
						<i class="b_l_line"></i>
					</div>
					<!--右下边框-->
					<div class="t_line_box">
						<i class="r_b_line"></i>
						<i class="b_r_line"></i>
					</div>
					<div class="main_title">
						<img src="static/dataView/img/t_2.png" alt="">
						存储空间统计
					</div>
					<div id="chart_2" class="chart t_btn9" style="width:100%;height: 280px;">
					</div>
				</div>

			</div>
			<div class="main_center fl">
				<div class="center_text">
					<!--左上边框-->
					<div class="t_line_box">
						<i class="t_l_line"></i>
						<i class="l_t_line"></i>
					</div>
					<!--右上边框-->
					<div class="t_line_box">
						<i class="t_r_line"></i>
						<i class="r_t_line"></i>
					</div>
					<!--左下边框-->
					<div class="t_line_box">
						<i class="l_b_line"></i>
						<i class="b_l_line"></i>
					</div>
					<!--右下边框-->
					<div class="t_line_box">
						<i class="r_b_line"></i>
						<i class="b_r_line"></i>
					</div>
					<div class="main_title">
						<img src="static/dataView/img/t_3.png" alt="">
						遥感卫星地面站
					</div>
					<div id="chart_map" style="width:100%;height:610px;">

					</div>
				</div>
			</div>
			<div class="main_right fr">
				<div class="right_1">
					<!--左上边框-->
					<div class="t_line_box">
						<i class="t_l_line"></i>
						<i class="l_t_line"></i>
					</div>
					<!--右上边框-->
					<div class="t_line_box">
						<i class="t_r_line"></i>
						<i class="r_t_line"></i>
					</div>
					<!--左下边框-->
					<div class="t_line_box">
						<i class="l_b_line"></i>
						<i class="b_l_line"></i>
					</div>
					<!--右下边框-->
					<div class="t_line_box">
						<i class="r_b_line"></i>
						<i class="b_r_line"></i>
					</div>
					<div class="main_title">
						<img src="static/dataView/img/t_4.png" alt="">
						作业统计(月)
					</div>
					<div id="chart_3" class="echart t_btn7" style="width:100%;height: 280px;">

					</div>
				</div>
				<div class="right_2">
					<!--左上边框-->
					<div class="t_line_box">
						<i class="t_l_line"></i>
						<i class="l_t_line"></i>
					</div>
					<!--右上边框-->
					<div class="t_line_box">
						<i class="t_r_line"></i>
						<i class="r_t_line"></i>
					</div>
					<!--左下边框-->
					<div class="t_line_box">
						<i class="l_b_line"></i>
						<i class="b_l_line"></i>
					</div>
					<!--右下边框-->
					<div class="t_line_box">
						<i class="r_b_line"></i>
						<i class="b_r_line"></i>
					</div>
					<div class="main_title">
						<img src="static/dataView/img/t_5.png" alt="">
						任务统计（月）
					</div>
					<div id="chart_4" class="echart fl t_btn4" style="width:100%;height: 280px;cursor: pointer;"></div>
				</div>
			</div>
		</div>
	<div class="data_bottom">
		<div class="bottom_1 fl t_btn5" style="cursor: pointer;">
			<!--左上边框-->
			<div class="t_line_box">
				<i class="t_l_line"></i>
				<i class="l_t_line"></i>
			</div>
			<!--右上边框-->
			<div class="t_line_box">
				<i class="t_r_line"></i>
				<i class="r_t_line"></i>
			</div>
			<!--左下边框-->
			<div class="t_line_box">
				<i class="l_b_line"></i>
				<i class="b_l_line"></i>
			</div>
			<!--右下边框-->
			<div class="t_line_box">
				<i class="r_b_line"></i>
				<i class="b_r_line"></i>
			</div>
			<div class="main_title">
				<img src="static/dataView/img/t_6.png" alt="">
				资源监控管理
			</div>
			<div id="chart_5" class="echart fl" style="width:100%;height: 250px;margin-top: 15px;">

			</div>
		</div>
		<div class="bottom_center fl">
			<div class="bottom_2 fl">
				<!--左上边框-->
				<div class="t_line_box">
					<i class="t_l_line"></i>
					<i class="l_t_line"></i>
				</div>
				<!--右上边框-->
				<div class="t_line_box">
					<i class="t_r_line"></i>
					<i class="r_t_line"></i>
				</div>
				<!--左下边框-->
				<div class="t_line_box">
					<i class="l_b_line"></i>
					<i class="b_l_line"></i>
				</div>
				<!--右下边框-->
				<div class="t_line_box">
					<i class="r_b_line"></i>
					<i class="b_r_line"></i>
				</div>
				<div class="main_title">
					<img src="static/dataView/img/t_7.png" alt="">
					归档任务统计(月)
				</div>
				<div class="main_table t_btn8">
					<table>
						<thead>
						<tr>
							<th>任务总数</th>
							<th>任务成功数</th>
							<th>任务失败数</th>
							<th>日期</th>
						</tr>
						</thead>
						<tbody>
						<tr>
							<td>123</td>
							<td>100</td>
							<td>23</td>
							<td>2020-08</td>
						</tr>
						<tr>
							<td>123</td>
							<td>100</td>
							<td>23</td>
							<td>2020-07</td>
						</tr>
						<tr>
							<td>123</td>
							<td>100</td>
							<td>23</td>
							<td>2020-06</td>
						</tr>
						<tr>
							<td>123</td>
							<td>100</td>
							<td>23</td>
							<td>2020-05</td>
						</tr>
						<tr>
							<td>123</td>
							<td>100</td>
							<td>23</td>
							<td>2020-04</td>
						</tr>
						</tbody>
					</table>
				</div>
			</div>
			<div class="bottom_3 fl">
				<!--左上边框-->
				<div class="t_line_box">
					<i class="t_l_line"></i>
					<i class="l_t_line"></i>
				</div>
				<!--右上边框-->
				<div class="t_line_box">
					<i class="t_r_line"></i>
					<i class="r_t_line"></i>
				</div>
				<!--左下边框-->
				<div class="t_line_box">
					<i class="l_b_line"></i>
					<i class="b_l_line"></i>
				</div>
				<!--右下边框-->
				<div class="t_line_box">
					<i class="r_b_line"></i>
					<i class="b_r_line"></i>
				</div>
				<div class="main_title">
					<img src="static/dataView/img/t_7.png" alt="">
					产品任务统计(月)
				</div>
				<div class="main_table t_btn2">
					<table>
						<thead>
						<tr>
							<th>任务总数</th>
							<th>任务成功数</th>
							<th>任务失败数</th>
							<th>日期</th>
						</tr>
						</thead>
						<tbody>
						<tr>
							<td>123</td>
							<td>100</td>
							<td>23</td>
							<td>2020-08</td>
						</tr>
						<tr>
							<td>123</td>
							<td>100</td>
							<td>23</td>
							<td>2020-07</td>
						</tr>
						<tr>
							<td>123</td>
							<td>100</td>
							<td>23</td>
							<td>2020-06</td>
						</tr>
						<tr>
							<td>123</td>
							<td>100</td>
							<td>23</td>
							<td>2020-05</td>
						</tr>
						<tr>
							<td>123</td>
							<td>100</td>
							<td>23</td>
							<td>2020-04</td>
						</tr>
						</tbody>
					</table>
				</div>
			</div>
		</div>
		<div class="bottom_4 fr">
			<!--左上边框-->
			<div class="t_line_box">
				<i class="t_l_line"></i>
				<i class="l_t_line"></i>
			</div>
			<!--右上边框-->
			<div class="t_line_box">
				<i class="t_r_line"></i>
				<i class="r_t_line"></i>
			</div>
			<!--左下边框-->
			<div class="t_line_box">
				<i class="l_b_line"></i>
				<i class="b_l_line"></i>
			</div>
			<!--右下边框-->
			<div class="t_line_box">
				<i class="r_b_line"></i>
				<i class="b_r_line"></i>
			</div>
			<div class="main_title">
				<img src="static/dataView/img/t_7.png" alt="">
				QA任务统计
			</div>
			<div class="main_table t_btn3">
				<table>
					<thead>
					<tr>
						<th>任务类型</th>
						<th>任务总数</th>
						<th>任务成功数</th>
						<th>任务失败数</th>
						<th>日期</th>
					</tr>
					</thead>
					<tbody>
					<tr>
						<td>Q63</td>
						<td>123</td>
						<td>100</td>
						<td>23</td>
						<td>2020-08</td>
					</tr>
					<tr>
						<td>Q63</td>
						<td>123</td>
						<td>100</td>
						<td>23</td>
						<td>2020-07</td>
					</tr>
					<tr>
						<td>Q63</td>
						<td>123</td>
						<td>100</td>
						<td>23</td>
						<td>2020-06</td>
					</tr>
					<tr>
						<td>Q63</td>
						<td>123</td>
						<td>100</td>
						<td>23</td>
						<td>2020-04</td>
					</tr>
					<tr>
						<td>Q63</td>
						<td>123</td>
						<td>100</td>
						<td>23</td>
						<td>2020-04</td>
					</tr>
					</tbody>
				</table>
			</div>
		</div>
	</div>
	<!-- /.main-container -->
</div>
	<!-- basic scripts -->
	<!-- 页面底部js¨ -->
	<%@ include file="../index/foot.jsp"%>
	<!-- ace scripts -->
	<script src="static/ace/js/ace/ace.js"></script>

	<script src="static/dataView/js/jquery-2.2.1.min.js"></script>
	<script src="static/dataView/js/bootstrap.min.js"></script>
	<script src="static/dataView/js/common.js"></script>
	<script src="static/dataView/js/echarts.min.js"></script>
	<script src="static/dataView/js/dataTool.js"></script>
	<script src="static/dataView/js/index.js"></script>
	<script src="static/dataView/js/china.js"></script>
	<script src="static/dataView/js/hunan.js"></script>
</body>
</html>