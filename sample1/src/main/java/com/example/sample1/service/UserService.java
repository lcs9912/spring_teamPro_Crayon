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
	// 이메일, 비번, 전화번호 마스킹
	HashMap<String, Object> searchMaskedinfo(HashMap<String, Object> map);
	// 로그인정보 수정 
	int editUserLoginInfo(HashMap<String, Object> map);
	// 유저 힌트 확인
	int searchPwdHintAnswer(HashMap<String, Object> map);
	// 이메일 아이디 비번 확인
	int searchEmailIdPwd(HashMap<String, Object> map);
	// 유저 탈퇴처리
	int removeUserInfo(HashMap<String, Object> map);
	
	
}
