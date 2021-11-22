package cn.jmu.po;

public class Teacher {
	private String tno;
	private String userid;
	private String tname;
	public Teacher()
	{
		super();
	}
	@Override
	public String toString() {
		return "Teacher [tno=" + tno + ", userid=" + userid + "]";
	}
	public Teacher(String tno, String userid,String tname) {
		super();
		this.tno = tno;
		this.userid = userid;
	}
	public String getTno() {
		return tno;
	}
	public void setTno(String tno) {
		this.tno = tno;
	}
	public String getUserid() {
		return userid;
	}
	public void setUserid(String userid) {
		this.userid = userid;
	}
	public String getTname() {
		return tname;
	}
	public void setTname(String tname) {
		this.tname = tname;
	}
	
}
