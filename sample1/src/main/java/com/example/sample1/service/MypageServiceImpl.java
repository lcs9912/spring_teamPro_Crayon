package com.example.sample1.service;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.sample1.mapper.MypageMapper;

import com.example.sample1.model.Mypage;
import com.example.sample1.model.Product;


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
	@Override
	public List<Mypage> searchUserPointList(HashMap<String, Object> map) {
		// TODO Auto-generated method stub
		return mypageMapper.selectUserPointList(map);
	}
	@Override
	public int addUserAccount(HashMap<String, Object> map) {
		// TODO Auto-generated method stub
		return mypageMapper.insertUserAccount(map);
	}
	@Override
	public List<Product> searchUserLikeList(HashMap<String, Object> map) {
		// TODO Auto-generated method stub
		return mypageMapper.selectUserLikeList(map);
	}
	@Override
	public HashMap<String, Object> countUserBuyAndSell(HashMap<String, Object> map) {
		// TODO Auto-generated method stub
		HashMap<String, Object> resultMap = new HashMap<String, Object>();
		int buy = mypageMapper.selectUserBuyCount(map); // 유저 구매입찰 갯수
		int sell = mypageMapper.selectUserSellCount(map); // 유저 판매입찰 갯수
		int buyCom = mypageMapper.selectUserBuyCommitCount(map); // 유저 구매완료
		int sellCom = mypageMapper.selectUserSellCommitCount(map); // 유저 판매완료
		
		resultMap.put("buy", buy);
		resultMap.put("sell", sell);
		resultMap.put("buyCom", buyCom);
		resultMap.put("sellCom", sellCom);
		return resultMap;
	}

}
