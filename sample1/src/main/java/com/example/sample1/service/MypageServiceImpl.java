package com.example.sample1.service;

import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.sample1.mapper.MypageMapper;
import com.example.sample1.mapper.UserMapper;
import com.example.sample1.model.User;

@Service
public class MypageServiceImpl implements MypageService{

	@Autowired
	MypageMapper mypageMapper;

	@Override
	public int editUserProfill(HashMap<String, Object> map) {
		// TODO Auto-generated method stub
		return mypageMapper.updateUserProfill(map);
	}

	

}
