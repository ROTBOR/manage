package cn.jmu.controller;
import java.util.ArrayList;
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
import cn.jmu.po.Dean;
import cn.jmu.po.Report;
import cn.jmu.po.Score;
import cn.jmu.po.Student;
import cn.jmu.service.DeanService;
import cn.jmu.service.StudentService;
@Controller
public class DeanController {
	@Resource(name="deanServiceImpl")
	private DeanService deanService;
	
	@RequestMapping(value="/Dean_Login.do")
    public String checkLogin(Dean dean,Model model){
        //调用service方法
		dean=deanService.Dean_Login(dean.getDean_no(), dean.getUserid());
        //若有user则添加到model里并且跳转到成功页面
        if(dean!= null){
           model.addAttribute("dean", dean);
            return "dean_success";
        }
        return "dean_fail";
    }
	@RequestMapping(value="/Dean_Login_out.do")
	public String Login_out(HttpSession session){
        //通过session.invalidata()方法来注销当前的session
        session.invalidate();
        return "dean_login";
    }
	@RequestMapping(value="/findAllScore.do")
	public String findAllScore(Model model){
        List<Score>list=this.deanService.findAllScore();
        model.addAttribute("list", list);
        return "Dean_ScoreList";
    }
	@RequestMapping(value="/findLike.do")
	public String findLike(String sno,Model model){
		List<Score>list=this.deanService.findLike(sno);
		
        model.addAttribute("list",list);
        return "dean_find_do";
    }
	@RequestMapping(value="/findNull.do")
	public String findNull(Model model){
		List<Course>list=this.deanService.findNull();
        model.addAttribute("list",list);
        return "dean_null";
    }
	@RequestMapping(value="/findNotNull.do")
	public String findNotNull(Model model){
		List<Course>list=this.deanService.findNotNull();
        model.addAttribute("list",list);
        return "dean_courseList";
    }
	@RequestMapping(value="/findBycou_classno.do")
	public String findBycou_classno(String cou_classno,Model model){
		Course course=this.deanService.findBycou_classno(cou_classno);
		model.addAttribute("course", course);
        return "dean_updateTno";
    }
	@RequestMapping(value="/update_Tno.do")
	public String update_Tno(Course course,Model model){
		this.deanService.update_Tno(course);
		return "forward:/findNull.do";
    }
	@RequestMapping(value="/findScore.do")
	public String findScore(String sno,String cou_classno,Model model){
        Score score=this.deanService.findScore(sno,cou_classno);
        model.addAttribute("score", score);
        return "dean_updateGrade";
    }
	@RequestMapping(value="/update_Grade.do")
	public String update_Grade(Score score,Model model){
		this.deanService.update_Grade(score);
		return "forward:/findAllScore.do";
    }@RequestMapping(value="/showReportTable.do")
	public String showReportTable(Model model){
    	List<Report>list=this.deanService.showReportTable();
        model.addAttribute("list",list);
        return "dean_showReportTable";
    }
}
