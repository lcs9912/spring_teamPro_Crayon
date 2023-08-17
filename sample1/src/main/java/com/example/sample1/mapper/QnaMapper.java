package com.example.sample1.mapper;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.example.sample1.model.Qna;
import com.example.sample1.model.Search;

@Mapper
public interface QnaMapper {
	List<Qna> selectQnaList(HashMap<String, Object> map);
	
	int insertQna(HashMap<String, Object>map);
	
	Qna selectQnaInfo (HashMap<String, Object>map);
	
	int updateQna (HashMap<String, Object>map);
	
	int deleteQnaList (HashMap<String, Object>map);
	
	int hideQnaList (HashMap<String, Object>map);
	
	List<Qna> selectQnaComment(HashMap<String, Object> map);
	
	int insertQnaComm (HashMap<String, Object>map);
	
	int hideComment (HashMap<String, Object>map);
}
