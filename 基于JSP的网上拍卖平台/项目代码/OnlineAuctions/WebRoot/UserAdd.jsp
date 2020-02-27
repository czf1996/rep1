<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'UserAdd.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<link href="css/bootstrap.min.css" rel="stylesheet">
    <!-- jQuery (Bootstrap 的所有 JavaScript 插件都依赖 jQuery，所以必须放在前边) -->
    <script src="js/jquery-3.2.1.min.js"></script>
    <!-- 加载 Bootstrap 的所有 JavaScript 插件。你也可以根据需要只加载单个插件。 -->
    <script src="js/bootstrap.min.js"></script>
  </head>
  
  <body>
    <h3  style="margin-top: 50px"><center>用户添加</center> </h3>
		 <form class="form-horizontal"  style="margin-top: 50px" action="${pageContext.request.contextPath}/useradd" method="post">
		 <div class="form-group">
			<label for="username" class="col-sm-5 control-label">用户名：</label>
			<div class="col-sm-3">
				<input type="text" class="form-control" id="username" name="username" 
					placeholder="用户名">
			</div>
		</div>
		<div class="form-group" >
			<label for="userpassword" class="col-sm-5 control-label">密码：</label>
			<div class="col-sm-3">
				<input type="text" class="form-control" id="userpassword" name="userpassword" 
					placeholder="密码">
			</div>
			
		</div>
		<div class="form-group" >
			<label for="userphone" class="col-sm-5 control-label">手机号码：</label>
			<div class="col-sm-3">
				<input type="text" class="form-control" id="userphone" name="userphone" 
					placeholder="手机号码">
			</div>
			
		</div>
		<div class="form-group" >
			<label for="useraddress" class="col-sm-5 control-label">地址：</label>
			<div class="col-sm-3">
				<input type="text" class="form-control" id="useraddress" name="useraddress" 
					placeholder="地址">
			</div>
		</div>
		<div class="form-group" >
			<label for="userfunds" class="col-sm-5 control-label">资金：</label>
			<div class="col-sm-3">
				<input type="text" class="form-control" id="userfunds" name="userfunds" 
					placeholder="资金">
			</div>
		</div>
		<div class="form-group">
			<div class="col-sm-offset-6 col-sm-4">
				<button type="submit" class="btn btn-default">添加</button>
			</div>
		</div>
	</form>
  </body>
</html>
