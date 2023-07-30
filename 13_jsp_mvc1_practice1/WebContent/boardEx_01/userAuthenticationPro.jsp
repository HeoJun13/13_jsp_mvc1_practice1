<%@page import="boardEx_01.BoardDAO_01"%>
<%@page import="boardEx_01.BoardDTO_01"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>userAuthenticationPro.jsp</title>
</head>
<body>
	<%
		request.setCharacterEncoding("utf-8");
		
		String boardId = request.getParameter("boardId");
		String password = request.getParameter("password");
		String menu = request.getParameter("menu");
	
		
		BoardDTO_01 boardDTO = new BoardDTO_01();
		boardDTO.setBoardId(Long.parseLong(boardId));
		boardDTO.setPassword(password);
		
		boolean isAuthorizedUser = BoardDAO_01.getInstance().checkAuthorizedUser(boardDTO);
		
		if (isAuthorizedUser) {
			
			if (menu.equals("update")) {
		%>
		
		<script>
			location.href = "update.jsp?boardId=" + <%=boardId%>;
		</script>
		<%
			}
			else if (menu.equals("delete")) {
		%>
		<script>
			location.href = "delect.jsp?boardId=" + <%=boardId%>;
		</script>
		<% 
			}
		}
		else {
		%>
		<script>
			alert("패스워드가 틀렸습니다");
			location.href = "bDetail_01.jsp?boardId=" + <%= boardId%>
		</script>		
	<%
		}
	%>		
				

</body>
</html>