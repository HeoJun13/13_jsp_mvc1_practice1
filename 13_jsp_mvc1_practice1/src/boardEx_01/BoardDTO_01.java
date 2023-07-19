package boardEx_01;

import java.util.Date;

public class BoardDTO_01 {
	
	private long boardId;
	private String writer;
	private String name;
	private String email;
	private String password;
	private String content;
	private int readCnt;
	private Date enrollDt;
	
	public long getBoardId() {
		return boardId;
	}
	public void setBoardId(long boardId) {
		this.boardId = boardId;
	}
	public String getWriter() {
		return writer;
	}
	public void setWriter(String writer) {
		this.writer = writer;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public int getReadCnt() {
		return readCnt;
	}
	public void setReadCnt(int readCnt) {
		this.readCnt = readCnt;
	}
	public Date getEnrollDt() {
		return enrollDt;
	}
	public void setEnrollDt(Date enrollDt) {
		this.enrollDt = enrollDt;
	}
	@Override
	public String toString() {
		return "BoardDTO_01 [writer=" + writer + ", name=" + name + ", email=" + email + ", password=" + password
				+ ", content=" + content + ", readCnt=" + readCnt + ", enrollDt=" + enrollDt + ", boardId=" + boardId
				+ "]";
	}
	
}
