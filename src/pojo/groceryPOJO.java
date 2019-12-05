package pojo;

public class groceryPOJO {
	String pid;
	String pname;
	String pcategory;
	String pweight;
	int  pprice;
	public groceryPOJO() {
		super();
		// TODO Auto-generated constructor stub
	}
	public groceryPOJO(String pid, String pname, String pcategory, String pweight, int pprice) {
		super();
		this.pid = pid;
		this.pname = pname;
		this.pcategory = pcategory;
		this.pweight = pweight;
		this.pprice = pprice;
	}
	public String getPid() {
		return pid;
	}
	public void setPid(String pid) {
		this.pid = pid;
	}
	public String getPname() {
		return pname;
	}
	public void setPname(String pname) {
		this.pname = pname;
	}
	public String getPcategory() {
		return pcategory;
	}
	public void setPcategory(String pcategory) {
		this.pcategory = pcategory;
	}
	public String getPweight() {
		return pweight;
	}
	public void setPweight(String pweight) {
		this.pweight = pweight;
	}
	public int getPprice() {
		return pprice;
	}
	public void setPprice(int pprice) {
		this.pprice = pprice;
	}
	@Override
	public String toString() {
		return "groceryPOJO [pid=" + pid + ", pname=" + pname + ", pcategory=" + pcategory + ", pweight=" + pweight
				+ ", pprice=" + pprice + "]";
	}
	

}
