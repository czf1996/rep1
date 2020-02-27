<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'Admi.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<style type="text/css">
	frame, frameset {
	scrolling:no;
	noresize:noresize;
}
	</style>
</head>

	<frameset rows="20%,*"  >
		<frame src="Admi_top.jsp" name="top" />
		<frameset cols="15%,*">
			<frame src="Admi_left02.jsp" name="left"/>
			<frame src="Admi_right.jsp" name="right"/>
		</frameset>
	</frameset>
</html>