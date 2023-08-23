package com.example.sample1.service;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.sample1.mapper.StyleMapper;
import com.example.sample1.model.Style;

@Service
public class StyleServiceImpl implements StyleService{
	@Autowired
	StyleMapper styleMapper;

	//스타일 글 등록
	@Override
	public int addStyle(HashMap<String, Object> map) {
		// TODO Auto-generated method stub
		return styleMapper.insertStyle(map);
	}

	//style 글 조회
	@Override
	public List<Style> viewStyle(HashMap<String, Object> map) {
		// TODO Auto-generated method stub
		return styleMapper.selectStyle(map);
	}
	
}
