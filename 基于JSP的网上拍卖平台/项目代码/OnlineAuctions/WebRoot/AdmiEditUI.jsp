<%@page import="com.czf.domain.Admi"%>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'AdmiEditUI.jsp' starting page</title>
    
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
   <h3 style="margin-top: 50px"><center>管理员的修改</center> </h3>
   		<%
   			Admi admi =(Admi) request.getAttribute("admi");
   		 %>
		 <form class="form-horizontal"  style="margin-top: 50px" action="${pageContext.request.contextPath}/admiedit02" method="post" >
		
		 
		 <div class="form-group">
			<label for="aname" class="col-sm-5 control-label">管理员名：</label>
			<div class="col-sm-3">
				<input  type="hidden" name="aid" value="<%=admi.getAid()%>"/>
				<input type="text" class="form-control" name="aname" value="<%=admi.getAname() %>">
			</div>
		</div>
		<div class="form-group" >
			<label for="aphone" class="col-sm-5 control-label">手机号:</label>
			<div class="col-sm-3">
				<input type="text" class="form-control"  name="aphone" value="<%=admi.getPhone() %>"  >
			</div>
		</div>
		
		<div class="form-group" >
			<label for="apassword" class="col-sm-5 control-label">用户密码:</label>
			<div class="col-sm-3">
				<input type="password" class="form-control" name="apassword" value="<%=admi.getApassword() %>" />
			</div>
		</div>
		<div class="form-group" >
			<label for="address" class="col-sm-5 control-label">用户地址：</label>
			<div class="col-sm-3" >
				<input type="text" name="address" class="form-control"  value="<%=admi.getAddress() %>" />
			</div>
		</div>
		
		<div class="form-group" >
			<label for="afunds" class="col-sm-5 control-label">用户资金:</label>
			<div class="col-sm-3">
				<input type="text" name="afunds"class="form-control" value="<%=admi.getFunds()%>" />
			</div>
		</div>
		
		 <div class="form-group" >
			<label for="aphone" class="col-sm-5 control-label" >管理员权限：</label>
			<select name="flag" style="width: 300px;height: 45px;padding-left: 15px;margin-left: 18px">
						<%
							if(admi.isFlag()==true){%>
							<option value="<%=admi.isFlag() %>" selected="selected">超级管理员</option>
							<option value="<%=!(admi.isFlag()) %>">普通管理员</option>
							<%}else{%>
							<option value="<%=admi.isFlag() %>" selected="selected">普通管理员</option>
							<option value="<%=!(admi.isFlag()) %>">超级管理员</option>
							<%}
						 %>
				 </select>
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