package com.example.sample1.service;

import java.util.HashMap;
import java.util.List;

import com.example.sample1.model.Qna;

public interface QnaService {
	
	List<Qna> searchQnaList(HashMap<String, Object> map);
	
	int addQna(HashMap<String, Object> map);
	
	Qna searchQnaInfo(HashMap<String, Object> map);
	
	int updateQna (HashMap<String, Object>map);
	
	int deleteQnaList(HashMap<String, Object>map);

	int hideQnaList(HashMap<String, Object>map);
	
	List<Qna> searchQnaCommentList(HashMap<String, Object> map);
	
	int addQnaComm(HashMap<String, Object> map);
	 
	int hideComment (HashMap<String, Object> map);
}
