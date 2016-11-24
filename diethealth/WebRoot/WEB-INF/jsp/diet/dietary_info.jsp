<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s"%>
<%
	String path = request.getContextPath();
%>
<html>
<head>

<title>饮食记录</title>
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta content="width=device-width" name="viewport" />
<link rel="shortcut icon" href="<%=path%>/favicon.ico" />
<link rel="stylesheet" type="text/css"
	href="<%=path%>/jquerymobile/green.min.css">
<link rel="stylesheet" type="text/css"
	href="<%=path%>/jquerymobile/green.icons.min.css">
<link rel="stylesheet"
	href="<%=path%>/jquerymobile/jquery.mobile.structure-1.4.5.min.css" />
<!-- <link rel="stylesheet" href="http://code.jquery.com/mobile/1.4.5/jquery.mobile.structure-1.4.5.min.css" /> -->
</head>

<body>
	<div data-role="page" id="pageone">
		<div data-role="header">
			<a href="" data-role="button"
				onclick="window.location.href='../user/doctor_index'">主页</a>
			<h1>饮食记录</h1>
		</div>

		<div>
			<a href="diet_info_d?pId=${pId }&date=${date}"><h3 style="text-align: center;">饮食记录</h3></a>
			<div class="ui-grid-c">
				<div class="ui-block-a"
					style="border: 1px solid black; border-style: ridge ridge ridge ridge; text-align: center; font-size: 10px;">
					能量</div>
				<div class="ui-block-b"
					style="border: 1px solid black; border-style: ridge ridge ridge none; text-align: center; font-size: 10px;">
					蛋白质</div>
				<div class="ui-block-c"
					style="border: 1px solid black; border-style: ridge ridge ridge none; text-align: center; font-size: 10px;">
					脂肪</div>
				<div class="ui-block-d"
					style="border: 1px solid black; border-style: ridge ridge ridge none; text-align: center; font-size: 10px;">
					碳水化合物</div>
			</div>
			<div class="ui-grid-c">
				<div class="ui-block-a"
					style="border: 1px solid black; border-style: none ridge ridge ridge; text-align: center; font-size: 10px;">
					${dietEnergy.energy}</div>
				<div class="ui-block-b"
					style="border: 1px solid black; border-style: none ridge ridge none; text-align: center; font-size: 10px;">
					${dietEnergy.protein}</div>
				<div class="ui-block-c"
					style="border: 1px solid black; border-style: none ridge ridge none; text-align: center; font-size: 10px;">
					${dietEnergy.fat}</div>
				<div class="ui-block-d"
					style="border: 1px solid black; border-style: none ridge ridge none; text-align: center; font-size: 10px;">
					${dietEnergy.carbohydrate}</div>
			</div>
			<h3 style="text-align: center;">血糖记录</h3>
			<div class="ui-grid-d" id="bggrid">
				<div class="ui-block-a"
					style="height:35px;border: 1px solid black; border-style: ridge ridge ridge ridge; text-align: center; font-size: 10px;">
					早餐
					<div class="ui-grid-a">
						<div class="ui-block-a"
							style="border: 1px solid black; border-style: ridge ridge none none; text-align: center; font-size: 10px;">前</div>
						<div class="ui-block-b"
							style="border: 1px solid black; border-style: ridge none none none; text-align: center; font-size: 10px;">后</div>
					</div>
				</div>
				<div class="ui-block-b"
					style="height:35px;border: 1px solid black; border-style: ridge ridge ridge none; text-align: center; font-size: 10px;">
					午餐
					<div class="ui-grid-a">
						<div class="ui-block-a"
							style="border: 1px solid black; border-style: ridge ridge none none; text-align: center; font-size: 10px;">前</div>
						<div class="ui-block-b"
							style="border: 1px solid black; border-style: ridge none none none; text-align: center; font-size: 10px;">后</div>
					</div>
				</div>
				<div class="ui-block-c"
					style="height:35px;border: 1px solid black; border-style: ridge ridge ridge none; text-align: center; font-size: 10px;">
					晚餐
					<div class="ui-grid-a">
						<div class="ui-block-a"
							style="border: 1px solid black; border-style: ridge ridge none none; text-align: center; font-size: 10px;">前</div>
						<div class="ui-block-b"
							style="border: 1px solid black; border-style: ridge none none none; text-align: center; font-size: 10px;">后</div>
					</div>
				</div>
				<div class="ui-block-d"
					style="height:35px;border: 1px solid black; border-style: ridge ridge ridge none; text-align: center; font-size: 10px;">
					睡前
					<div class="ui-grid-a">
						<div class="ui-block-a"
							style="border: 1px solid black; border-style: none none none none; text-align: center; font-size: 10px;">&nbsp;</div>
						<div class="ui-block-b"
							style="border: 1px solid black; border-style: none none none none; text-align: center; font-size: 10px;">&nbsp;</div>
					</div>
				</div>
				<div class="ui-block-e"
					style="height:35px;border: 1px solid black; border-style: ridge ridge ridge none; text-align: center; font-size: 10px;">
					糖化血糖蛋白
					
					</div>
				<div class="ui-block-a"
					style="border: 1px solid black; border-style: none ridge ridge ridge; text-align: center; font-size: 10px;">
					<div class="ui-grid-a">
						<div class="ui-block-a"
							style="border: 1px solid black; border-style: none ridge none none; text-align: center; font-size: 10px;"
							name="before">${bg.bloodGlucoseBeforeBreakfast }</div>
						<div class="ui-block-b"
							style="border: 1px solid black; border-style: none none none none; text-align: center; font-size: 10px;"
							name="after">${bg.bloodGlucoseAfterBreakfast }</div>
					</div>
				</div>
				<div class="ui-block-b"
					style="border: 1px solid black; border-style: none ridge ridge none; text-align: center; font-size: 10px;">
					<div class="ui-grid-a">
						<div class="ui-block-a"
							style="border: 1px solid black; border-style: none ridge none none; text-align: center; font-size: 10px;"
							name="before">${bg.bloodGlucoseBeforeLunch }</div>
						<div class="ui-block-b"
							style="border: 1px solid black; border-style: none none none none; text-align: center; font-size: 10px;"
							name="after">${bg.bloodGlucoseAfterLunch }</div>
					</div>
				</div>
				<div class="ui-block-c"
					style="border: 1px solid black; border-style: none ridge ridge none; text-align: center; font-size: 10px;">
					<div class="ui-grid-a">
						<div class="ui-block-a"
							style="border: 1px solid black; border-style: none ridge none none; text-align: center; font-size: 10px;"
							name="before">${bg.bloodGlucoseBeforeDinner }</div>
						<div class="ui-block-b"
							style="border: 1px solid black; border-style: none none none none; text-align: center; font-size: 10px;"
							name="after">${bg.bloodGlucoseAfterDinner }</div>
					</div>
				</div>
				<div class="ui-block-d"
					style="border: 1px solid black; border-style: none ridge ridge none; text-align: center; font-size: 10px;"
					name="before">${bg.bloodGlucoseBeforeSleep }</div>
				<div class="ui-block-e"
					style="border: 1px solid black; border-style: none ridge ridge none; text-align: center; font-size: 10px;">
					${bg.HbAlc }</div>
			</div>
			<h3 style="text-align: center;">运动量记录</h3>
			<div class="ui-grid-c">
				<div class="ui-block-a"
					style="border: 1px solid black; border-style: ridge ridge ridge ridge; text-align: center; font-size: 10px;">
					早餐
					<div class="ui-grid-a">
						<div class="ui-block-a"
							style="border: 1px solid black; border-style: ridge ridge none none; text-align: center; font-size: 10px;">前</div>
						<div class="ui-block-b"
							style="border: 1px solid black; border-style: ridge none none none; text-align: center; font-size: 10px;">后</div>
					</div>
				</div>

				<div class="ui-block-b"
					style="border: 1px solid black; border-style: ridge ridge ridge none; text-align: center; font-size: 10px;">
					午餐
					<div class="ui-grid-a">
						<div class="ui-block-a"
							style="border: 1px solid black; border-style: ridge ridge none none; text-align: center; font-size: 10px;">前</div>
						<div class="ui-block-b"
							style="border: 1px solid black; border-style: ridge none none none; text-align: center; font-size: 10px;">后</div>
					</div>
				</div>
				<div class="ui-block-c"
					style="border: 1px solid black; border-style: ridge ridge ridge none; text-align: center; font-size: 10px;">
					晚餐
					<div class="ui-grid-a">
						<div class="ui-block-a"
							style="border: 1px solid black; border-style: ridge ridge none none; text-align: center; font-size: 10px;">前</div>
						<div class="ui-block-b"
							style="border: 1px solid black; border-style: ridge none none none; text-align: center; font-size: 10px;">后</div>
					</div>
				</div>
				<div class="ui-block-d"
					style="border: 1px solid black; border-style: ridge ridge ridge none; text-align: center; font-size: 10px;">
					睡前
					<div class="ui-grid-a">
						<div class="ui-block-a"
							style="border: 1px solid black; border-style: none none none none; text-align: center; font-size: 10px;">&nbsp;</div>
						<div class="ui-block-b"
							style="border: 1px solid black; border-style: none none none none; text-align: center; font-size: 10px;">&nbsp;</div>
					</div>
				</div>
				
				<div class="ui-block-a"
					style="border: 1px solid black; border-style: none ridge none ridge; text-align: center; font-size: 10px;">
					<div class="ui-grid-a">
						<div class="ui-block-a"
							style="border: 1px solid black; border-style: none ridge none none; text-align: center; font-size: 10px;"
							name="before">${sportInfo.beforebreakfasttype }</div>
						<div class="ui-block-b"
							style="border: 1px solid black; border-style: none none none none; text-align: center; font-size: 10px;"
							name="after">${sportInfo.afterbreakfasttype }</div>
					</div>
				</div>
				<div class="ui-block-b"
					style="border: 1px solid black; border-style: none ridge none none; text-align: center; font-size: 10px;">
					<div class="ui-grid-a">
						<div class="ui-block-a"
							style="border: 1px solid black; border-style: none ridge none none; text-align: center; font-size: 10px;"
							name="before">${sportInfo.beforelaunchtype }</div>
						<div class="ui-block-b"
							style="border: 1px solid black; border-style: none none none none; text-align: center; font-size: 10px;"
							name="after">${sportInfo.afterlaunchtype }</div>
					</div>
				</div>
				<div class="ui-block-c"
					style="border: 1px solid black; border-style: none ridge none none; text-align: center; font-size: 10px;">
					<div class="ui-grid-a">
						<div class="ui-block-a"
							style="border: 1px solid black; border-style: none ridge none none; text-align: center; font-size: 10px;"
							name="before">${sportInfo.beforedinnertype }</div>
						<div class="ui-block-b"
							style="border: 1px solid black; border-style: none none none none; text-align: center; font-size: 10px;"
							name="after">${sportInfo.afterdinnertype }</div>
					</div>
				</div>
				<div class="ui-block-d"
					style="border: 1px solid black; border-style: none ridge none none; text-align: center; font-size: 10px;"
					name="before">${sportInfo.beforesleeptype }</div>
					
				<div class="ui-block-a"
					style="border: 1px solid black; border-style: none ridge ridge ridge; text-align: center; font-size: 10px;">
					<div class="ui-grid-a">
						<div class="ui-block-a"
							style="border: 1px solid black; border-style: none ridge none none; text-align: center; font-size: 10px;"
							name="before">${sportInfo.beforebreakfasttime }分钟</div>
						<div class="ui-block-b"
							style="border: 1px solid black; border-style: none none none none; text-align: center; font-size: 10px;"
							name="after">${sportInfo.afterbreakfasttime }分钟</div>
					</div>
				</div>
				<div class="ui-block-b"
					style="border: 1px solid black; border-style: none ridge ridge none; text-align: center; font-size: 10px;">
					<div class="ui-grid-a">
						<div class="ui-block-a"
							style="border: 1px solid black; border-style: none ridge none none; text-align: center; font-size: 10px;"
							name="before">${sportInfo.beforelaunchtime }分钟</div>
						<div class="ui-block-b"
							style="border: 1px solid black; border-style: none none none none; text-align: center; font-size: 10px;"
							name="after">${sportInfo.afterlaunchtime }分钟</div>
					</div>
				</div>
				<div class="ui-block-c"
					style="border: 1px solid black; border-style: none ridge ridge none; text-align: center; font-size: 10px;">
					<div class="ui-grid-a">
						<div class="ui-block-a"
							style="border: 1px solid black; border-style: none ridge none none; text-align: center; font-size: 10px;"
							name="before">${sportInfo.beforedinnertime }分钟</div>
						<div class="ui-block-b"
							style="border: 1px solid black; border-style: none none none none; text-align: center; font-size: 10px;"
							name="after">${sportInfo.afterdinnertime }分钟</div>
					</div>
				</div>
				<div class="ui-block-d"
					style="border: 1px solid black; border-style: none ridge ridge none; text-align: center; font-size: 10px;"
					name="before">${sportInfo.beforesleeptime }分钟</div>
			</div>

			
			<div data-role="fieldcontain">
				<input type="hidden" value="${pId }" id="pId"> <input
					type="hidden" value="${date}" id="bgdate">
			</div>
			<div data-role="fieldcontain">
				<p>医生建议：</p>
				<textarea id="content">${advice.content }</textarea>
			</div>
			<div data-role="fieldcontain">
				<input type="button" value="提交" onclick="onSubmit();">
			</div>
		</div>

	</div>
</body>
<script src="<%=path%>/js/jquery-2.2.2.min.js"></script>
<script src="<%=path%>/jquerymobile/jquery.mobile-1.4.5.min.js"></script>
<script>
	function onSubmit() {
		var content = $('#content').val();
		var pId = $('#pId').val();
		var date = $('#bgdate').val();
		$.post("saveAdvice", {
			content : content,
			pId : pId,
			date : date
		}, function(text) {
			if (text == "1") {
				alert("保存成功！");
			} else {
				alert("保存失败！")
			}
		});
	}
</script>
</html>
