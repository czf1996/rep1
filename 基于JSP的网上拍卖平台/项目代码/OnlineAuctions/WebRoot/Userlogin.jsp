<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>用户登录界面</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	 <!-- Bootstrap -->
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <!-- jQuery (Bootstrap 的所有 JavaScript 插件都依赖 jQuery，所以必须放在前边) -->
    <script src="js/jquery-3.2.1.min.js"></script>
    <!-- 加载 Bootstrap 的所有 JavaScript 插件。你也可以根据需要只加载单个插件。 -->
    <script src="js/bootstrap.min.js"></script>
  </head>
  <body background="images/login02.jpg">
  	<table>
  		<tr>
  		<td ><img src="images/log.png" style="margin-top: 10px;margin-left: 50px"></td>
  		<td><h4 style="margin-top: 25px;margin-left: 800px">还没有账号？<a href="UserRegister.jsp">点击注册</a></h4></td>
  		</tr>
  	</table>
  	<h3 style="margin-top: 150px;margin-left: 1150px">用户登录</h3>
	<form class="form-horizontal"  style="margin-top: 50px" action="${pageContext.request.contextPath}/beforeuserlogin" method="post">
		<div class="form-group">
			<label for="username" class="col-sm-8 control-label">用户名：</label>
			<div class="col-sm-3">
				<input type="text" class="form-control" id="username" name="username"
					placeholder="用户名">
			</div>
		</div>
		<div class="form-group" >
			<label for="userpassword" class="col-sm-8 control-label">密码：</label>
			<div class="col-sm-3">
				<input type="password" class="form-control" id="userpassword" name="userpassword"
					placeholder="密码">
			</div>
		</div>
		
		<div class="form-group">
			<div class="col-sm-offset-9 col-sm-3">
				<button type="submit" class="btn btn-default">登录</button>
			</div>
		</div>
	</form>
	
</body>
</html>
