package cn.jmu.controller;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;

import cn.jmu.po.Course;
import cn.jmu.po.Grade_set;
import cn.jmu.po.Score;
import cn.jmu.po.Student;
import cn.jmu.po.Teacher;
import cn.jmu.service.ScoreService;
import cn.jmu.service.TeacherService;
@Controller
public class TeacherController {
	@Resource(name="teacherServiceImpl")
	private TeacherService teacherService;
	@RequestMapping(value="/Teacher_Login.do")
	public String checkLogin(Teacher teacher,Model model){
        //调用service方法
		teacher=teacherService.Teacher_Login(teacher.getTno(), teacher.getUserid());
        //若有user则添加到model里并且跳转到成功页面
        if(teacher != null){
           model.addAttribute("teacher", teacher);
           model.addAttribute("tno",teacher.getTno());
            return "teacher_success";
        }
        return "teacher_fail";
    }
	@RequestMapping(value="/Teacher_Login_out.do")
	public String Login_out(HttpSession session){
        //通过session.invalidata()方法来注销当前的session
        session.invalidate();
        return "teacher_login";
    } 
	@RequestMapping(value="/findStuByTno.do")
	public String findScoreBySno(String tno,Model model)
	{
		List<Score>list=this.teacherService.findStuByTno(tno);
		model.addAttribute("list", list);
		return "Teacher_ScoreList";
	}
	@RequestMapping(value="/findCourseByTno.do")
	public String findCourseBySno(String tno,Model model)
	{
		List<Course>list=this.teacherService.findCourseByTno(tno);
		model.addAttribute("list", list);
		return "Teacher_Course";
	}
	@RequestMapping(value="/findSetByTno.do")
	public String findSetBySno(String tno,Model model)
	{
		List<Grade_set>list=this.teacherService.findSetByTno(tno);
		model.addAttribute("list", list);
		return "Teacher_set";
	}
	@RequestMapping(value="/insertGrade.do")
	public String insertGrade(Score score,Model model)
	{
		this.teacherService.insertGrade(score);
		return "insert_success";
	}
	@RequestMapping(value="/findNullGrade.do")
	public String findNullGrade(String tno,Model model){
		List<Score>list=this.teacherService.findNullGrade(tno);
        model.addAttribute("list",list);
        return "teacher_null";
    }
	@RequestMapping(value="/findScoreByCou_class.do")
	public String findScoreByCou_class(String sno,String cou_classno,Model model){
		Score score=this.teacherService.findScoreByCou_class(sno,cou_classno);
		model.addAttribute("score", score);
		return "teacher_upateGrade";
		
    }
	@RequestMapping(value="/findScoreTeacher.do")
	public String findScoreTeacher(String sno,String cou_classno,Model model){
        Score score=this.teacherService.findScoreTeacher(sno, cou_classno);
        model.addAttribute("score", score);
        return "teacher_updateGrade";
    }
	@RequestMapping(value="/update_GradeTeacher.do")
	public String update_Grade(Score score,Model model){
		this.teacherService.update_GradeTeacher(score);
		return "insert_success";
    }
}
