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
alert('입력하신 이메일로 비밀번호가 발송되었습니다.')
location.href="${path}/member/login.do";
</script>
</body>
</html>