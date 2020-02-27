<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'UserRegister.jsp' starting page</title>
    
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
    <script>
			function checkname(){
			//alert("检测username");
			var obj=document.getElementById('username');    //获取元素
			var username=obj.value;
			var error=document.getElementById("username_error");
			if(username==''){
				error.innerHTML="<font color='red'>用户名不能为空<font>";
			}else{
				error.innerHTML="";
				
			}
		}
			
			function checkpassword(){
			var obj=document.getElementById('userpassword');    //获取元素
			var userpassword=obj.value;
			var error=document.getElementById("userpassword_error");
			if(userpassword==''){
				error.innerHTML="<font color='red'>密码不能为空<font>";
			}else{
				error.innerHTML="";
				
			}
		}
			
			function checkphone(){
			//alert("检测username");
			var obj=document.getElementById('userphone');    //获取元素
			var phone=obj.value;
			var error=document.getElementById("phone_error");
			if(phone==''){
				error.innerHTML="<font color='red'>手机号不能为空<font>";
			}else{
				error.innerHTML="";
				
			}
		}
			
			function checkaddress(){
			//alert("检测username");
			var obj=document.getElementById('useraddress');    //获取元素
			var address=obj.value;
			var error=document.getElementById("address_error");
			if(address==''){
				error.innerHTML="<font color='red'>地址不能为空<font>";
			}else{
				error.innerHTML="";
				
			}
		}
		
		
		
		</script>
	</head>
	<body background="images/register02.jpg">
		<table>
  		<tr>
  		<td ><img src="images/log.png" style="margin-top: 10px;margin-left: 50px"></td>
  		<td><h4 style="margin-top: 25px;margin-left: 800px">已有账号？<a href="Userlogin.jsp">马上登录</a></h4></td>
  		</tr>
  	</table>
		
		<h3 style="margin-left: 875px;margin-top: 150px;">用户注册</h3>
		 <form class="form-horizontal"  style="margin-top: 50px" action="${pageContext.request.contextPath}/beforeUserRegister" method="post">
		 <div class="form-group">
			<label for="username" class="col-sm-6 control-label">用户名：</label>
			<div class="col-sm-3">
				<input type="text" class="form-control" id="username" name="username" onblur="checkname()"
					placeholder="用户名">
			</div>
			<div class="col-sm-1"  >
				<span style="height: 34px; line-height: 34px;" id="username_error">请输入用户名</span>
			</div>
		</div>
		<div class="form-group" >
			<label for="userpassword" class="col-sm-6 control-label">密码：</label>
			<div class="col-sm-3">
				<input type="password" class="form-control" id="userpassword" name="userpassword" onblur="checkpassword()"
					placeholder="密码">
			</div>
			<div class="col-sm-1"  >
				<span style="height: 34px; line-height: 34px;" id="userpassword_error">请输入密码</span>
			</div>
		</div>
		<div class="form-group" >
			<label for="userphone" class="col-sm-6 control-label">手机号码：</label>
			<div class="col-sm-3">
				<input type="text" class="form-control" id="userphone" name="userphone" onblur="checkphone()"
					placeholder="手机号码">
			</div>
			<div class="col-sm-2"  >
				<span style="height: 34px; line-height: 34px;" id="phone_error">请输入11位的手机号码</span>
			</div>
		</div>
		<div class="form-group" >
			<label for="useraddress" class="col-sm-6 control-label">地址：</label>
			<div class="col-sm-3">
				<input type="text" class="form-control" id="useraddress" name="useraddress" onblur="checkaddress()"
					placeholder="地址">
			</div>
			<div class="col-sm-1"  >
				<span style="height: 34px; line-height: 34px;" id="address_error">请输入地址</span>
			</div>
		</div>
		<div class="form-group">
			<div class="col-sm-offset-7 col-sm-3">
				<button type="submit" class="btn btn-default">注册</button>
			</div>
		</div>
	</form>
	</body>
</html>
