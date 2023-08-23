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
	// 상품사이즈 조회
	@Override
	public List<Product> viewSize(HashMap<String, Object> map) {
		// TODO Auto-generated method stub
		return productMapper.selectSize(map);
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
	public HashMap<String, Object> addProduct(HashMap<String, Object> map) {
		// TODO Auto-generated method stub
		HashMap<String, Object> resultMap = new HashMap<String, Object>();
		productMapper.insertProduct(map);
		resultMap.put("pName", map.get("pName"));
		return resultMap;
	}
	
	// 상품 상세페이지
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
	//상품 이미지 조회
	@Override
	public Product viewProductImg(HashMap<String, Object> map) {
		// TODO Auto-generated method stub
		return productMapper.selectProductImg(map);
	}
	// 관심 등록
	@Override
	public int addInterest(HashMap<String, Object> map) {
		// TODO Auto-generated method stub
		productMapper.insertInterest(map); // 관심 등록
		productMapper.plusInterestCnt(map); // cnt+1
		return 0;
	}
	//유저  관심 조회
	@Override
	public Product searchInterest(HashMap<String, Object> map) {
		// TODO Auto-generated method stub
		return productMapper.selectInterest(map);
	}
	// 관심해제
	@Override
	public int removeInterest(HashMap<String, Object> map) {
		// TODO Auto-generated method stub
		productMapper.deleteInterest(map);
		productMapper.minusdateInterestCnt(map); // cnt-1

		return 0;
	}
	// 최근거래가
	@Override
	public Product searchResentPro(HashMap<String, Object> map) {
		// TODO Auto-generated method stub
		return productMapper.selectRecentTransaction(map);
	}
	
}
