<%@page import="com.czf.domain.*"%>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'UserEditUI.jsp' starting page</title>
    
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
		<%
			//获取绑定数据
			Kind k = (Kind) request.getAttribute("kind");
		%>
		 <h3 style="margin-top: 50px"><center>拍卖品种类的修改</center> </h3>
		 <form class="form-horizontal"  style="margin-top: 50px" action="${pageContext.request.contextPath}/kindedit02" method="post" >
		 <div class="form-group">
			<label for="kname" class="col-sm-5 control-label">拍卖品种类名称:</label>
			<div class="col-sm-3">
				<input  type="hidden" name="kid" value="<%=k.getKid()%>"/>
				<input type="text" class="form-control" id="kname" name="kname" value="<%=k.getKname() %>">
			</div>
		</div>
		
		<div class="form-group">
			<div class="col-sm-offset-6 col-sm-4">
				<button type="submit" class="btn btn-default">修改</button>
			</div>
		</div>
	</form>
		
		
		
	</body>
	
	
</html>
