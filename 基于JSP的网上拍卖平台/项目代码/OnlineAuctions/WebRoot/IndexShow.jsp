<%@page import="com.czf.domain.*" %>
<%@ page language="java" contentType="text/html; charset=utf-8" import="java.util.*"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>前端拍卖品界面</title>
<head>
		<meta charset="UTF-8">
		<title></title>
		<style type="text/css">
			html{
				width: 100%;
				overflow-x: hidden;
			}
			#topleft{
				float: left;
				
			}
			
			#topright{
				
				float:right;
				padding-top: 35px;
			}
			
			
			#shuipingtop{
				
				clear:both;
				
			}
			#daohang{
				list-style-type: none;
				
			}
			
			#daohang li{
				
				float:left;
				margin-left: 1px;
			    font-size: 20px;
			    
			}
			
			a{
				
				text-decoration: none;
				display:inline-block;
				margin-right: 50px;
				/* margin-bottom: 20px; */
				color: black;
				
			}
			a:hover{
			color: red;
			}
			
			.productItem{
				display: inline-block;
				
			}
			/* 倒计时 */
			.ys1{
		color: #009AC1;
		font-weight: bold;
	}
	.ys2{
	color: #2FAB11;
	font-weight: bold;
	}
	.ys3{
	color: #C16000;
	font-weight: bold;
	}
			</style>
			<!-- Bootstrap -->
   			 <link href="css/bootstrap.min.css" rel="stylesheet">
    		<!-- jQuery (Bootstrap 的所有 JavaScript 插件都依赖 jQuery，所以必须放在前边) -->
   			 <script src="js/jquery-3.2.1.min.js"></script>
    		<!-- 加载 Bootstrap 的所有 JavaScript 插件。你也可以根据需要只加载单个插件。 -->
    		<script src="js/bootstrap.min.js"></script>
    		
	</head>
	<body>
		<img src="images/top01.png" width="1550px"/>
	<div class="container">
		<div id="top">

			<div id="topleft">
				<img src="images/log.png" />
			</div>

			<div id="topright">
				<%
					User user = (User)session.getAttribute("user");
					if(user!=null){
						%>
				<a>亲！<%=user.getUname() %></a> <a
					href="${pageContext.request.contextPath}/beforeuserout">退出</a>
				<%
					}else{%>
				<a href="${pageContext.request.contextPath}/Userlogin.jsp">登陆</a> <a
					href="${pageContext.request.contextPath}/UserRegister.jsp">注册</a>

				<%}
				%>
				<a href="${pageContext.request.contextPath}/AdmiLogin.jsp">我是管理员</a>


			</div>
		</div>
		<div id="shuipingtop">
			<hr />

		</div>
		<!--导航条-->
		<div style="background-color: #F2F2F2; width:100%; height: 50px;">
			<ul id="daohang">
				<li><a href="#" style="color:#F47F1F; line-height: 50px;">首页</a></li>
				<%
			       List<Kind> kinds = (List<Kind>)request.getAttribute("kinds");
				   for(Kind k:kinds){
					   
					   %>
				<li><a
					href="${pageContext.request.contextPath}/beforekindshow?kid=<%=k.getKid() %>"
					style="color:black; line-height: 50px; "><%=k.getKname() %></a></li>

				<%
					   
				   }
				
				%>
			</ul>
		</div>
		<hr>
		<!--轮播图-->
		<div id="imgs" data-interval="2000" data-ride="carousel"
			class="carousel slide" style="width: 1140px">

			<div class="carousel-inner">

				<div class="item active">

					<img src="images/lb01.jpg" style="width: 1140px;height:300px;">

				</div>

				<div class="item">

					<img src="images/lb02.jpg" style="width: 1140px;height:300px;">

				</div>

				<div class="item">

					<img src="images/lb03.jpg" style="width: 1140px;height:300px;">

				</div>


				<ul class="carousel-indicators">

					<li data-target="#imgs" data-slide-to="0" class="active"></li>

					<li data-target="#imgs" data-slide-to="1"></li>

					<li data-target="#imgs" data-slide-to="2"></li>

				</ul>

			</div>

			<a href="#imgs" data-slide="prev" class="carousel-control left"
				style="margin-top:150px;"><</a> <a href="#imgs" data-slide="next"
				class="carousel-control right" style="margin-top:150px;">></a>

		</div>
		<hr>

		<!--商品列表-->
		<span><h3>雅虎当前热拍</h3></span>
		<hr>
		<div style="background-color:#EFEFEF;padding: 10px 10px;">

			<%
				List<Product> products = (List<Product>) request.getAttribute("products");
				for (Product p : products) {
			%>
			<div class="productItem"
				style="width: 220px;height: 360px; background-color: white; margin: 10px 20px; ">
				<div>
					<a
						href="${pageContext.request.contextPath}/beforeshow?pid=<%=p.getPid() %>"><img
						src="<%=p.getPicture()%>" width="220px" height="230px" /></a>
					<div style="text-align: center; margin-top: 5px">
						<span><font style="font-size: 12px;"><%=p.getPname()%></font></span>
					</div>
					<div style="text-align: center; margin-top: 5px">
						<span><font style="font-size: 12px;"><%=p.getPdesc()%></font></span>
					</div>
					<div style="text-align: center;margin-top: 5px">
						<font style="font-size: 12px; "><span>当前价格：<font
								style="font-size: 15px; color: #669933; "><b>￥<%=p.getFirstprice()%></b></span></font>
					</div>
					<div class="container timeBar ys2"
						data="<%=p.getHours() * 60 * 60%>"
						style=" margin-top: 8px;margin-left: 50px;font-size: 15px"></div>
				</div>
			</div>
			<%
				}
			%>
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
	    <div>
	    	
	    	<img src="images/footer.png" width="100%" />
	    </div>		
	</div>
	</body>
</html>
