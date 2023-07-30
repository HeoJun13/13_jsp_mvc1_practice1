<%@page import="boardEx_01.BoardDAO_01"%>
<%@page import="boardEx_01.BoardDTO_01"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>updatePro.jsp</title>
</head>
<body>
	
	<%
		request.setCharacterEncoding("utf-8");
		
		BoardDTO_01 boardDTO = new BoardDTO_01();
		boardDTO.setBoardId(Long.parseLong(request.getParameter("boardId")));
		boardDTO.setSubject(request.getParameter("subject"));
		boardDTO.setContent(request.getParameter("content"));
		
		BoardDAO_01.getInstance().UpdateInstance(boardDTO);
		
		
	%>
	
	<script>
		alert("게시글이 수정되었습니다")
		location.href="bList_01.jsp"
	</script>

</body>
</html>