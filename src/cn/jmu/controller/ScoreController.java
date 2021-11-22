package cn.jmu.controller;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import cn.jmu.po.Score;
import cn.jmu.service.ScoreService;
@Controller
public class ScoreController {
	@Resource(name="scoreServiceImpl")
	private ScoreService scoreService;
	@RequestMapping(value="/findScoreBySno.do")
	public String findScoreBySno(String sno,Model model)
	{
		List<Score>list=this.scoreService.findScoreBySno(sno);
		model.addAttribute("list", list);
		return "ScoreList";
	}
	
	@RequestMapping(value="/findScoreByTerm.do")
	public String findScoreByTerm(String sno,String term,Model model)
	{
		List<Score>list=this.scoreService.findScoreByTerm(sno,term);
		model.addAttribute("list", list);
		return "ScoreList";
	}
}
