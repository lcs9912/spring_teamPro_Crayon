package com.example.sample1.service;

import java.util.HashMap;
import java.util.List;

import com.example.sample1.model.Qna;

public interface QnaService {
	//Qna리스트 출력검색
	List<Qna> searchQnaList(HashMap<String, Object> map);
	//Qna글 추가	
	int addQna(HashMap<String, Object> map);
	//Qna 상세정보보기
	Qna searchQnaInfo(HashMap<String, Object> map);
	//Qna 글 수정
	int updateQna (HashMap<String, Object>map);
	//Qna글 삭제 (관리자용)
	int deleteQnaList(HashMap<String, Object>map);
	//Qna 자기글 삭제(숨겨짐)
	int hideQnaList(HashMap<String, Object>map);
	//Qna 댓글 출력
	List<Qna> searchQnaCommentList(HashMap<String, Object> map);
	//Qna 댓글 등록
	int addQnaComm(HashMap<String, Object> map);
	//Qna 댓글 삭제(숨겨짐)
	int hideComment (HashMap<String, Object> map);
}
