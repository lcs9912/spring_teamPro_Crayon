package com.example.sample1.mapper;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.example.sample1.model.Mypage;
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
	// 유저 힌트 확인
	int selectPwdHintAnswer(HashMap<String, Object> map);
	// 이메일 아이디 비번 같은지
	int selectEmailIdPwd(HashMap<String, Object> map);
	// 유저 탈퇴 처리
	int updateUserInfoRemove(HashMap<String, Object> map);
	// POINT_TBL포인트 입력
	int insertPointHistory(HashMap<String, Object> map);
	//user_point plus
	int updateUserPointPlus(HashMap<String, Object> map);
	// 유저 주소 입력
	int insertUserAddr(HashMap<String, Object> map);
	// 유저 주소 출력
	List<Mypage>selectUserAddr(HashMap<String, Object> map);
	// 유저 기본프로필 설정
	int insertUserDefaultImg(HashMap<String, Object> map);
	// 마이페이지 유저 신발 사이즈 변경
	int updateUserSize(HashMap<String, Object> map);
	// 마이페이지 유저테이블 사이즈 테이블 조인 출력
	User selectUserJoinSize(HashMap<String, Object> map);
	
}
