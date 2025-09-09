package question;

public class ThreeSixNine {
	private int num;
	
	public String process(int num) {
		String result = "";
		int ten = num /10;
		int one = num %10;
		int count = 0;
		if(ten ==3||ten ==6 || ten ==9) {
			count++;
		}
		if(one ==3||one ==6 || one ==9) {
			count++;
		}
		if(count == 1) {
			result ="박수짝";
		}else if(count ==2) {
			result ="박수짝짝";
		}else {
			result ="박수없음";
		}
		
		return result;
	}

	public int getNum() {
		return num;
	}

	public void setNum(int num) {
		this.num = num;
	}
	
}
