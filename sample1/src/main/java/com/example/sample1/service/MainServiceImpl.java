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

	@Override
	public List<Main> searchShopList(HashMap<String, Object> map) {
		// TODO Auto-generated method stub
		return mainMapper.selectShopList(map);
	}

	
	



}
