package com.example.sample1.model;

import lombok.Data;

@Data
public class Qna {
	private String qnaNumber; // 게시판번호 시퀀스
	private String qnaTypeName; // 게시글종류
	private String qnaType; // 게시글종류번호
	private String qnaTitle; // 게시글 제목
	private String userId; // 작성자
	private String qnaContents; // 게시글 내용
	private String qnaDate; // 등록 날짜
	private String qnaUpdate; // 수정 날짜
	private String qnaAnsweryn; // 답변완료여부  
	private String qnaCnt; // 게시글 조회수
	private String qnaDelyn; // 게시글 삭제여부 
	private int  comCnt; // 게시글 조회수

	 
	
	private String commentNumber; // 댓글번호 시퀀스
	private String qNumber; // 게시판 번호 (FK)
	private String commentContents; // 댓글내용
	private String cuserId; // 댓글 작성자
	private String commentDate; // 댓글등록 날짜
	private String commentUpdate; // 댓글수정 날짜
	private String commentDelyn; // 댓글삭제 
	
	
	
}
