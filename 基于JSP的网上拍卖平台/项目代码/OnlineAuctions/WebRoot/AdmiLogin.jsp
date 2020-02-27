<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'AdmiLogin.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<link rel="stylesheet" href="css/index.css" />
  </head>
  
  <body>

<div class="top">洋觅网&nbsp;·&nbsp;应有尽有</div>

<div class="content">
	<form action="${pageContext.request.contextPath}/admilogin" method="post">
	<div class="login">
		<div class="title">洋觅网&nbsp;·&nbsp;管理员登录</div>
		<div class="line">
			<img class="smallImg" src="images/icon-4.png" />
			<input placeholder="请输入账号" type="text"  name="aname"/>
		</div>
		<div class="line">
			<img class="smallImg" src="images/icon-5.png" />
			<input placeholder="请输入密码" type="password" name="apassword" />
		</div>
		<button type="submit" class="logBut">登&nbsp;&nbsp;录</button>
		</form>
	</div>
</div>

</body>
</html>