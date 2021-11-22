package cn.jmu.mapper;

import java.util.List;

import cn.jmu.po.Course;
import cn.jmu.po.Dean;
import cn.jmu.po.Report;
import cn.jmu.po.Score;
public interface DeanMapper {
	public Dean findByDean_no(String Dean_no);
	public List<Score> findAllScore();
	public List<Score> findLike(String sno);
	public List<Course> findNull();
	public List<Course> findNotNull();
	public Course findBycou_classno(String cou_classno);
	public int update_Tno(Course course);
	public List<Score> findScore(String sno);
	public int update_Grade(Score score);
	public List<Report> showReportTable();
}
