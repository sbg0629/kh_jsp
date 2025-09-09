package question;

public class DivAndRemains {
	private int num;
	public String process(int i) {
		if(i/10 == i %10) {
			return "같습니다";
		}else {
			return "다릅니다";
		}
		
	}
	public int getNum() {
		return num;
	}
	public void setNum(int num) {
		this.num = num;
	}
}
