package cn.jmu.service;

import java.util.List;

import cn.jmu.po.Course;
import cn.jmu.po.Grade_set;
import cn.jmu.po.Score;
import cn.jmu.po.Student;
import cn.jmu.po.Teacher;

public interface TeacherService {
	public Teacher Teacher_Login(String tno,String userid);
	public List<Score> findStuByTno(String tno);
	public List<Course> findCourseByTno(String tno);
	public List<Grade_set>findSetByTno(String tno);
	public int insertGrade(Score score);
	public List<Score> findNullGrade(String tno);
	public Score findScoreByCou_class(String sno,String cou_class);
	public Score findScoreTeacher(String sno,String cou_class);
	public int update_GradeTeacher(Score score);
}

