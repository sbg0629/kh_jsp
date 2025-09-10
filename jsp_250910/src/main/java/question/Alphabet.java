package question;

public class Alphabet {
	private char eng;

	public String process(char eng) {
		StringBuffer str = new StringBuffer();
		

		int b = (int)eng;
		for(int i = 65; i<=b; i++) {
			str.append((char)i);
		}
		return str.toString();
	}
	public char getEng() {
		return eng;
	}

	public void setEng(char eng) {
		this.eng = eng;
	}
	
}
