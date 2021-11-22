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

import cn.jmu.po.Student;
import cn.jmu.service.StudentService;
@Controller
public class StudentController {
	@Resource(name="studentServiceImpl")
	private StudentService studentService;
	
	@RequestMapping(value="/Student_Login.do")
    public String checkLogin(Student stu,Model model,HttpSession session){
        //����service����
		stu=studentService.Student_Login(stu.getSno(), stu.getUserid());
        //����user����ӵ�model�ﲢ����ת���ɹ�ҳ��
        if(stu != null){
           session.setAttribute("sno", stu.getSno());
           session.setAttribute("sname", stu.getSname());
           model.addAttribute("student", stu);
            return "forward:findScoreBySno.do";
        }
        return "student_fail";
    }
	@RequestMapping(value="/Login_out.do")
	public String Login_out(HttpSession session){
        //ͨ��session.invalidata()������ע����ǰ��session
        session.invalidate();
        return "student_login";
    }

}
