package com.kh.portfolio.board.vo;

import java.sql.Timestamp;

import com.fasterxml.jackson.annotation.JsonFormat;

import lombok.Data;

@Data
public class RboardVO {
	
	private long rnum;						//RNUM	댓글번호
	private long bnum;						//BNUM	게시글번호
	private String rid;						//RID	작성자ID
	private String rnickname;			//RNICKNAME	작성자이름(별칭)
	@JsonFormat(pattern = "yyyy-mm-dd h:mm a", timezone = "Asia/Seoul")		
	private Timestamp rcdate;			//RCDATE	작성일
	@JsonFormat(pattern = "yyyy-mm-dd h:mm a", timezone = "Asia/Seoul")		
	private Timestamp	rudate;			//RUDATE	수정일
	private String rcontent;			//RCONTENT	본문내용
	private int rgroup;						//RGROUP	답글그룹
	private int rstep;						//RSTEP	답변글의 단계
	private int rindent;					//RINDENT	답변글의 들여쓰기
	private int prnum;						//prnum 부모댓글번호
	
	//선호도조사
	private int good;							//선호
	private int bad;							//비선호
	
	//공개투표시 사용
	//List<VoteVO> voteList;
}
