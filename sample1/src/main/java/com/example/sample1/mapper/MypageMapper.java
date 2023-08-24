package com.example.sample1.mapper;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.example.sample1.model.Mypage;

@Mapper
public interface MypageMapper {
	
	// 유저 프로필 정보 변경 (닉네임, 이름)
	int updateUserProfill(HashMap<String, Object> map);
	// 유저 프로필 사진 출력
	Mypage selectUserImg(HashMap<String, Object> map);
	// 유저 프로필 사진 변경
	int updateUserImg(HashMap<String, Object> map);
	// 유저 포인트 사용 내욕
	List<Mypage> selectUserPointList(HashMap<String, Object> map);
	// 유저 계좌등록
	int insertUserAccount(HashMap<String, Object> map);

}
