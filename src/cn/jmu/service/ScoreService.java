package cn.jmu.service;

import java.util.List;

import cn.jmu.po.Score;

public interface ScoreService {
	public List<Score> findScoreBySno(String sno);
	public List<Score> findScoreByTerm(String sno, String term);
}
