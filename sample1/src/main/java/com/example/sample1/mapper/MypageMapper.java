package com.example.sample1.mapper;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.example.sample1.model.Mypage;
import com.example.sample1.model.Product;

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
	// 우저 관심 리스트
	List<Product> selectUserLikeList(HashMap<String, Object> map);
	// 유저 구매입찰 갯수
	int selectUserBuyCount(HashMap<String, Object> map);
	// 유저 판매입찰 갯수
	int selectUserSellCount(HashMap<String, Object> map);
	// 유저 구매완료
	int selectUserBuyCommitCount(HashMap<String, Object> map);
	// 유저 판매완료
	int selectUserSellCommitCount(HashMap<String, Object> map);
	// 유저의 구매 리스트
	List<Product> selectUserBuyList(HashMap<String, Object> map);
	// 유저의 판매 리스트
	List<Product> selectUserSellList(HashMap<String, Object> map);

}
