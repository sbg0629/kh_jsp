package question;


public class Array3 {
	private int num;
	
	public String process(int num) {
		int array [] = new int [num];
		StringBuffer str = new StringBuffer();
		
		for(int i = 0; i<num;i++) {
			int a =(int)(Math.random()*100+1);
			array[i]=a;
			if(i==0) {
				str.append(array[i]+" ");				
			}else {
				if(i%10==0) {
					str.append("<br>");
				}
				str.append(array[i]+" ");
			}
		}
		return str.toString();
	}

	public int getNum() {
		return num;
	}

	public void setNum(int num) {
		this.num = num;
	}
	
	
}
