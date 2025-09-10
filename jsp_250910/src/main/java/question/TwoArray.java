package question;

public class TwoArray {
	private int num;
	
	public String process() {
	StringBuffer str = new StringBuffer();
	int [][] array = new int [num][num];
	
	for(int i = 0; i <array.length; i++) {	
		for(int j = 0;j<array.length;j++) {
			array[i][j] = (int)(Math.random()*11); 
			str.append(array[i][j]+"&nbsp;&nbsp;&nbsp;");
		}
		str.append("<br>");
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
