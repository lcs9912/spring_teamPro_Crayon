package com.example.sample1.service;

import java.util.HashMap;
import java.util.List;

import com.example.sample1.model.Style;

public interface StyleService {
	//style 글 등록
	HashMap<String, Object> addStyle(HashMap<String, Object> map);
	//style 이미지 등록
	int addStyleImg(HashMap<String, Object> map);
	//style 글 조회
	List <Style> viewStyle(HashMap<String, Object> map);
	//style 메인페이지 조회
	List <Style> viewAllStyle(HashMap<String, Object> map);
	}