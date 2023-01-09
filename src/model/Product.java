package model;

public class Product {
	private int pid;
	private String pname;
	private String prize;
	private String description;
	public Product(int pid, String pname, String prize, String description) {
		super();
		this.pid = pid;
		this.pname = pname;
		this.prize = prize;
		this.description = description;
	}
	public Product(String pname, String prize, String description) {
		super();
		this.pname = pname;
		this.prize = prize;
		this.description = description;
	}
	public Product() {
		super();
		// TODO Auto-generated constructor stub
	}
	public int getPid() {
		return pid;
	}
	public void setPid(int pid) {
		this.pid = pid;
	}
	public String getPname() {
		return pname;
	}
	public void setPname(String pname) {
		this.pname = pname;
	}
	public String getPrize() {
		return prize;
	}
	public void setPrize(String prize) {
		this.prize = prize;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}

}
