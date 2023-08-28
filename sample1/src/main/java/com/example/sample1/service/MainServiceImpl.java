package com.example.sample1.service;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.sample1.mapper.MainMapper;
import com.example.sample1.model.Main;

@Service
public class MainServiceImpl implements MainService{
	@Autowired
	MainMapper mainMapper;

	// shop 리스트 출력
	@Override
	public List<Main> searchShopList(HashMap<String, Object> map) {
		// TODO Auto-generated method stub
		return mainMapper.selectShopList(map);
	}

	// 카테고리 리스트 출력
	@Override
	public HashMap<String, Object> searchCategorie(HashMap<String, Object> map) {
		// TODO Auto-generated method stub
		HashMap<String, Object> resultMap = new HashMap<String, Object>();
		List<Main> cate1 =  mainMapper.selectCategorie1(map); // 카테고리 1
		List<Main> cate2 =  mainMapper.selectCategorie2(map); // 카테고리 1
		resultMap.put("cate1", cate1);
		resultMap.put("cate2", cate2);
		return resultMap;
	}

	
	// 검색 
	@Override
	public List<Main> seachMain(HashMap<String, Object> map) {
		// TODO Auto-generated method stub
		return mainMapper.selectTmain(map);
	}

	@Override
	public List<Main> seachPMain(HashMap<String, Object> map) {
		// TODO Auto-generated method stub
		return mainMapper.selectPmain(map);
	}
	
	



}
