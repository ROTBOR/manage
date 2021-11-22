package cn.jmu.po;

public class Dean {
	private String dean_no;
	private String userid;
	private String dean_name;
	public String getDean_no() {
		return dean_no;
	}
	public void setDean_no(String dean_no) {
		this.dean_no = dean_no;
	}
	public String getUserid() {
		return userid;
	}
	public void setUserid(String userid) {
		this.userid = userid;
	}
	public Dean(String dean_no, String userid,String dean_name) {
		super();
		this.dean_no = dean_no;
		this.userid = userid;
		this.setDean_name(dean_name);
	}
	@Override
	public String toString() {
		return "Dean [dean_no=" + dean_no + ", userid=" + userid + "]";
	}
	public Dean()
	{
		super();
	}
	public String getDean_name() {
		return dean_name;
	}
	public void setDean_name(String dean_name) {
		this.dean_name = dean_name;
	}
}
