package com.example.sample1.service;

import java.util.HashMap;
import java.util.List;

import com.example.sample1.model.Qna;

public interface QnaService {
	
	List<Qna> searchQnaList(HashMap<String, Object> map);
}
