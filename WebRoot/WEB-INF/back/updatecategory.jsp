<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ page import="com.phn.dto.*"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>编辑新闻类别</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<link rel="stylesheet" href="<%=basePath%>back/css/back.css" />
<style type="text/css">
#pic-site-input {
	display: none;
}
</style>
</head>

<body>
<div class="body">
		<div class="top">
			<jsp:include page="./top.jsp"></jsp:include>
		</div>
		<div class="left">
			<jsp:include page="./left.jsp"></jsp:include>
		</div>
		<div class="right">
<% CategoryList categoryList = (CategoryList)request.getAttribute("categoryList"); %>
	<h1>编辑新闻类别</h1>
	<form action="back/manage/category?action=update" method="post">
	<input type="hidden" name="categoryId" value="<%=categoryList.getCategoryId()%>">
		名&nbsp;&nbsp;称：<input type="text" name="categoryName" value="<%=categoryList.getCategoryName()%>"> <br> <br>
		优先级：<input type="text" name="categoryPriority"  value="<%=categoryList.getCategoryPriority()%>"><br> <br>
		<input type="submit"  value="确认保存">
	</form>
	</div></div>
</body>
</html>
