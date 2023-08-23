package com.example.sample1.service;

import java.util.HashMap;

import com.example.sample1.model.Mypage;

public interface MypageService {
	//유저 프로필 정보 변경 (닉네임, 이름)
	int editUserProfill(HashMap<String, Object> map);
	// 유저 프로필사진 출력
	Mypage searchUserImg(HashMap<String, Object> map);
	// 유저 프로필사진 변경
	int editUserImg(HashMap<String, Object> map);
	
	
}
