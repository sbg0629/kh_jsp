package question;

public class Money {
	private int mon;
	
	public String process() {
		int [] unit = {50000,10000,1000,500,100,50,10,1};
		StringBuffer str = new StringBuffer();
		
		for(int i = 0; i< unit.length;i++) {
			int res = mon/unit[i];
			
			if(res > 0) {
				str.append(unit[i]+"원 짜리 : "+res+"개<br>");
				mon = mon%unit[i];
			}
		}

		return str.toString();
	}

	public int getMon() {
		return mon;
	}

	public void setMon(int mon) {
		this.mon = mon;
	}
	
}
