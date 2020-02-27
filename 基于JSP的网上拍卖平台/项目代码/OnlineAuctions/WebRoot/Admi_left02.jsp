<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
    <title>三级导航</title>
	
    <link rel="stylesheet" type="text/css" href="css/left-side-menu.css">
    <link rel="stylesheet" type="text/css" href="font/iconfont.css">
	
    <script type="text/javascript" src="js/jquery.min.js"></script>
    <script type="text/javascript" src="js/jquery.slimscroll.min.js"></script>
    <script type="text/javascript" src="js/left-side-menu.js"></script>
	
</head>
<body>
<!--<div class ="top"  style="width: 100%;height: 80px;background-color: #397bc5"></div>-->
<div class="left-side-menu" style="height: 100%; width: 100%">
    <div class="lsm-expand-btn">
        <div class="lsm-mini-btn">
            <label>
                <input type="checkbox" checked="checked">
                <svg viewBox="0 0 100 100" xmlns="http://www.w3.org/2000/svg">
                    <circle cx="50" cy="50" r="30" />
                    <path class="line--1" d="M0 40h62c18 0 18-20-17 5L31 55" />
                    <path class="line--2" d="M0 50h80" />
                    <path class="line--3" d="M0 60h62c18 0 18 20-17-5L31 45" />
                </svg>
            </label>

        </div>
<!--        <input type="text"/>-->

    </div>
    <div class="lsm-container">
        <div class="lsm-scroll" >
            <div class="lsm-sidebar">
                <ul>
					 <li class="lsm-sidebar-item">
                        <a href="javascript:;"><i class="my-icon lsm-sidebar-icon icon-users"></i><span>用户菜单管理</span><i class="my-icon lsm-sidebar-more"></i></a>
                        <ul>
                            <li><a href="${pageContext.request.contextPath}/UserAdd.jsp" target="right"><span>用户添加</span></a></li>
                            <li><a href="${pageContext.request.contextPath}/userlist?action=edit"  target="right"><span>用户修改</span></a></li>
                            <li><a href="${pageContext.request.contextPath}/userlist?action=delete" target="right"><span>用户删除</span></a></li>
                            <li><a href="${pageContext.request.contextPath}/userlist" target="right"><span>用户查询</span></a></li>
                        </ul>
                    </li>
                    
                     <li class="lsm-sidebar-item">
                        <a href="javascript:;"><i class="my-icon lsm-sidebar-icon icon-users"></i><span>管理员菜单管理</span><i class="my-icon lsm-sidebar-more"></i></a>
                        <ul>
                            <li><a href="${pageContext.request.contextPath}/AdmiAdd.jsp" target="right"><span>管理员添加</span></a></li>
                            <li><a href="${pageContext.request.contextPath}/admilist?action=edit" target="right"><span>管理员修改</span></a></li>
                            <li><a href="${pageContext.request.contextPath}/admilist?action=delete" target="right"><span>管理员删除</span></a></li>
                            <li><a href="${pageContext.request.contextPath}/admilist" target="right"><span>管理员查询</span></a></li>
                        </ul>
                    </li>
                    
                    
                     <li class="lsm-sidebar-item">
                        <a href="javascript:;"><i class="my-icon lsm-sidebar-icon icon_3"></i><span>拍卖品菜单管理</span><i class="my-icon lsm-sidebar-more"></i></a>
                        <ul>
                            <li><a href="${pageContext.request.contextPath}/kindlist?action=addproduct" target="right"><span>拍卖品添加</span></a></li>
                            <li><a href="${pageContext.request.contextPath}/productlist?action=edit" target="right"><span>拍卖品修改</span></a></li>
                            <li><a href="${pageContext.request.contextPath}/productlist?action=delete" target="right"><span>拍卖品删除</span></a></li>
                            <li><a href="${pageContext.request.contextPath}/productlist" target="right"><span>拍卖品查询</span></a></li>
                        </ul>
                    </li>
                    
                    <li class="lsm-sidebar-item">
                        <a href="javascript:;"><i class="my-icon lsm-sidebar-icon icon_3"></i><span>拍卖品种类菜单管理</span><i class="my-icon lsm-sidebar-more"></i></a>
                        <ul>
                            <li><a href="${pageContext.request.contextPath}/KindAdd.jsp" target="right"><span>种类添加</span></a></li>
                            <li><a href="${pageContext.request.contextPath}/kindlist?action=edit" target="right"><span>种类修改</span></a></li>
                            <li><a href="${pageContext.request.contextPath}/kindlist?action=delete" target="right"><span>种类删除</span></a></li>
                            <li><a href="${pageContext.request.contextPath}/kindlist" target="right"><span>种类查询</span></a></li>
                        </ul>
                    </li>
                   
                    <li class="lsm-sidebar-item">
                        <a href="javascript:;"><i class="my-icon lsm-sidebar-icon icon_3"></i><span>竞拍记录</span><i class="my-icon lsm-sidebar-more"></i></a>
                        <ul>
                            <li><a href="${pageContext.request.contextPath}/recordslist" target="right"><span>竞拍记录列表</span></a></li>
                            
                        </ul>
                    </li>
                   
                   <li class="lsm-sidebar-item">
                        <a href="javascript:;"><i class="my-icon lsm-sidebar-icon icon_3"></i><span>退出</span><i class="my-icon lsm-sidebar-more"></i></a>
                        <ul>
                            <li><a href="${pageContext.request.contextPath}/admiout" target="_top"><span>退到登录界面</span></a></li>
                            <li><a href="${pageContext.request.contextPath}/admiout02" target="_top"><span>退到前台界面</span></a></li>
                        </ul>
                    </li>
                    
                    
                 
                </ul>
            </div>
        </div>
    </div>

</div>

</body>
</html>


