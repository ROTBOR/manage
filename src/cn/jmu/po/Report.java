package cn.jmu.po;

public class Report {
	private String cou_classname;
	private float avg_grade;
	private int number;
	private int pass;
	public String getCou_classname() {
		return cou_classname;
	}
	public void setCou_classname(String cou_classname) {
		this.cou_classname = cou_classname;
	}
	public double getAvg_grade() {
		return avg_grade;
	}
	public void setAvg_grade(float avg_grade) {
		this.avg_grade = avg_grade;
	}
	public int getNumber() {
		return number;
	}
	public void setNumber(int number) {
		this.number = number;
	}
	public int getPass() {
		return pass;
	}
	public void setPass(int pass) {
		this.pass = pass;
	}
	@Override
	public String toString() {
		return "Report [cou_classname=" + cou_classname + ", avg_grade=" + avg_grade + ", number=" + number + ", pass="
				+ pass + "]";
	}
	public Report(String cou_classname, float avg_grade, int number, int pass) {
		super();
		this.cou_classname = cou_classname;
		this.avg_grade = avg_grade;
		this.number = number;
		this.pass = pass;
	}
	public Report()
	{
		super();
	}
}
