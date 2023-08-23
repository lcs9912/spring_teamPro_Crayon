package com.example.sample1.service;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.sample1.mapper.ProductLcsMapper;
import com.example.sample1.model.ProductLcs;

@Service
public class ProductLcsServiceImpl implements ProductLcsService{
	@Autowired
	ProductLcsMapper productLcsMapper;
	
	//상품이미지 업로드
	@Override 
	public int addProductImg(HashMap<String, Object> map) {
		// TODO Auto-generated method stub
		return productLcsMapper.insertProductImg(map);
	}
	//상품 브랜드 조회
	@Override
	public List<ProductLcs> viewBrand(HashMap<String, Object> map) {
		// TODO Auto-generated method stub
		return productLcsMapper.selectBrand(map);
	}
	//브랜드 직접입력 추가
	@Override
	public int addBrand(HashMap<String, Object> map) {
		// TODO Auto-generated method stub
		return productLcsMapper.insertBrand(map);
	}
	//상품 등록
	@Override
	public int addProduct(HashMap<String, Object> map) {
		// TODO Auto-generated method stub
		return productLcsMapper.insertProduct(map);
	}//여기까지 지우셈
	@Override
	public HashMap<String, Object> searchProductInfo2(HashMap<String, Object> map) {
		// TODO Auto-generated method stub
		HashMap<String, Object> resultMap = new HashMap<String, Object>();
		ProductLcs proInfo =  productLcsMapper.selectProductInfo(map); // 물품 상세페이지
		ProductLcs minSell = productLcsMapper.selectSellMinPrice(map); // 즉시 판매가
		ProductLcs minBuy = productLcsMapper.selectBuyMinPrice(map); // 즉시 구매가
		

		resultMap.put("proInfo", proInfo);
		

		if(map.get("modelNum") != null) {
			resultMap.put("minSell", minSell);
			resultMap.put("minBuy", minBuy);
		}
		
		
		return resultMap;
	}
	
	// 관심 등록
	@Override
	public int addInterest(HashMap<String, Object> map) {
		// TODO Auto-generated method stub
		productLcsMapper.insertInterest(map); // 관심 등록
		productLcsMapper.plusInterestCnt(map); // cnt+1
		return 0;
	}
	//유저  관심 조회
	@Override
	public ProductLcs searchInterest(HashMap<String, Object> map) {
		// TODO Auto-generated method stub
		return productLcsMapper.selectInterest(map);
	}
	// 관심해제
	@Override
	public int removeInterest(HashMap<String, Object> map) {
		// TODO Auto-generated method stub
		productLcsMapper.deleteInterest(map);
		productLcsMapper.minusdateInterestCnt(map); // cnt-1
		
		return 0;
	}
	// 최근거래가
	@Override
	public ProductLcs searchResentPro(HashMap<String, Object> map) {
		// TODO Auto-generated method stub
		return productLcsMapper.selectRecentTransaction(map);
	}
	
}
