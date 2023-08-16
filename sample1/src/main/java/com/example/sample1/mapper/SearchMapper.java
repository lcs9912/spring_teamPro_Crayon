package com.example.sample1.mapper;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.example.sample1.model.Product;
import com.example.sample1.model.Search;

@Mapper
public interface SearchMapper {
	// 검색 테이블 정보
	List<Search> selectSearchAll(HashMap<String, Object> map);
	
	// 검색어 저장
	int insertSearchName(HashMap<String, Object> map);
	
	// 검색어 cnt +1
	int updateSearchCnt(HashMap<String, Object> map);
	
	// 검색내역 체크
	Search selectSearchName(HashMap<String, Object> map);
	
	// 유저의 검색기록
	List<Search> selectUserSearch(HashMap<String, Object> map);
	
	// 유저의 검색기록 삭제(사실은 업데이트)
	int deleteSearchUser(HashMap<String, Object> map);
	// 유저의 모든 검색기록 삭제(사실은 업데이트)
	int deleteSearchAllUser(HashMap<String, Object> map);
	
	// 임시 물품 검색
	List<Search> selectProductSearchList(HashMap<String, Object> map);
}
