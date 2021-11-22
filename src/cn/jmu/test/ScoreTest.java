package cn.jmu.test;
import java.util.List;

import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import cn.jmu.po.Score;
import cn.jmu.service.ScoreService;
public class ScoreTest {
	@Test
	public void findStuByStudentId(){
		ApplicationContext act=new ClassPathXmlApplicationContext("classpath:applicationContext.xml");
		ScoreService scoreService=(ScoreService)act.getBean("scoreServiceImpl");
		List<Score>list=scoreService.findScoreBySno("s1");
		for(Score s:list)
		{
			System.out.println(s.toString());
		}
		
		
	}
}
