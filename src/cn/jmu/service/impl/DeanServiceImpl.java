package cn.jmu.service.impl;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import cn.jmu.mapper.DeanMapper;
import cn.jmu.po.Course;
import cn.jmu.po.Dean;
import cn.jmu.po.Report;
import cn.jmu.po.Score;
import cn.jmu.service.DeanService;
@Service
public class DeanServiceImpl implements DeanService{
	@Resource(name="deanMapper")
	private DeanMapper deanMapper;
	@Override
	public Dean Dean_Login(String dean_no, String userid) {
		Dean dean=deanMapper.findByDean_no(dean_no);
		if(dean!=null&&dean.getUserid().equals(userid))
		{return dean;}
		return null;
	}
	@Override
	public List<Score> findAllScore() {
		return this.deanMapper.findAllScore();
	}
	@Override
	public List<Score> findLike(String sno) {
		return this.deanMapper.findLike(sno);
	}
	@Override
	public List<Course> findNull() {
		return this.deanMapper.findNull();
	}
	@Override
	public Course findBycou_classno(String cou_classno) {
		return this.deanMapper.findBycou_classno(cou_classno);
	}
	@Override
	public int update_Tno(Course course) {
		return this.deanMapper.update_Tno(course);
	}
	@Override
	public List<Course> findNotNull() {
		return this.deanMapper.findNotNull();
	}
	@Override
	public Score findScore(String sno, String cou_class) {
		List<Score>list=this.deanMapper.findScore(sno);
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
	public int update_Grade(Score score) {
		return this.deanMapper.update_Grade(score);
	}
	@Override
	public List<Report> showReportTable() {
		return this.deanMapper.showReportTable();
	}

}
