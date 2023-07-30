<%@page import="boardEx_01.BoardDAO_01"%>
<%@page import="boardEx_01.BoardDTO_01"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>


	<%
		String menu = request.getParameter("menu");
		long boardId = Long.parseLong(request.getParameter("boardId"));
		BoardDTO_01 boardDTO = BoardDAO_01.getInstance().getBoardDetail_01(boardId);
	%>
	<form action="userAuthenticationPro.jsp" method="post">
	<div align="center">
	<table border="1">
		<tr>
			<td>작성자</td>
			<td><%=boardDTO.getWriter() %></td>
		</tr>
		<tr>
			<td>작성일</td>
			<td><%=boardDTO.getEnrollDt() %></td>
		</tr>
		<tr>
			<td>제목</td>
			<td><%=boardDTO.getSubject() %></td>
		</tr>
		<tr>
			<td>패스워드</td>
			<td><input type="password" name="password"></td>
		</tr>
	</table>
	<p>
	<input type="hidden" name="menu" value="<%=menu %>">
	<input type="hidden" name="boardId" value="<%= boardDTO.getBoardId()%>">
	<input type="submit" value="인증">
	<input type="button" onclick="location.herf='bList_01.jsp'" value="목록보기">
	</p>
	
	</div>

</body>
</html>