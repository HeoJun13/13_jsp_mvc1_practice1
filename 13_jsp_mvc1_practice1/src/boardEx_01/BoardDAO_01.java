package boardEx_01;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class BoardDAO_01 {
	
	private BoardDAO_01(){}
	private static BoardDAO_01 instance = new BoardDAO_01();
	public static BoardDAO_01 getInstance() {
		return instance;
		
	}
	
	private Connection conn = null;
	private PreparedStatement pstmt = null;
	private ResultSet rs = null;
	
	// 데이터베이스 연결 메서드
	public void getConnection () {
		
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/MVC1_PRACTICE?serverTimezone=Asia/Seoul", "root", "1234");
			System.out.println("DB 접속 성공");
		} catch (Exception e) {
			System.out.println("DB연동에 실패했습니다");
			e.printStackTrace();
		}
		
		
	}
	
	public void getClose() {
		if (rs != null) 	try {rs.close();} catch (SQLException e) {e.printStackTrace();}
		if (pstmt != null)  try {pstmt.close();} catch (SQLException e) {e.printStackTrace();}
		if (conn != null)   try {conn.close();} catch (SQLException e) {e.printStackTrace();}
	}
	
	public void insertBoard(BoardDTO_01 boardDTO_01) {
		
		
		System.out.println(boardDTO_01);
		
		try {	
			getConnection();
			
			String sql = "INESRT INTO BOARD(WRITER , EMAIL , SUBJECT , PASSWORD , CONTENT , READ_CNT , ENROLL_DT)";
				   sql += "VALUES(? , ? , ? , ? , ? , 0 , now())";
				   
				   pstmt = conn.prepareStatement(sql);
				   pstmt.setString(1, boardDTO_01.getWriter());
				   pstmt.setString(2, boardDTO_01.getEmail());
				   pstmt.setString(3, boardDTO_01.getSubject());
				   pstmt.setString(4, boardDTO_01.getPassword());
				   pstmt.setString(5, boardDTO_01.getContent());
			
			} catch(Exception e) {
			   e.printStackTrace();
			} finally {
			   getClose();
			}
		
	}
	
	public ArrayList<BoardDTO_01> getBoardList() {
		
		ArrayList<BoardDTO_01> boardList = new ArrayList<BoardDTO_01>();
		
		try {	
			getConnection();
			
			pstmt = conn.prepareStatement("SELECT * FROM BOARD");
			rs = pstmt.executeQuery();
			
			while (rs.next()) {
				
				BoardDTO_01 temp = new BoardDTO_01();
				
				temp.setBoardId(rs.getLong("BOARD_ID"));
				temp.setWriter(rs.getString("WRITER"));
				temp.setSubject(rs.getString("SUBJECT"));
				temp.setReadCnt(rs.getLong("READ_CNT"));
				temp.setEnrollDt(rs.getDate("ENROLL_DT"));
				
				boardList.add(temp);
			}
			
			
			} catch(Exception e) {
			   e.printStackTrace();
			} finally {
			   getClose();
			}
		return boardList;
	}
	
	
}

	
	