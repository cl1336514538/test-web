<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

 <c:set var="path" value="${pageContext.request.contextPath}"></c:set>
<%-- <c:if test="${empty sessionScope.user}">
	<script>
		<!--location.href="${path}/manage/login.jsp";-->
	</script>
</c:if> --%>
<div id="header" class="wrap">
	<div id="logo"><img src="images/logo.gif" /></div>
	<div class="help"><a href="${path}/index.jsp">返回前台页面</a></div>
	<div class="navbar">
		<ul class="clearfix">
			<li class="${param.csstype ==0 ? "current" : ""}"><a href="${path}/index.jsp">首页</a></li>
			<li class="${param.csstype ==1 ? "current" : ""}"><a href="${path}/manage/user.jsp?csstype=1">用户</a></li>
			<li class="${param.csstype ==2 ? "current" : ""}"><a href="${path}/manage/product.jsp?csstype=2">商品</a></li>
			<li class="${param.csstype ==3 ? "current" : ""}"><a href="${path}/manage/order.jsp?csstype=3">订单</a></li>
			<li class="${param.csstype ==4 ? "current" : ""}"><a href="${path}/comment/commentAction.action?csstype=4">留言</a></li>
			<li class="${param.csstype ==5 ? "current" : ""}"><a href="${path}/news/NewsAction.action?csstype=5">新闻</a></li>
		</ul>
	</div>
</div>

<div id="childNav">
	<div class="welcome wrap">
		管理员${user.username }您好，欢迎回到管理后台。
	</div>
</div>
