package cn.jmu.mapper;

import java.util.List;

import cn.jmu.po.Score;

public interface ScoreMapper {
	public List<Score> findScoreBySno(String sno);
	public List<Score> findScoreByTerm(String sno, String term);
}
