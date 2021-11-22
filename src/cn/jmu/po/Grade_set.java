package cn.jmu.po;

public class Grade_set {
	private String cou_classno;
	private String usual_grade;
	private float final_grade;
	public Grade_set()
	{
		super();
	}
	public Grade_set(String cou_classno, String usual_grade, float final_grade) {
		super();
		this.cou_classno = cou_classno;
		this.usual_grade = usual_grade;
		this.final_grade = final_grade;
	}
	@Override
	public String toString() {
		return "Grade_set [cou_classno=" + cou_classno + ", usual_grade=" + usual_grade + ", final_grade=" + final_grade
				+ "]";
	}
	public String getCou_classno() {
		return cou_classno;
	}
	public void setCou_classno(String cou_classno) {
		this.cou_classno = cou_classno;
	}
	public String getUsual_grade() {
		return usual_grade;
	}
	public void setUsual_grade(String usual_grade) {
		this.usual_grade = usual_grade;
	}
	public float getFinal_grade() {
		return final_grade;
	}
	public void setFinal_grade(float final_grade) {
		this.final_grade = final_grade;
	}
	
}
