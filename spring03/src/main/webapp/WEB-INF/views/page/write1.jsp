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
alert('작성하신 글이 등록되었습니다.');
location.href="${path}/board/list.do";
</script>
</body>
</html>