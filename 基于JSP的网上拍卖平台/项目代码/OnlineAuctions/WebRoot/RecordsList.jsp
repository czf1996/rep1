<%@page import="com.czf.domain.*"%>
<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'recordslist.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<style>
* {
	box-sizing: border-box;
	-webkit-box-sizing: border-box;
	-moz-box-sizing: border-box;
}

body {
	font-family: Helvetica;
	-webkit-font-smoothing: antialiased;
	background: rgba(226,226,226, 1);
}

h2 {
	text-align: center;
	font-size: 18px;
	text-transform: uppercase;
	letter-spacing: 1px;
	color: black;
	padding: 30px 0;
}

/* Table Styles */
.table-wrapper {
	margin: 10px 70px 70px;
	box-shadow: 0px 35px 50px rgba(0, 0, 0, 0.2);
}

.fl-table {
	border-radius: 5px;
	font-size: 12px;
	font-weight: normal;
	border: none;
	border-collapse: collapse;
	width: 100%;
	max-width: 100%;
	white-space: nowrap;
	background-color: white;
}

.fl-table td, .fl-table th {
	text-align: center;
	padding: 8px;
}

.fl-table td {
	border-right: 1px solid #f8f8f8;
	font-size: 12px;
}

.fl-table thead th {
	color: #ffffff;
	background: #4FC3A1;
}

.fl-table thead th:nth-child(odd) {
	color: #ffffff;
	background: #324960;
}

.fl-table tr:nth-child(even) {
	background: #F8F8F8;
}

/* Responsive */
@media ( max-width : 767px) {
	.fl-table {
		display: block;
		width: 100%;
	}
	.table-wrapper:before {
		content: "Scroll horizontally >";
		display: block;
		text-align: right;
		font-size: 11px;
		color: white;
		padding: 0 0 10px;
	}
	.fl-table thead, .fl-table tbody, .fl-table thead th {
		display: block;
	}
	.fl-table thead th:last-child {
		border-bottom: none;
	}
	.fl-table thead {
		float: left;
	}
	.fl-table tbody {
		width: auto;
		position: relative;
		overflow-x: auto;
	}
	.fl-table td, .fl-table th {
		padding: 20px .625em .625em .625em;
		height: 60px;
		vertical-align: middle;
		box-sizing: border-box;
		overflow-x: hidden;
		overflow-y: auto;
		width: 120px;
		font-size: 13px;
		text-overflow: ellipsis;
	}
	.fl-table thead th {
		text-align: left;
		border-bottom: 1px solid #f7f7f9;
	}
	.fl-table tbody tr {
		display: table-cell;
	}
	.fl-table tbody tr:nth-child(odd) {
		background: none;
	}
	.fl-table tr:nth-child(even) {
		background: transparent;
	}
	.fl-table tr td:nth-child(odd) {
		background: #F8F8F8;
		border-right: 1px solid #E6E4E4;
	}
	.fl-table tr td:nth-child(even) {
		border-right: 1px solid #E6E4E4;
	}
	.fl-table tbody td {
		display: block;
		text-align: center;
	}
}
</style>
  </head>
 
  <body>
    <h2>竞拍记录列表</h2>
	<div class="table-wrapper">
    <table class="fl-table">
        <thead>
        <tr>
            <th>编号</th>
            <th>竞拍人</th>
            <th>拍卖品名称</th>
            <th>当前价格</th>
            <th>竞拍时间</th>
            <th colspan="2">操作</th>
        </tr>
        </thead>
        <tbody>
        <% 
          int i=1;
           PageBean pb =(PageBean)request.getAttribute("pagebean");
           List<Records> records =(List<Records>) pb.getList();
          for(Records r:records){%>
          
           <tr>
            <td><%=i++ %></td>
            <td><%=r.getUname()%></td>
            <td><%=r.getPname()%></td>
            <td><%=r.getNowprice() %></td>
            <td><%=r.getTime() %></td>
            <td><a href="${pageContext.request.contextPath}/recordsdelete?id=<%=r.getId()%>">删除</a></td>
        	</tr>
          
          <%}
         %>
      </tbody>
      </table>
      <center>
      <h3>共有<%=pb.getTotalRecord() %>个记录,共有<%=pb.getTotalpage()%>页,当前在第<%=pb.getPageNum() %>页</h3>
      <a href="${pageContext.request.contextPath}/recordslist?pagenum=1">首页</a>
      
      <!--如果仅有1页  -->
       <c:if test="${requestScope.pagebean.totalpage==1}">
       	1
       </c:if>
      
      
     <!--如果当前页为第一页时，就没有上一页超链接的显示  -->
      <c:if test="${requestScope.pagebean.pageNum==1 && requestScope.pagebean.totalpage!=1}">
      	<c:forEach begin="${requestScope.pagebean.start}" end="${requestScope.pagebean.end}" step="1" var="i">
      		<c:if test="${requestScope.pagebean.pageNum ==i}">
      			${i}
      		</c:if>
      		<c:if test="${requestScope.pagebean.pageNum !=i}">
      			 <a href="${pageContext.request.contextPath}/recordslist?pagenum=${i}"> ${i} </a>
      		</c:if>
      	</c:forEach>
      	<a href="${pageContext.request.contextPath}/recordslist?pagenum=${requestScope.pagebean.pageNum+1}">下一页</a>
      </c:if>
        <!--如果当前页不是第一页时，也不是最后一页。那么就有上下页  -->
         <c:if test="${requestScope.pagebean.pageNum>1 && requestScope.pagebean.pageNum<requestScope.pagebean.totalpage}">
         <a href="${pageContext.request.contextPath}/recordslist?pagenum=${requestScope.pagebean.pageNum-1}">上一页</a>
      	<c:forEach begin="${requestScope.pagebean.start}" end="${requestScope.pagebean.end}" step="1" var="i">
      		<c:if test="${requestScope.pagebean.pageNum ==i}">
      			${i}
      		</c:if>
      		<c:if test="${requestScope.pagebean.pageNum !=i}">
      			 <a href="${pageContext.request.contextPath}/recordslist?pagenum=${i}"> ${i} </a>
      		</c:if>
      	</c:forEach>
      	<a href="${pageContext.request.contextPath}/recordslist?pagenum=${requestScope.pagebean.pageNum+1}">下一页</a>
      	</c:if>
      	
      	  <!--如果当前页是最后一页。那么就没有下页  -->
       <c:if test="${requestScope.pagebean.pageNum==requestScope.pagebean.totalpage  && requestScope.pagebean.totalpage!=1}">
      	   <a href="${pageContext.request.contextPath}/recordslist?pagenum=${requestScope.pagebean.pageNum-1}">上一页</a>
      	<c:forEach begin="${requestScope.pagebean.start}" end="${requestScope.pagebean.end}" step="1" var="i">
      		<c:if test="${requestScope.pagebean.pageNum ==i}">
      			${i}
      		</c:if>
      		<c:if test="${requestScope.pagebean.pageNum !=i}">
      			 <a href="${pageContext.request.contextPath}/recordslist?pagenum=${i}"> ${i} </a>
      		</c:if>
      	</c:forEach>
       </c:if>
       <a href="${pageContext.request.contextPath}/recordslist?pagenum=${requestScope.pagebean.totalpage}">尾页</a>
       
       
      </center>
  </body>
</html>
