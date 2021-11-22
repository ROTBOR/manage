package cn.jmu.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import cn.jmu.mapper.ScoreMapper;
import cn.jmu.po.Score;
import cn.jmu.service.ScoreService;
@Service
public class ScoreServiceImpl implements ScoreService{
	@Resource(name="scoreMapper")
	private ScoreMapper scoreMapper;

	@Override
	public List<Score> findScoreBySno(String sno) {
		return this.scoreMapper.findScoreBySno(sno);
	}

	@Override
	public List<Score> findScoreByTerm(String sno, String term) {
		return this.scoreMapper.findScoreByTerm(sno,term);
	}

	
	
	
}
