<%@page import="boardEx_01.BoardDTO_01"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>bWritepro_01</title>
</head>
<body>

	<%
		request.setCharacterEncoding("UTF-8");
	
		BoardDTO_01 boardDTO_01 = new BoardDTO_01();
		
		boardDTO_01.setWriter(request.getParameter("writer"));
		boardDTO_01.setName(request.getParameter("name"));
		boardDTO_01.setEmail(request.getParameter("email"));
		boardDTO_01.setPassword(request.getParameter("password"));
		boardDTO_01.setContent(request.getParameter("content"));
		

	
	%>

</body>
</html>