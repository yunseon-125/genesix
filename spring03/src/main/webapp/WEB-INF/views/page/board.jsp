<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
.rvcontent1 {
   text-align: left;
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
			<img src="../resources/img/genesis.jpg" class="image-full" />
		</div>

			<div id="mypage-container">
	<div id="mypage-innercontainer">

		
				<div class="reservation-box">
				<div style="margin-top: 60px;">

		<h2>QnA</h2>
		</div>
			<table>
				<tr>
					<th style="padding: 10px; margin: 10px; text-align: center;">NO</th>
					<th style="padding: 10px; margin: 10px; text-align: center;">WRITER</th>
					<th style="padding: 10px; margin: 10px; text-align: center; width: 300px;">TITLE</th>
					<th style="padding: 10px; margin: 10px; text-align: center; ">DATE</th>
					<th style="padding: 10px; margin: 10px; text-align: center;">VIEW</th>
				</tr>
			<c:forEach var="row" items="${list}">  
				<tr>
    				<c:if test="${row.adck == '0'}">
    				<td class="rvcontent" hidden="">${row.bno} </td>
    				<td class="rvcontent" style="font-weight: 900; color: #FBBE00;">NOTICE </td>
    				</c:if>
    				<c:if test="${row.adck != '0'}">
    				<td class="rvcontent">${row.bno} </td>
    				</c:if>
    				<td class="rvcontent">${row.writer} </td>
	                <td class="rvcontent1"><div style="overflow: hidden; text-overflow: ellipsis; white-space: nowrap; width: 250px;"><a href="${path}/board/view.do?bno=${row.bno}">${row.title}</a></div></td>
    				<td class="rvcontent"><fmt:formatDate value="${row.regdate}" 
    				pattern="yyyy-MM-dd"/></td>
    				<td class="rvcontent">${row.viewcnt} </td>
				</tr>
			</c:forEach>  
			</table>
				</div>
			<c:if test="${sessionScope.userid == 'admin'}">
			<a href="${path}/page/adwrite.do"><button type="submit">Write Notice</button></a>
			</c:if>
			<a href="${path}/page/write.do"><button type="submit">write</button></a>
			
		
		
		</div>
	</div>

	</div>
</div>
</div>

	

	
<%@ include file="../include/footer.jsp" %>
</body>
</html>
