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
	//상품 브랜드 조회
	List<Product> selectBrand(HashMap<String, Object> map);
	//브랜드 이름 직접입력
	int insertBrand(HashMap<String, Object> map);// 여기까지 지우셈
	// 상품상세정보
	Product selectProductInfo(HashMap<String, Object> map);
}
