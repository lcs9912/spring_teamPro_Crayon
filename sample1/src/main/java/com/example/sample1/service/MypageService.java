package com.example.sample1.service;

import java.util.HashMap;
import java.util.List;

import com.example.sample1.model.Mypage;
import com.example.sample1.model.Product;

public interface MypageService {
	//유저 프로필 정보 변경 (닉네임, 이름)
	int editUserProfill(HashMap<String, Object> map);
	// 유저 프로필사진 출력
	Mypage searchUserImg(HashMap<String, Object> map);
	// 유저 프로필사진 변경
	int editUserImg(HashMap<String, Object> map);
	// 유저 포인트사용 내역 출력
	List<Mypage> searchUserPointList(HashMap<String, Object> map);
	// 유저 계좌 등록
	int addUserAccount(HashMap<String, Object> map);
	// 유저 관심 리스트
	List<Product> searchUserLikeList(HashMap<String, Object> map);
	// 유저 구매 판매 count 출력
	HashMap<String, Object> countUserBuyAndSell(HashMap<String, Object> map);
	// 유저 구매, 판매, 리스트
	HashMap<String, Object> searchUserBuyAndSellList(HashMap<String, Object> map);
	
	
}
