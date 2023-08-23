package com.example.sample1.mapper;

import java.util.HashMap;

import org.apache.ibatis.annotations.Mapper;

import com.example.sample1.model.Mypage;
import com.example.sample1.model.User;

@Mapper
public interface MypageMapper {
	
	// 유저 프로필 정보 변경 (닉네임, 이름)
	int updateUserProfill(HashMap<String, Object> map);
	// 유저 프로필 사진 출력
	Mypage selectUserImg(HashMap<String, Object> map);
	// 유저 프로필 사진 변경
	int updateUserImg(HashMap<String, Object> map);
}
