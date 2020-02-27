<%@page import="com.czf.domain.Product"%>
<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'ProductEditUI.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link href="css/bootstrap.min.css" rel="stylesheet">
    <!-- jQuery (Bootstrap 的所有 JavaScript 插件都依赖 jQuery，所以必须放在前边) -->
    <script src="js/jquery-3.2.1.min.js"></script>
    <!-- 加载 Bootstrap 的所有 JavaScript 插件。你也可以根据需要只加载单个插件。 -->
    <script src="js/bootstrap.min.js"></script>
  </head>
  
  <body>
  
  	<% 
  		Product p =(Product) request.getAttribute("product");
  	 %>
    <h3  style="margin-top: 50px"><center>拍卖品修改</center> </h3>
		 <form class="form-horizontal"  style="margin-top: 50px" action="${pageContext.request.contextPath}/productedit02" method="post" enctype="multipart/form-data">
		 <div class="form-group">
			<label for="username" class="col-sm-5 control-label">拍卖品名称：</label>
			<div class="col-sm-3">
			 	<input  type="hidden" name="pid" value="<%=p.getPid()%>"/>
				<input type="text" class="form-control" id="username" name="pname"  value="<%=p.getPname()%>">
			</div>
		</div>
		<div class="form-group" >
			<label for="userpassword" class="col-sm-5 control-label">拍卖品种类编号：</label>
			<div class="col-sm-3">
				<input type="text" class="form-control" id="userpassword" name="kid" value="<%=p.getKid()%>" >
			</div>
			
		</div>
		<div class="form-group" >
			<label for="userphone" class="col-sm-5 control-label">拍卖品描述：</label>
			<div class="col-sm-3">
				<input type="text" class="form-control" id="userphone" name="pdesc" value="<%=p.getPdesc()%>" >
			</div>
			
		</div>
		<div class="form-group" >
			<label for="useraddress" class="col-sm-5 control-label">底价:</label>
			<div class="col-sm-3">
				<input type="text" class="form-control" id="useraddress" name="firstprice"  value="<%=p.getFirstprice()%>">
			</div>
		</div>
		<div class="form-group" >
			<label for="useraddress" class="col-sm-5 control-label">最终价:</label>
			<div class="col-sm-3">
				<input type="text" class="form-control" id="useraddress" name="lastprice" value="<%=p.getLastprice()%>" >
			</div>
		</div>
		<div class="form-group" >
			<label for="useraddress" class="col-sm-5 control-label">拍卖时间:</label>
			<div class="col-sm-3">
				<input type="text" class="form-control" id="useraddress" name="time" value="<%=p.getHours()%>" >
			</div>
		</div>
		<div class="form-group" >
			<label for="userfunds" class="col-sm-5 control-label">上传图片：</label>
			<div class="col-sm-3">
				<input type="file" class="form-control" id="userfunds" name="picture" >
			</div>
			<div class="col-sm-4">
				<img  src="<%=p.getPicture()%>" width="80px" height="120px">
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
