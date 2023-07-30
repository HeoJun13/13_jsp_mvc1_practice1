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
	<h3>수정 게시판</h3>
	
	<%
		long boardId =  Long.parseLong(request.getParameter("boardId"));
		BoardDTO_01 boardDTO = BoardDAO_01.getInstance().getBoardDetail_01(boardId);	
	%>
	<div>
		<form action="updatePro.jsp" method="post">
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
					<td><input type="text" size="70" name="subject" value="<%=boardDTO.getSubject() %>"></td>
				</tr>
				<tr>
					<td>글내용</td>
					<td>
						<textarea rows="10" cols="50" name="content"><%=boardDTO.getContent() %></textarea>
						<script></script>
					</td>
				</tr>
			</table>
			<p>
				<input type="hidden" name="boardId" value="<%=boardId %>">
				<input type="submit" value="수정하기"> 
				<input type="button" onclick="location.href='bList_01.jsp'"	value="목록보기">		
			</p>
		</form>
	</div>
</body>
</html>