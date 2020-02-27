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
    
    <title>My JSP 'Admi_top.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  <head>
		<meta charset="UTF-8">
		<title>top</title>
		<style>
			img{
				display: block;
				float: left;
			}
			h2{
				clear: all;
				padding-top: 50px;
				padding-right: 200px;
			}
			img{
				margin-top: 30px;
				margin-left: 10px;
			}
		</style>
	</head>
	<body bgcolor="4793E3">
		<div>
		<img src="images/log.png"/>
	 <%
			Admi admi = (Admi)session.getAttribute("admi");
			if(admi!=null){%>
			<center><h2>欢迎<span style="color: blue;"><%=admi.getAname() %>
			<%
				if(admi.isFlag()==true){%>
					超级管理员
				<%}else{%>
					管理员
				<%}
			 %>
			
			</span>来到洋觅网后台界面</h2></center>
			<% }else{%>
			<center><h2>欢迎来到洋觅网后台界面</h2></center>
			
			<%}
		%> 
		
		</div>
	</body>
</html>