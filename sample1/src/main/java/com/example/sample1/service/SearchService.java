package com.example.sample1.service;

import java.util.HashMap;
import java.util.List;

import com.example.sample1.model.Product;
import com.example.sample1.model.Search;

public interface SearchService {
	// 검색 테이블 정보
	List<Search> searchAll(HashMap<String, Object> map);
	
	//검색 내용 저장
	HashMap<String, Object> searchName(HashMap<String, Object> map);
	
	//유저의 검색기록
	List<Search> userSearchList(HashMap<String, Object> map);
	
	// 유저의 검색기록 삭제(사실은 업데이트)
	int removeSearchUser(HashMap<String, Object> map);
	
	// 유저의 검색기록 삭제(사실은 업데이트)
	int removeSearchAllUser(HashMap<String, Object> map);
	
	// 임시 물품 검색
	List<Search> searchProductList(HashMap<String, Object> map);
	
}
