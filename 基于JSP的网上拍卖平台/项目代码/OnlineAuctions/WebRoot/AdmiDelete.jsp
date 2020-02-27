<%@page import="com.czf.domain.Admi"%>
<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'AdmiDelete.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<link rel="stylesheet" type="text/css" href="css/selectFilter.css" />
	<style type="text/css">
body {
	padding: 30px;
}

.item {
	width: 240px;
	height: 32px;
	margin: 100px auto;
}

.submitButton {
	display: block;
	margin-top: 20px;
	height: 30px;
	width: 60px;
	line-height: 30px;
	text-align: center;
}
</style>
  </head>
  
  <body>
	<center>
		<h3 style="margin-bottom: 30px">管理员的删除</h3>
		<form action="admidelete" method="post">
			<table>
				<tr>
					<td><h3 style="margin-right: 10px">管理员姓名:</h3></td>
					<td>

						<div class="filter-box">
							<div class="filter-text">
								<input class="filter-title" type="text" readonly placeholder="pleace select" /> <i
									class="icon icon-filter-arrow"></i>
							</div>
							<select name="aid">
								<%
  							List<Admi> admis = (List<Admi>)session.getAttribute("admis");
  							for( Admi a: admis){%>
								<option value="<%=a.getAid() %>"><%=a.getAname() %></option>
								<%}
  							 %>
							</select>
						</div>
					</td>
				</tr>
				
				<tr >
					<td colspan="2" align="center" >
					<input type="submit"value="确定删除" class="submitButton"  />
					</td>
				</tr>
			</table>

			<script type="text/javascript" src="js/jquery.min.js"></script>
			<script type="text/javascript" src="js/selectFilter.js"></script>
			<script type="text/javascript">
			//本小插件支持移动端哦
			
			//这里是初始化
			$('.filter-box').selectFilter({
				callBack : function (val){
					//返回选择的值
					console.log(val+'-是返回的值')
				}
			});
		</script>
		</form>
	</center>
</body>
</html>
