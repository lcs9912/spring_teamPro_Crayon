package com.example.sample1.service;

import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.sample1.mapper.UserMapper;

@Service
public class UserServiceImpl implements UserService{

	@Autowired
	UserMapper userMapper;

	@Override //회원가입
	public int insertUser(HashMap<String, Object> map) {
		// TODO Auto-generated method stub
		return userMapper.insert(map);
	}

	@Override //아이디 중복체크
	public int userIdCheck(HashMap<String, Object> map) {
		// TODO Auto-generated method stub
		return userMapper.idCheck(map);
	}
	
	

}
