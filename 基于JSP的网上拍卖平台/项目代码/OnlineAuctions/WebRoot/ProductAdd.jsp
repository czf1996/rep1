<%@page import="com.czf.domain.Kind"%>
<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>My JSP 'ProoductAdd.jsp' starting page</title>

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
   <h3 style="margin-top: 50px"><center>拍卖品添加</center> </h3>
		 <form class="form-horizontal"  style="margin-top: 50px" action="${pageContext.request.contextPath}/productadd" method="post" enctype="multipart/form-data">
		 
		 <div class="form-group" >
			<label for="aphone" class="col-sm-5 control-label" >拍卖品类别：</label>
				<select name="kid" style="width: 300px;height: 45px;padding-left: 15px;margin-left: 18px" >
			<%
				List<Kind> kinds =(List<Kind>) request.getAttribute("kinds");
				for(Kind k:kinds){%>
				<option type="text" class="form-control" value="<%=k.getKid() %>" ><%=k.getKname() %> </option>
				<%}
			 %>
			 </select>
				 </div>
			</div>
		 
		 <div class="form-group">
			<label for="pname" class="col-sm-5 control-label">拍卖品名称：</label>
			<div class="col-sm-3">
				<input type="text" class="form-control" id="pname" name="pname" >
			</div>
		</div>
		<div class="form-group" >
			<label for="apassword" class="col-sm-5 control-label">拍卖品描述：</label>
			<div class="col-sm-3">
				<input type="text" class="form-control" id="apassword" name="pdesc" >
			</div>
			
		</div>
		
		<div class="form-group" >
			<label for="address" class="col-sm-5 control-label">底价：</label>
			<div class="col-sm-3">
				<input type="text" class="form-control" id="address" name="firstprice">
			</div>
		</div>
		<div class="form-group" >
			<label for="afunds" class="col-sm-5 control-label">上传图片：</label>
			<div class="col-sm-3" >
				<input type="file" class="form-control"  name="picture" >
			</div>
		</div>
	
		<div class="form-group" >
			<label for="time" class="col-sm-5 control-label">竞拍时间：</label>
			<div class="col-sm-3">
				<input type="text" class="form-control" id="time" name="time" >
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
