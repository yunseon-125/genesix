<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page session="true" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<%@ include file="../include/header.jsp" %>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title></title>

<script>
$(function(){
	listReply();
	$("#btnReply").click(function(){
		var replytext=$("#replytext").val(); //댓글 내용
		var bno="${dto.bno}"; //게시물 번호
		var param={ "replytext": replytext, "bno": bno};
		//var param="replytext="+replytext+"&bno="+bno;
		$.ajax({
			type: "post",
			url: "${path}/reply/insert.do",
			data: param,
			success: function(){
				alert("댓글이 등록되었습니다.");
				//listReply();
				listReply(); //댓글 목록 출력
			}
		});
	});
});
function listReply(){
	$.ajax({
		type: "get",
		url: "${path}/reply/list.do?bno=${dto.bno}",
		success: function(result){
			$("#listReply").html(result);
		}
	});
}

function changeDate(date){
	date = new Date(parseInt(date));
	year=date.getFullYear();
	month=date.getMonth();
	day=date.getDate();
	hour=date.getHours();
	minute=date.getMinutes();
	second=date.getSeconds();
	strDate = 
		year+"-"+month+"-"+day+" "+hour+":"+minute+":"+second;
	return strDate;
}

</script>

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

.submit-box {
   float:left;
   width:8%;
   cursor:pointer;
    -webkit-border-radius: 5px;
    border-radius: 5px; 
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

		<h3>QnA</h3>
		<c:if test="${sessionScope.userid != dto.writer && sessionScope.userid != 'admin'}">		
		<div align="left">
		Writer : ${dto.writer} <br>
		Title : ${dto.title} <hr>
		Content <br>
		<textarea id="content" name="content" rows="8" cols="90" readonly="readonly">${dto.content}</textarea><hr> 
		</div>
		
<c:if test="${sessionScope.userid != null }">
		<div style="text-align: left;">
		Comment <br>
		
 	<textarea rows="1" cols="90" id="replytext"
 		placeholder="Comment"></textarea> 
 	<button type="button" id="btnReply">Comment</button>
 	</div>
 </c:if>
</div>
<!-- 댓글 목록 -->
<div  id="listReply" style="text-align: left;"></div> <hr>
		
		
		
		
		<a href="${path}/board/list.do"><button>Back</button></a>
		</c:if>

		<c:if test="${sessionScope.userid == dto.writer || sessionScope.userid == 'admin'}">
		<form action="${path}/board/update.do" method="post">
		<div align="left">
		<input name="bno" value="${dto.bno}" hidden="">
		Writer : ${dto.writer} <br>
		Title : <input id="title" value="${dto.title}" name="title" size="80" placeholder="title" required><hr>
		Content <br>
		<textarea id="content" name="content" rows="8" cols="90">${dto.content}</textarea><hr> 
		</div>
		

		
		<c:if test="${sessionScope.userid != null }">
		<div style="text-align: left;">
		Comment <br>
		
 	<textarea rows="1" cols="90" id="replytext"
 		placeholder="Comment"></textarea> 
 	<button type="button" id="btnReply">Comment</button>
 	</div>
 </c:if>
</div>
<!-- 댓글 목록 -->
<div  id="listReply" style="text-align: left;"></div> <hr>
		
		
		
		
		
		
		<div class="submit-box">
		<input type="submit" value="Edit">
		</div>
		</form>

		<form action="${path}/board/delete.do" method="post" onsubmit="return confirm('게시글을 삭제하시겠습니까?');">
		<div class="submit-box">
		<input name="bno" value="${dto.bno}" hidden="">
		<input name="delete" type="submit" value="Delete">
		</div>
		</form>
		<div class="submit-box">
		<button>
		<a href="${path}/board/list.do" style="color: black">Back</a>
		</button>
		</div>
		
		</c:if>
	
	<div style="width:700px; text-align:center;">
		
		</div>
	</div>

	</div>
</div>
</div>

	

	
<%@ include file="../include/footer.jsp" %>
</body>
</html>
