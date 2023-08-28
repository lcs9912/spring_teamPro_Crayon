package com.example.sample1.service;

import java.util.HashMap;
import java.util.List;

import com.example.sample1.model.Mypage;
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
	// 유저 포인트 충전
	int userPointPlus(HashMap<String, Object> map);
	//유저 주소입력
	int useraddrInput(HashMap<String, Object> map);
	// 유저 주소 출력
	List<Mypage> searchUserAddr(HashMap<String, Object> map);
	// 마이페이지 유저 신발사이즈 변경
	int editUserSize(HashMap<String, Object> map);
	// 마이페이지 유저테이블 사이즈 테이블 조인 출력 
	User searchUserJoinSize(HashMap<String, Object> map);
	//관리자 페이지 유저 리스트 
	List <User> searchUserList(HashMap<String, Object> map);
	// 유저 아이디 찾기
	User searchUserId(HashMap<String, Object> map);
	// 유저 비밀번호 찾기
	User searchUserPwd(HashMap<String, Object> map);
	
	
	
}
