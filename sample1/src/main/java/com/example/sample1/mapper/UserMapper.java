package com.example.sample1.mapper;

import java.util.HashMap;

import org.apache.ibatis.annotations.Mapper;

import com.example.sample1.model.User;

@Mapper
public interface UserMapper {
	// 회원가입
	int insert(HashMap<String, Object> map);
	// 로그인 select 아이디 비번 조회
	User selectUserLoginAllCheck(HashMap<String, Object> map);
	// 로그인 select 아이디 조회 or 아이디 중복체크
	User selectUserLoginIdCheck(HashMap<String, Object> map);	
	// 로그인 실패시 USER_LOGIN_CNT + 1
	int updateUserLoginCnt(HashMap<String, Object> map);	
	// 로그인 성공시 USER_LOGIN_CNT 초기화
	int updateUserLoginCntReset(HashMap<String, Object> map);
	// 이메일, 비번, 전화번호 마스킹
	User selectMaskedinfo(HashMap<String, Object> map);
	// 로그인정보 수정 
	int updateUserLoginInfo(HashMap<String, Object> map);
}
