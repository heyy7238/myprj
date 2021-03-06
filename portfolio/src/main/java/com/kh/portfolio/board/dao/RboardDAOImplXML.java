package com.kh.portfolio.board.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.mybatis.spring.SqlSessionTemplate;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Repository;

import com.kh.portfolio.board.vo.RboardVO;
import com.kh.portfolio.board.vo.VoteVO;

@Repository
public class RboardDAOImplXML implements RboardDAO {

	final private static Logger logger
		= LoggerFactory.getLogger(RboardDAOImplXML.class);
	
	@Inject
	SqlSessionTemplate sqlSession;
	
	//댓글 작성
	@Override
	public int write(RboardVO rboardVO) {
	
		return sqlSession.insert("mappers.RboardDAO-mapper.write", rboardVO);
	}

	//댓글 목록
	@Override
	public List<RboardVO> list(int bnum, int startRec, int endRec) {
		Map<String, Object> map = new HashMap<>();
		map.put("bnum", bnum);
		map.put("startRec", startRec);
		map.put("endRec", endRec);
		return sqlSession.selectList("mappers.RboardDAO-mapper.list", map);
	}
	//댓글 수정
	@Override
	public int modify(RboardVO rboardVO) {

		return sqlSession.update("mappers.RboardDAO-mapper.modify", rboardVO);
	}
	//댓글 삭제
	@Override
	public int delete(String rnum) {

		return sqlSession.delete("mappers.RboardDAO-mapper.delete", Long.valueOf(rnum));
	}
	//대댓글 작성
	@Override
	public int reply(RboardVO rboardVO) {
		//1) 이전댓글 step 업데이트
		updateStep(rboardVO.getRgroup(), rboardVO.getRstep());
		//2) 대댓글 작성
		return sqlSession.insert("mappers.RboardDAO-mapper.reply", rboardVO);
	}
	
	//이전댓글 step 업데이트
	private int updateStep(int rgroup, int rstep) {
		Map<String,Object> map = new HashMap<>();
		map.put("rgroup", rgroup);
		map.put("rstep", rstep);
		return sqlSession.update("mappers.RboardDAO-mapper.updateStep", map);
	}
	
	//댓글 호감, 비호감
	@Override
	public int checkVote(VoteVO voteVO) {
		return sqlSession.selectOne("mappers.RboardDAO-mapper.checkVote", voteVO);
	}

	@Override
	public int insertVote(VoteVO voteVO) {
		return sqlSession.insert("mappers.RboardDAO-mapper.insertVote", voteVO);
	}

	@Override
	public int updateVote(VoteVO voteVO) {
		return sqlSession.update("mappers.RboardDAO-mapper.updateVote", voteVO);
	}

	@Override
	public int mergeVote(VoteVO voteVO) {
	
		return sqlSession.update("mappers.RboardDAO-mapper.mergeVote", voteVO);
	}
	
	//댓글 총계
	@Override
	public int replyTotalRec(String bnum) {

		return sqlSession.selectOne("mappers.RboardDAO-mapper.replyTotalRec", Long.valueOf(bnum));
	}

}
