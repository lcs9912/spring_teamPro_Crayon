package com.example.sample1.service;

import java.util.HashMap;
import java.util.List;

import com.example.sample1.model.Product;
import com.example.sample1.model.Test;

public interface ProductService {
	//상품 등록
	HashMap<String, Object> addProduct(HashMap<String, Object> map);
	//상품 이미지 업로드
	int addProductImg(HashMap<String, Object> map);
	//상품 이미지 조회
	Product viewProductImg(HashMap<String, Object> map);
	//상품 사이즈 조회
	List<Product> viewSize(HashMap<String, Object> map);
	//상품 구매/판매 처리 시 사이즈 조회
	Integer viewPaySize(HashMap<String, Object> map);
	//상품 브랜드 조회
	List<Product> viewBrand(HashMap<String, Object> map);
	//브랜드 이름 직접입력
	int addBrand(HashMap<String, Object> map);//여기까지 지우셈
	// 상품상제정보
	HashMap<String, Object> searchProductInfo(HashMap<String, Object> map);
	// 관심 상품 등록
	int addInterest(HashMap<String, Object> map);
	// 유저 관심상품 조회
	Product searchInterest(HashMap<String, Object> map);
	//유저 관심상품 삭제
	int removeInterest(HashMap<String, Object> map);
	// 상품 상세정보 pk
	List<Product> searchProBuyInfo(HashMap<String, Object> map);
	// 상품 SELL 리스트 출력
	List<Product> searchProductSellList(HashMap<String, Object> map);
	// 상품 BUY 리스트 출력
	List<Product> selectProductBuyList(HashMap<String, Object> map);
	// 유저 상품 즉시구매
	int userProductNowBuy(HashMap<String, Object> map);
	

}
