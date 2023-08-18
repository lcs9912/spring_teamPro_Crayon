package com.example.sample1.service;

import java.util.HashMap;
import java.util.List;

import com.example.sample1.model.Product;
import com.example.sample1.model.Test;

public interface ProductService {
	//상품 등록
	int addProduct(HashMap<String, Object> map);
	//상품 이미지 업로드
	int addProductImg(HashMap<String, Object> map);
	//상품 브랜드 조회
	List<Product> viewBrand(HashMap<String, Object> map);
	//브랜드 이름 직접입력
	int addBrand(HashMap<String, Object> map);//여기까지 지우셈
	// 상품상제정보
	HashMap<String, Object> searchProductInfo(HashMap<String, Object> map);

}
