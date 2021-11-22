package cn.jmu.po;

public class Score {
	private String sno;
	private String term;
	private String cno;
	private String cname;
	private String ctime;
	private int credit;
	private int usual_score;
	private int final_score;
	private String type;
	private String state;
	private int grade;
	private String cou_classno;
	
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
	public String getCtime() {
		return ctime;
	}
	public void setCtime(String ctime) {
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
	public String getState() {
		return state;
	}
	public void setState(String state) {
		this.state = state;
	}
	public int getGrade() {
		return grade;
	}
	public void setGrade(int grade) {
		this.grade = grade;
	}
	public String getSno() {
		return sno;
	}
	public void setSno(String sno) {
		this.sno = sno;
	}
	public int getUsual_score() {
		return usual_score;
	}
	public void setUsual_score(int usual_score) {
		this.usual_score = usual_score;
	}
	public int getFinal_score() {
		return final_score;
	}
	public void setFinal_score(int final_score) {
		this.final_score = final_score;
	}
	
	}
