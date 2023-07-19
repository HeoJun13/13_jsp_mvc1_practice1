package boardEx_01;



public class BoardDAO_01 {
	
	
	private BoardDAO_01 () {}
	private static BoardDAO_01  instance = new BoardDAO_01();
	public static BoardDAO_01 getInstance() {
		return instance;
	}
}
