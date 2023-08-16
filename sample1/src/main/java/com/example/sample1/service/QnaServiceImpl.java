package com.example.sample1.service;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.sample1.mapper.QnaMapper;
import com.example.sample1.model.Qna;

@Service
public class QnaServiceImpl implements QnaService{
	
	@Autowired
	QnaMapper qnaMapper;
	
	@Override
	public List<Qna> searchQnaList(HashMap<String, Object> map) {
		// TODO Auto-generated method stub
		return qnaMapper.selectQnaList(map);
	}

}
