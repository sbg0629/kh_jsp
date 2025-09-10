package question;


public class Asterisk {
	private int num;
	
	
	public int getNum() {
		return num;
	}


	public void setNum(int num) {
		this.num = num;
	}


	public String process(int num) {
		StringBuffer strBuf =new StringBuffer();
		
		for(int i = num; i>0; i--) {
			for (int j = 0; j < i; j++) {
				strBuf.append('*');
			}	
			strBuf.append("<br>");
		}
		return strBuf.toString();
	}
	
}
