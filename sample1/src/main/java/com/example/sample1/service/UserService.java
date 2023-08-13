package com.example.sample1.service;

import java.util.HashMap;

import com.example.sample1.model.User;

public interface UserService {
	// 회원가입
	int insertUser(HashMap<String, Object> map);
	// 로그인 아이디 비번 둘다 조회
	HashMap<String, Object> searchUserLoginAllCheck(HashMap<String, Object> map);
	// 아이디 중복체크
	User searchUserLoginIdCheck(HashMap<String, Object> map);
	
	
}
