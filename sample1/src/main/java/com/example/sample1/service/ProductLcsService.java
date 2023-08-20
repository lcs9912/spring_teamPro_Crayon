package com.example.sample1.service;

import java.util.HashMap;
import java.util.List;

import com.example.sample1.model.ProductLcs;

public interface ProductLcsService {
	//상품 등록
	int addProduct(HashMap<String, Object> map);
	//상품 이미지 업로드
	int addProductImg(HashMap<String, Object> map);
	//상품 브랜드 조회
	List<ProductLcs> viewBrand(HashMap<String, Object> map);
	//브랜드 이름 직접입력
	int addBrand(HashMap<String, Object> map);//여기까지 지우셈
	// 상품상제정보
	HashMap<String, Object> searchProductInfo2(HashMap<String, Object> map);
	// 관심 상품 등록
	int addInterest(HashMap<String, Object> map);
	// 유저 관심상품 조회
	ProductLcs searchInterest(HashMap<String, Object> map);
	//유저 관심상품 삭제
	int removeInterest(HashMap<String, Object> map);
}
