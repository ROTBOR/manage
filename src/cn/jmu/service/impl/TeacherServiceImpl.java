package cn.jmu.service.impl;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import cn.jmu.mapper.TeacherMapper;
import cn.jmu.po.Course;
import cn.jmu.po.Grade_set;
import cn.jmu.po.Score;
import cn.jmu.po.Student;
import cn.jmu.po.Teacher;
import cn.jmu.service.TeacherService;
@Service
public class TeacherServiceImpl implements TeacherService{
	@Resource(name="teacherMapper")
	private TeacherMapper teacherMapper;
	@Override
	public Teacher Teacher_Login(String tno, String userid) {
		Teacher teacher=teacherMapper.findByTno(tno);
		if(teacher!=null&&teacher.getUserid().equals(userid))
		{
			return teacher;
		}
		return null;
	}
	
	@Override
	public List<Score> findStuByTno(String tno) {
		return this.teacherMapper.findStuByTno(tno);
	}

	@Override
	public List<Course> findCourseByTno(String tno) {
		return this.teacherMapper.findCourseByTno(tno);
	}

	@Override
	public List<Grade_set> findSetByTno(String tno) {
		return this.teacherMapper.findSetByTno(tno);
	}

	@Override
	public int insertGrade(Score score) {
		return this.teacherMapper.insertGrade(score);
	}

	@Override
	public List<Score> findNullGrade(String tno) {
		return this.teacherMapper.findNullGrade(tno);
	}

	@Override
	public Score findScoreTeacher(String sno, String cou_class) {
		List<Score>list=this.teacherMapper.findScoreTeacher(sno);
		for(Score score:list)
		{
			if(score!=null&&score.getCou_classno().equals(cou_class))
			{
				return score;
			}
			
		}
		return null;
	}

	@Override
	public Score findScoreByCou_class(String sno, String cou_class) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int update_GradeTeacher(Score score) {
		return this.teacherMapper.update_GradeTeacher(score);
	}

	

	

}
