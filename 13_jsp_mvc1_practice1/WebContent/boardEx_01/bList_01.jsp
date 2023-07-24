<%@page import="boardEx_01.BoardDTO_01"%>
<%@page import="java.util.ArrayList"%>
<%@page import="boardEx_01.BoardDAO_01"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>bList_01</title>
</head>
<body>

	<div align="center">
		<h3>커뮤니티 게시글 연습1</h3>
		<table border="1">
			<tr>
				<td>번호</td>
				<td>제목</td>
				<td>작성자</td>
				<td>작성일</td>
				<td>조회수</td>
			</tr>
			<%
			  	int idx = 1;
				 ArrayList<BoardDTO_01> boardList = BoardDAO_01.getInstance().getBoardList();
				for (BoardDTO_01 boardDTO_01 : boardList) {
			%>
					<tr>
						<td><%=idx %></td>
						<td><a href ="bDetail_01?boardId=<%=boardDTO_01.getBoardId()%>"><%=boardDTO_01.getSubject() %></a></td>
						<td><%=boardDTO_01.getWriter() %></td>
						<td><%=boardDTO_01.getEnrollDt() %></td>
						<td><%=boardDTO_01.getReadCnt() %></td>				
					</tr>
			
			
			<% 
					idx++;
				}			
			%>
			
			<tr>
				<td colspan="5">
					<input type="button" value="글쓰기" onclick="location.href='bWrite_01.jsp'">
				</td>
			</tr>			
</table>
</body>
</html>