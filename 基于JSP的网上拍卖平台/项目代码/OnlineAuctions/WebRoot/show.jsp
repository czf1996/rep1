<%@page import="com.czf.domain.*"%>
<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'show.jsp' starting page</title>
    
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
    		<style type="text/css">
#topleft {
	float: left;
}
html{
				width: 100%;
				overflow-x: hidden;
			}
#topright {
	float: right;
	padding-top: 35px;
}

#shuipingtop {
	clear: both;
}

#daohang {
	list-style-type: none;
}

#daohang li {
	float: left;
	margin-left: 1px;
	font-size: 20px;
}

a {
	text-decoration: none;
	display: inline-block;
	margin-right: 50px;
	/* margin-bottom: 20px; */
	color: black;
}

a:hover {
	color: red;
}
/*主体  */
.main-left {
	clear: both;
	width: 350px;
	height: 350px;
	/* border: 1px solid red; */
	float: left;
	margin-left: 150px;
}

.main-right {
	width: 400px;
	height: 350px;
	/* border: 1px solid red; */
	float: left;
	margin-left: 100px;
}
/* 倒计时 */
.ys1 {
	color: #009AC1;
	font-weight: bold;
}

.ys2 {
	color: #2FAB11;
	font-weight: bold;
}

.ys3 {
	color: #C16000;
	font-weight: bold;
}
</style>
  </head>
  
  <body>
    <img src="images/top01.png" width="1550px"/>
    <div class="container">
		<div id="top">
			<div id="topleft">
				<img src="images/log.png" />
			</div>
			<div id="topright" >
				<%
					User user = (User)session.getAttribute("user");
					if(user!=null){
						%>
						<a>亲！<%=user.getUname() %></a>
						<a href="${pageContext.request.contextPath}/beforeuserout">退出</a>
						<%
					}else{%>
						<a href="${pageContext.request.contextPath}/Userlogin.jsp">登陆</a>
				
				       <a href="${pageContext.request.contextPath}/UserRegister.jsp">注册</a>
					
					<%}
				%>
				<a href="${pageContext.request.contextPath}/AdmiLogin.jsp">我是管理员</a>
			</div>
			<hr style="clear: both;">
		</div>
		<!--导航条-->
		<div style="background-color: #F2F2F2; width:100%; height: 50px;">
			<ul id="daohang">
				<li><a href="#" style="color:#F47F1F; line-height: 50px;">首页</a></li>
				<%
			       List<Kind> kinds = (List<Kind>)request.getAttribute("kinds");
				   for(Kind k:kinds){
					   
					   %>
					   <li ><a href="${pageContext.request.contextPath}/beforekindshow?kid=<%=k.getKid() %>"style="color:black; line-height: 50px; "><%=k.getKname() %></a></li>
					   
					   <%
					   
				   }
				
				%>
				</ul>
		</div>
		<hr>
				<!--主体  -->
			<% 
				Product p =(Product) request.getAttribute("product");
				System.out.println(p);
			 %>
			<div style="border: 1px solid #EBEBEB;">
				<div class="main-left">
					<img alt="" src="<%=p.getPicture() %>" width="350px" height="350px">
				</div>
				<div class="main-right">
					<span><font style="font-size: 20px;"><%=p.getPname() %> &nbsp; &nbsp; <%=p.getPdesc() %></font></span>
					<hr>
					<span>当前价：<font style="font-size: 20px; color:red ">RMB</font> <font style="font-size: 25px; color:red "><%=p.getFirstprice() %></font></span>
					<span style="background-color: 223066;display:inline-block;height: 30px;padding: 0 10px"><font style="font-size: 20px;color: white;">加价单位：200RMB</font></span>
					<span style="display:inline-block;margin-top: 20px">还剩：<div class="container timeBar ys2" data="<%=p.getHours()*60*60%>" style=" margin-top: 8px;margin-left: 50px;font-size: 30px;text-align: ce" ></div></span>
					 <a href="${pageContext.request.contextPath}/beforerecordsadd?nowprice=<%=p.getFirstprice() %>&pname=<%=p.getPname() %>&pid=<%=p.getPid() %> "
					style="margin-top: 30px;margin-left: 150px"><span
					style="border-radius:15px; background-color: 223066;display:inline-block;height: 30px;padding: 0 10px"><font
						style="font-size: 20px;color: white;">立即竞拍</font></span></a>
			</div>
			
			</div>
			
			
	</div>	
			<!--倒计时插件  -->	
	<script src="js/jquery-2.1.1.min.js"></script>
	<script src="js/countdown.js"></script>	
	<script type="text/javascript">
	$(function(){
		$(".timeBar").each(function () {
			$(this).countdownsync({
				dayTag: "",
				hourTag: "<label class='tt hh dib vam'>00</label><span>时</span>",
				minTag: "<label class='tt mm dib vam'>00</label><span>分</span>",
				secTag: "<label class='tt ss dib vam'>00</label><span>秒</span>",
				dayClass: ".dd",
				hourClass: ".hh",
				minClass: ".mm",
				secClass: ".ss",
				isDefault: false,
				showTemp:1

			}, function () {
				location.reload();
			});
		});
	});
	
</script>
		<!--尾部-->	
	    
	    	<img src="images/footer.png" width="100%" />
	    	
	
  </body>
</html>
