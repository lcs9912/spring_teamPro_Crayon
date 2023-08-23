package com.example.sample1.mapper;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.example.sample1.model.Style;

@Mapper
public interface StyleMapper {
	//style 글 등록
	int insertStyle(HashMap<String, Object> map);
	//style 글 조회
	List<Style> selectStyle(HashMap<String, Object> map);
}
