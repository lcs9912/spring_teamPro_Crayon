package com.example.sample1.mapper;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.example.sample1.model.Main;



@Mapper
public interface MainMapper {
	
	// SHOP 리스트 출력
	List<Main> selectShopList (HashMap<String, Object> map);
	// 카테고리 1
	List<Main> selectCategorie1(HashMap<String, Object> map);
	// 카테고리 2
	List<Main> selectCategorie2(HashMap<String, Object> map);
	
	// 메인cate 
		List<Main>selectTmain(HashMap<String, Object> map);
}
