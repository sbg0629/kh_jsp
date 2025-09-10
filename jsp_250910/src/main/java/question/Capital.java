package question;

public class Capital {
	private String eng;

	public String process() {
		StringBuffer str = new StringBuffer();
		char c ='A';
		char c2 = eng.charAt(0);
		
		for(char i = c2; i >=c; i--) {
			for (char j = c; j<=i;j++) {
				str.append(j);
			}
			str.append("<br>");
		}
		return str.toString();
		}
		
	public String getEng() {
		return eng;
	}

	public void setEng(String eng) {
		this.eng = eng;
	}
	
}
