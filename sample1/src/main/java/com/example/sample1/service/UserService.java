package com.example.sample1.service;

import java.util.HashMap;

public interface UserService {
	// 회원가입
	int insertUser(HashMap<String, Object> map);
	// 아이디 중복체크
	int userIdCheck(HashMap<String, Object> map);
	// 로그인 아이디 비번 둘다 조회
	HashMap<String, Object> searchUserLoginAllCheck(HashMap<String, Object> map);
	
	
}
