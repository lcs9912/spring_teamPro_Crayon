package com.example.sample1.service;

import java.util.HashMap;
import java.util.List;

import com.example.sample1.model.Main;



public interface MainService {
	
	// SHOP 리스트 출력
	List<Main> searchShopList(HashMap<String, Object> map);
	// 카테고리 1 , 2
	HashMap<String, Object> searchCategorie(HashMap<String, Object> map);
	//main cate man
	List<Main> seachMain(HashMap<String, Object> map);
	
	List<Main> seachPMain(HashMap<String, Object> map);
	
}
