package cn.jmu.mapper;

import cn.jmu.po.Teacher;

import java.util.List;

import cn.jmu.po.Course;
import cn.jmu.po.Grade_set;
import cn.jmu.po.Score;
import cn.jmu.po.Student;
public interface TeacherMapper {
	public Teacher findByTno(String tno);
	public List<Score> findStuByTno(String tno);
	public List<Course> findCourseByTno(String tno);
	public List<Grade_set>findSetByTno(String tno);
	public int insertGrade(Score score);
	public List<Score> findNullGrade(String tno);
	public List<Score> findStuBySno(String sno);
	public List<Score> findScoreTeacher(String sno);
	public int update_GradeTeacher(Score score);
}
