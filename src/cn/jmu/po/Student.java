package cn.jmu.po;

public class Student {
	private String sno;
	private String userid;
	private String sname;
	public Student()
	{
		super();
	}
	@Override
	public String toString() {
		return "Student [sno=" + sno + ", userid=" + userid + "]";
	}
	public Student(String sno, String userid,String sname) {
		super();
		this.sno = sno;
		this.setSname(sname);
		this.userid = userid;
	}
	public String getSno() {
		return sno;
	}
	public void setSno(String sno) {
		this.sno = sno;
	}
	public String getUserid() {
		return userid;
	}
	public void setUserid(String userid) {
		this.userid = userid;
	}
	public String getSname() {
		return sname;
	}
	public void setSname(String sname) {
		this.sname = sname;
	}
}
