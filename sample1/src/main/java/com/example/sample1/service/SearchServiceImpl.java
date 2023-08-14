package com.example.sample1.service;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.sample1.mapper.SearchMapper;
import com.example.sample1.model.Search;
import com.example.sample1.model.Test;

@Service
public class SearchServiceImpl implements SearchService{

	@Autowired
	SearchMapper searchMapper;

	@Override
	public List<Search> searchAll(HashMap<String, Object> map) {
		// TODO Auto-generated method stub
		return searchMapper.selectSearchAll(map);
	}
	
	

}
