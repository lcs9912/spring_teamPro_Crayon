package com.example.sample1.mapper;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.annotations.Mapper;


import com.example.sample1.model.ProductLcs;

@Mapper
public interface ProductLcsMapper {
	//상품 등록
	int insertProduct(HashMap<String, Object> map);
	//상품 이미지 업로드
	int insertProductImg(HashMap<String, Object> map);
	//상품 브랜드 조회
	List<ProductLcs> selectBrand(HashMap<String, Object> map);
	//브랜드 이름 직접입력
	int insertBrand(HashMap<String, Object> map);// 여기까지 지우셈
	// 상품상세정보
	ProductLcs selectProductInfo(HashMap<String, Object> map);
	// 즉시 판매가 
	ProductLcs selectSellMinPrice(HashMap<String, Object> map);
	// 즉시 구매가
	ProductLcs selectBuyMinPrice(HashMap<String, Object> map);
	// 최근 거래가
	ProductLcs selectRecentTransaction(HashMap<String, Object> map);
	// 관심 상품 등록
	int insertInterest(HashMap<String, Object> map);
	// 관심 상품 조회
	ProductLcs selectInterest(HashMap<String, Object> map);
	// 유저 관심상품 삭제
	int deleteInterest(HashMap<String, Object> map);
	//상품 테이블 관심 cnt + 1
	int plusInterestCnt(HashMap<String, Object> map);
	//상품 테이블 관심 cnt - 1
	int minusdateInterestCnt(HashMap<String, Object> map);
	
	
	
}
