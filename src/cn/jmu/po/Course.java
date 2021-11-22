package cn.jmu.po;

public class Course {
	private String cno;
	private String cname;
	private int ctime;
	private int credit;
	private String type;
	private String cou_classno;
	private String term;
	private String state;
	private String tno;
	public Course()
	{
		super();
	}
	public Course(String cno, String cname, int ctime, int credit, String type, String cou_classno, String term,
			String state, String tno) {
		super();
		this.cno = cno;
		this.cname = cname;
		this.ctime = ctime;
		this.credit = credit;
		this.type = type;
		this.cou_classno = cou_classno;
		this.term = term;
		this.state = state;
		this.tno = tno;
	}
	@Override
	public String toString() {
		return "Course [cno=" + cno + ", cname=" + cname + ", ctime=" + ctime + ", credit=" + credit + ", type=" + type
				+ ", cou_classno=" + cou_classno + ", term=" + term + ", state=" + state + ", tno=" + tno + "]";
	}
	public String getCno() {
		return cno;
	}
	public void setCno(String cno) {
		this.cno = cno;
	}
	public String getCname() {
		return cname;
	}
	public void setCname(String cname) {
		this.cname = cname;
	}
	public int getCtime() {
		return ctime;
	}
	public void setCtime(int ctime) {
		this.ctime = ctime;
	}
	public int getCredit() {
		return credit;
	}
	public void setCredit(int credit) {
		this.credit = credit;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public String getCou_classno() {
		return cou_classno;
	}
	public void setCou_classno(String cou_classno) {
		this.cou_classno = cou_classno;
	}
	public String getTerm() {
		return term;
	}
	public void setTerm(String term) {
		this.term = term;
	}
	public String getState() {
		return state;
	}
	public void setState(String state) {
		this.state = state;
	}
	public String getTno() {
		return tno;
	}
	public void setTno(String tno) {
		this.tno = tno;
	}
}
