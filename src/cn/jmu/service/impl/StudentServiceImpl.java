package cn.jmu.service.impl;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import cn.jmu.mapper.StudentMapper;
import cn.jmu.po.Student;
import cn.jmu.service.StudentService;
@Service
public class StudentServiceImpl implements StudentService{
	@Resource(name="studentMapper")
	private StudentMapper studentMapper;

	@Override
	public Student Student_Login(String sno, String userid) {
		Student stu=studentMapper.findBySno(sno);
		if(stu!=null&&stu.getUserid().equals(userid))
		{return stu;}
		else
			return null;
	}
	

}
