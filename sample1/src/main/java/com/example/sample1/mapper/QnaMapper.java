package com.example.sample1.mapper;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.example.sample1.model.Qna;

@Mapper
public interface QnaMapper {
	//Qna리스트 출력검색
	List<Qna> selectQnaList(HashMap<String, Object> map);
	//Qna글 추가
	int insertQna(HashMap<String, Object>map);
	//Qna 상세정보보기
	Qna selectQnaInfo (HashMap<String, Object>map);
	//Qna 글 수정
	int updateQna (HashMap<String, Object>map);
	//Qna글 삭제 (관리자용)
	int deleteQnaList (HashMap<String, Object>map);
	//Qna 자기글 삭제(숨겨짐)
	int hideQnaList (HashMap<String, Object>map);
	//Qna 댓글 출력
	List<Qna> selectQnaComment(HashMap<String, Object> map);
	//Qna 댓글 등록
	int insertQnaComm (HashMap<String, Object>map);
	//Qna 댓글 삭제(숨겨짐)
	int hideComment (HashMap<String, Object>map);
}
