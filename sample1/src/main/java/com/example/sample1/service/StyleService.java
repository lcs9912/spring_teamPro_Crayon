package com.example.sample1.service;

import java.util.HashMap;
import java.util.List;

import com.example.sample1.model.Style;

public interface StyleService {
	//스타일 글 등록
	int addStyle(HashMap<String, Object> map);
	//style 글 조회
	List <Style> viewStyle(HashMap<String, Object> map);
}
