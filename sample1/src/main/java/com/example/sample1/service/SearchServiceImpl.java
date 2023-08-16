package com.example.sample1.service;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.sample1.mapper.SearchMapper;
import com.example.sample1.model.Product;
import com.example.sample1.model.Search;
import com.example.sample1.model.Test;

@Service
public class SearchServiceImpl implements SearchService{

	@Autowired
	SearchMapper searchMapper;

	
	// 검색 테이블 정보
	@Override
	public List<Search> searchAll(HashMap<String, Object> map) {
		// TODO Auto-generated method stub
		return searchMapper.selectSearchAll(map);
	}

	// 검색 내용 저장
	@Override
	public HashMap<String, Object> searchName(HashMap<String, Object> map) {
		// TODO Auto-generated method stub
		HashMap<String, Object> resultMap = new HashMap<String, Object>();
		Search search = searchMapper.selectSearchName(map); // 검색 내역조회
		
		if(search != null) { 
			searchMapper.updateSearchCnt(map); // 검색 cnt + 1
		   
		} else {
			searchMapper.insertSearchName(map); // 검색어 저장
			searchMapper.updateSearchCnt(map); // 검색 cnt + 1 
			
		}
		 
		
		return null;
	}

	// 유저의 검색기록
	@Override
	public List<Search> userSearchList(HashMap<String, Object> map) {
		// TODO Auto-generated method stub
		return searchMapper.selectUserSearch(map);
	}

	// 유저의 검색기록 삭제(사실은 업데이트)
	@Override
	public int removeSearchUser(HashMap<String, Object> map) {
		// TODO Auto-generated method stub
		return searchMapper.deleteSearchUser(map);
	}

	// 임시 상품목록 검색
	@Override
	public List<Search> searchProductList(HashMap<String, Object> map) {
		// TODO Auto-generated method stub
		return searchMapper.selectProductSearchList(map);
	}

	@Override
	public int removeSearchAllUser(HashMap<String, Object> map) {
		// TODO Auto-generated method stub
		return searchMapper.deleteSearchAllUser(map);
	}
	
	
	
	

}
