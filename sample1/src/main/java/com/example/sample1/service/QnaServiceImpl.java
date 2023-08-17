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

	@Override
	public int addQna(HashMap<String, Object> map) {
		// TODO Auto-generated method stub
		return qnaMapper.insertQna(map);
	}

	@Override
	public Qna searchQnaInfo(HashMap<String, Object> map) {
		// TODO Auto-generated method stub
		return qnaMapper.selectQnaInfo(map);
	}

	@Override
	public int updateQna(HashMap<String, Object> map) {
		// TODO Auto-generated method stub
		return qnaMapper.updateQna(map);
	}

	@Override
	public int deleteQnaList(HashMap<String, Object> map) {
		// TODO Auto-generated method stub
		return qnaMapper.deleteQnaList(map);
	}

	@Override
	public int hideQnaList(HashMap<String, Object> map) {
		// TODO Auto-generated method stub
		return qnaMapper.hideQnaList(map);
	}

	@Override
	public List<Qna> searchQnaCommentList(HashMap<String, Object> map) {
		// TODO Auto-generated method stub
		return qnaMapper.selectQnaComment(map);
	}

	@Override
	public int addQnaComm(HashMap<String, Object> map) {
		// TODO Auto-generated method stub
		return qnaMapper.insertQnaComm(map);
	}

	@Override
	public int hideComment(HashMap<String, Object> map) {
		// TODO Auto-generated method stub
		return qnaMapper.hideComment(map);
	}

}
