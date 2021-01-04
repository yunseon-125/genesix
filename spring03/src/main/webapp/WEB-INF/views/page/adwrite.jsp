<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page session="true" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<%@ include file="../include/header.jsp" %>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title></title>
<link href="http://s.googleapis.com/css?family=Source+Sans+Pro:200,300,400,600,700,900" rel="stylesheet" />
<link href="../resources/css/default.css" rel="stylesheet" type="text/css" media="all" />
<link href="../resources/css/fonts.css" rel="stylesheet" type="text/css" media="all" />
</head>
<style>
ul {
	list-style-type: none;
	background-color: black;
	width: 100%;
	padding: 0;
	margin: 0;
}

li a {
	text-decoration: none;
	display: auto;
	color: #000;
	padding: 8px 15px 8px 15px;
	font-weight: bold;
}

li a:hover {
	background-color: green;
	color: #green;
}

.rvcontent {
	text-align: center;
	border-top: 1px solid #6D6D6D;
	padding: 5px;
	padding-right: 10px;
}
</style>
<body>
<div id="page" class="container">
	<div id="header">
		<div id="logo">
			<img src="../resources/img/genesis-logo.png" height="50px" alt="" />
			<h1><a href="#">GENESIS</a></h1>
			<span>We are the<a href=# rel="nofollow"> Board</a></span>
		</div>
		<div id="menu">
			<ul>
				<li class="menu"><a href="${path}/page/home.do">Homepage</a></li>
				<c:choose>
                   <c:when test="${sessionScope.userid == null}">
				<li class=""><a href="${path}/member/login.do" accesskey="2" title="">Login</a></li>
				    </c:when>
                <c:otherwise> 
				<li class=""><a href="${path}/member/logout.do" accesskey="5" title="">Logout</a></li>
				</c:otherwise>
                </c:choose>
				<li class=""><a href="${path}/reservation/reservation.do" accesskey="4" title="">Reservation</a></li>
			</ul>
		</div>
	</div>
	<div id="main">
		<div id="banner">
			<img src="../resources/img/genesis.jpg"  height="200px;" class="image-full" />
		</div>

			<div id="mypage-container">
	<div id="mypage-innercontainer">

		
				<div class="reservation-box">
				<div style="margin-top: 60px;">
		</div>

		<h3>write</h3>
		
		<form method="post" action="${path}/board/adwrite.do">
		<div align="left">
		Writer : <input id="writer" name="writer" value="${sessionScope.userid}" size="80" style="border: 0" readonly="readonly"> <br>
		Title : <input id="title" name="title" size="80" placeholder="title" required> <hr>
		Content <br>
		<textarea id="content" name="content" rows="8" cols="90"></textarea><hr> 
		</div>
		<button type="submit">OK</button>
		</form>
		

		
		
		</div>
	</div>

	</div>
</div>
</div>

	

	
<%@ include file="../include/footer.jsp" %>
</body>
</html>
