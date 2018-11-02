<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>


<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'news.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<title>后台管理 - 易买网</title>
  <link rel="stylesheet" href="css/style.css" type="text/css"></link>
  <script type="text/javascript" src="jquery-1.12.4.js"></script>
<!--   <script>
  	$(function(){
  		$.ajax({
  			url:"/news/",
  			dataType:"text",
  			type:"post",
  			success:function(){
  				
  			}
  			
  		})
  	})
  
  </script> -->
  </head>
  
  <body>
<%@include file="../../Part/botton.jsp" %>
<div id="position" class="wrap">
	您现在的位置：<a href="index.html">易买网</a> &gt; 管理后台
</div>
<div id="main" class="wrap">
	<div class="main">
		<h2>角色管理</h2>
		<div class="manage">
			
			<form action="/news/save" method="post">
				<input type="file" name="image"/>
				<input  type="text" name="title"/>
				<input type="submit" value="提交"/>
			</form>
			
			<a href="/news/delete/1">wao</a>
			<div class="pager">
				<ul class="clearfix">
				</ul>
			</div>
		</div>
	</div>
	<div class="clear"></div>
</div>
<div id="footer">
	Copyright &copy; 2010 北大青鸟 All Rights Reserved. 京ICP证1000001号
</div>
  </body>
</html>
