package cn.jmu.service;

import java.util.List;

import cn.jmu.po.Course;
import cn.jmu.po.Dean;
import cn.jmu.po.Report;
import cn.jmu.po.Score;

public interface DeanService {
	public Dean Dean_Login(String dean_no,String userid);
	public List<Score> findAllScore();
	public List<Score> findLike(String sno);
	public List<Course>findNull();
	public Course findBycou_classno(String cou_classno);
	public int update_Tno(Course course);
	public List<Course>findNotNull();
	public Score findScore(String sno,String cou_class);
	public int update_Grade(Score score);
	public List<Report> showReportTable();
}