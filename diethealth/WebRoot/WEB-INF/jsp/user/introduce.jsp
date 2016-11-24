<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
%>
<html>
<head>

<title>使用说明</title>
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta content="width=device-width" name="viewport" />
<link rel="shortcut icon" href="<%=path%>/favicon.ico" />
<link rel="stylesheet" type="text/css"
	href="<%=path%>/jquerymobile/jquery.mobile-1.4.5.min.css">
</head>

<body>
	<div data-role="header">
		<!--  <a href="#" data-role="button">登录</a> -->
		<h1>使用说明</h1>
	</div>
	<div data-role="content">
		<img alt="" src="<%=path%>/introduce.files/image001.png"
			style="width: 100%" />
		<p align="center">图1个人主页</p>
		<p>进入“加餐偏好”页面如图2，请先选择习惯进餐方式，默认三餐。如有加餐需要，请选择加餐种类。例如：习惯每日五餐，加餐种类为下午加餐及晚上加餐。点击“确认”，系统为您计算目标能量，为您进餐的食量有一个科学合理的建议。</p>
		<img alt="" src="<%=path%>/introduce.files/image002.png"
			style="width: 80%;" />
		<p align="center">图2“加餐偏好”页面</p>
		<p>主页的“个人偏好”选项，选择习惯进餐数，例如：习惯每日五餐，加餐种类为下午加餐及晚上加餐。在“饮食录入”界面会出现日常进餐种类，勾选录入食物。图3，为餐饮类型页面，选择即将录入的餐饮类型，然后录入食物。</p>
		<img alt="" src="<%=path%>/introduce.files/image004.png"
		style="width: 100%;" >
		<p align="center">图3，选择餐饮类型</p>
		<p>饮食录入界面如图4所示为饮食录入：</p>
		<img alt="" src="<%=path%>/introduce.files/image006.png"
		style="width: 100%;" >
		<p align="center">图4，饮食录入界面</p>
	</div>
</body>
<script src="<%=path%>/js/jquery-2.2.2.min.js"></script>
<script src="<%=path%>/jquerymobile/jquery.mobile-1.4.5.min.js"></script>

</html>
