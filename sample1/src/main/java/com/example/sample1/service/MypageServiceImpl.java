package com.example.sample1.service;

import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.sample1.mapper.MypageMapper;
import com.example.sample1.mapper.UserMapper;
import com.example.sample1.model.Mypage;
import com.example.sample1.model.User;

@Service
public class MypageServiceImpl implements MypageService{

	@Autowired
	MypageMapper mypageMapper;

	//유저 프로필 정보 변경 (닉네임, 이름)
	@Override
	public int editUserProfill(HashMap<String, Object> map) {
		// TODO Auto-generated method stub
		return mypageMapper.updateUserProfill(map);
	}
	// 유저 프로필 이미지 출력
	@Override
	public Mypage searchUserImg(HashMap<String, Object> map) {
		// TODO Auto-generated method stub
		return mypageMapper.selectUserImg(map);
	}
	// 유저 프로필 이미지 변경
	@Override
	public int editUserImg(HashMap<String, Object> map) {
		// TODO Auto-generated method stub
		
		return mypageMapper.updateUserImg(map);
	}

}
