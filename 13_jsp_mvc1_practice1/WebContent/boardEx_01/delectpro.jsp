<%@page import="boardEx_01.BoardDAO_01"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>delect.pro</title>
</head>
<body>

	<% 
	long boardId = Long.parseLong(request.getParameter("boardId"));
	BoardDAO_01.getInstance().DelectInstance(boardId);
	%>

	<script>
		alert("삭제 되었습니다.");
		location.href = "bList.jsp";
	</script>
	
</body>
</html>