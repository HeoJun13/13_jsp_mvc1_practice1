<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>bWrite_01</title>
</head>
<body>

		<h3>게시글 연습1</h3>
		<form action="">
		
		<table border="1">
			<tr>
				<td>작성자</td>
				<td><input type="text" name="writer"></td>
			</tr>
			<tr>
				<td>제목</td>
				<td><input type="text" name="name"></td>
			</tr>
			<tr>
				<td>이메일</td>
				<td><input type="text" name="email"></td>
			</tr>
			<tr>
				<td>비밀번호</td>
				<td><input type="text" name="password"></td>
			</tr>
			<tr>
				<td>글내용</td>
				<td>
				<textarea rows = "10" cols="50" name="content"	></textarea>
				</td>
			</tr>
		</table>
		
		<p>
			<input type="submit" value="작성">
			<input type="button" value="목록보기">
		</form>
		
		</p>
</body>
</html>