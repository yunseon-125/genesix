<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%@ include file="../include/header.jsp" %>
</head>
<body>
<script type="text/javascript">
alert('중복된 아이디입니다.');
location.href="${path}/member/checklogout.do";
</script>
</body>
</html>