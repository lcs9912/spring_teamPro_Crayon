package com.example.sample1.mapper;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.example.sample1.model.Product;

@Mapper
public interface ProductMapper {
	//상품 등록
	int insertProduct(HashMap<String, Object> map);
	//상품 이미지 업로드
	int insertProductImg(HashMap<String, Object> map);
	//상품 이미지 조회
	Product selectProductImg(HashMap<String, Object> map);
	//상품 사이즈 조회
	List<Product> selectSize(HashMap<String, Object> map);
	//상품 구매/판매 처리 시 사이즈 조회
	Integer selectPaySize(HashMap<String, Object> map);
	//상품 브랜드 조회
	List<Product> selectBrand(HashMap<String, Object> map);
	//브랜드 이름 직접입력
	int insertBrand(HashMap<String, Object> map);// 여기까지 지우셈
	// 상품상세정보
	List<Product> selectProductInfo(HashMap<String, Object> map);
	// 즉시 판매가 
	Product selectSellMinPrice(HashMap<String, Object> map);
	// 즉시 구매가
	Product selectBuyMinPrice(HashMap<String, Object> map);
	// 최근 거래가
	Product selectRecentTransaction(HashMap<String, Object> map);
	// 관심 상품 등록
	int insertInterest(HashMap<String, Object> map);
	// 관심 상품 조회
	Product selectInterest(HashMap<String, Object> map);
	// 유저 관심상품 삭제
	int deleteInterest(HashMap<String, Object> map);
	//상품 테이블 관심 cnt + 1
	int plusInterestCnt(HashMap<String, Object> map);
	//상품 테이블 관심 cnt - 1
	int minusdateInterestCnt(HashMap<String, Object> map);
	// 상품 출시일
	Product selectProMindate(HashMap<String, Object> map);
}
