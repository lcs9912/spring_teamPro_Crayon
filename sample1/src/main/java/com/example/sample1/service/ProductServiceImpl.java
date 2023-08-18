package com.example.sample1.service;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.sample1.mapper.ProductMapper;
import com.example.sample1.model.Product;

@Service
public class ProductServiceImpl implements ProductService{
	@Autowired
	ProductMapper productMapper;
	
	//상품이미지 업로드
	@Override 
	public int addProductImg(HashMap<String, Object> map) {
		// TODO Auto-generated method stub
		return productMapper.insertProductImg(map);
	}
	//상품 브랜드 조회
	@Override
	public List<Product> viewBrand(HashMap<String, Object> map) {
		// TODO Auto-generated method stub
		return productMapper.selectBrand(map);
	}
	//브랜드 직접입력 추가
	@Override
	public int addBrand(HashMap<String, Object> map) {
		// TODO Auto-generated method stub
		return productMapper.insertBrand(map);
	}
	//상품 등록
	@Override
	public int addProduct(HashMap<String, Object> map) {
		// TODO Auto-generated method stub
		return productMapper.insertProduct(map);
	}//여기까지 지우셈
	@Override
	public HashMap<String, Object> searchProductInfo(HashMap<String, Object> map) {
		// TODO Auto-generated method stub
		HashMap<String, Object> resultMap = new HashMap<String, Object>();
		Product proInfo =  productMapper.selectProductInfo(map); // 물품 상세페이지
		Product minSell = productMapper.selectSellMinPrice(map); // 즉시 판매가
		Product minBuy = productMapper.selectBuyMinPrice(map); // 즉시 구매가
		resultMap.put("proInfo", proInfo);
		
		if(map.get("modelNum") != null) {
			resultMap.put("minSell", minSell);
			resultMap.put("minBuy", minBuy);
		}
		
		
		return resultMap;
	}
}
