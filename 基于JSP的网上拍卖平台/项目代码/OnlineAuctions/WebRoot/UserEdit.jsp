<%@page import="com.czf.domain.User"%>
<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'UserEdit02.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="stylesheet" type="text/css" href="css/selectFilter.css" />
<style type="text/css">
body {
	padding: 30px;
}

.item {
	width: 240px;
	height: 32px;
	margin: 100px auto;
}

.submitButton {
	display: block;
	margin-top: 20px;
	height: 30px;
	width: 60px;
	line-height: 30px;
	text-align: center;
}
</style>
</head>

<body>
	<center>
		<h3 style="margin-bottom: 30px">用户的修改</h3>
		<form action="UserEditUI" method="post">

			<table>
				<tr>
						<td><h3 style="margin-right: 10px">用户姓名:</h3></td>
					<td>

						<div class="filter-box">
							<div class="filter-text">
								<input class="filter-title" type="text" readonly placeholder="pleace select" /> <i
									class="icon icon-filter-arrow"></i>
							</div>
							<select name="uid">
						<%
							List<User> list = (List<User>) request.getAttribute("userlist");
							for(User u:list){%>
							<option value="<%=u.getUid()%>"><%=u.getUname() %></option>
							<%}
						%>
						</select>
						</div>
					</td>
				</tr>
				
				<tr >
					<td colspan="2" align="center" >
					<input type="submit"value="确定修改" class="submitButton"  />
					</td>
				</tr>
			</table>

			<script type="text/javascript" src="js/jquery.min.js"></script>
			<script type="text/javascript" src="js/selectFilter.js"></script>
			<script type="text/javascript">
			//本小插件支持移动端哦
			
			//这里是初始化
			$('.filter-box').selectFilter({
				callBack : function (val){
					//返回选择的值
					console.log(val+'-是返回的值')
				}
			});
		</script>
		</form>
	</center>
</body>
</html>