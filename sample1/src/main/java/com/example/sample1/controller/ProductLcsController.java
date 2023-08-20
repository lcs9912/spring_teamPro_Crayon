package com.example.sample1.controller;


import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.example.sample1.model.ProductLcs;
import com.example.sample1.service.ProductLcsService;
import com.google.gson.Gson;

import jakarta.servlet.http.HttpServletRequest;

@Controller
public class ProductLcsController {
	@Autowired
	ProductLcsService productLcsService;
	
	//페이지 할당
	// 상품상세 페이지
	@RequestMapping("/product2.do") 
    public String proinfo2(HttpServletRequest request, Model model, @RequestParam HashMap<String, Object> map) throws Exception{
        return "/product/productInfo_LCS"; // _LCS 삭제 
    }
	
    
    // 상품 상세정보
 	@RequestMapping(value = "/productInfo2.dox", method = RequestMethod.POST, produces = "application/json;charset=UTF-8")
 	@ResponseBody
 	public String productInfo2(Model model, @RequestParam HashMap<String, Object> map) throws Exception {
 		HashMap<String, Object> resultMap = new HashMap<String, Object>();
 		resultMap = productLcsService.searchProductInfo2(map);
 		
 		return new Gson().toJson(resultMap);
 	}
 	
 	// 관심상품 등록
  	@RequestMapping(value = "/product/interest.dox", method = RequestMethod.POST, produces = "application/json;charset=UTF-8")
  	@ResponseBody
  	public String addProInterest(Model model, @RequestParam HashMap<String, Object> map) throws Exception {
  		HashMap<String, Object> resultMap = new HashMap<String, Object>();
  		productLcsService.addInterest(map);
  		
  		return new Gson().toJson(resultMap);
  	}
  	
  	// 관심상품 등록
   	@RequestMapping(value = "/proInterestInfo.dox", method = RequestMethod.POST, produces = "application/json;charset=UTF-8")
   	@ResponseBody
   	public String proInterestInfo(Model model, @RequestParam HashMap<String, Object> map) throws Exception {
   		HashMap<String, Object> resultMap = new HashMap<String, Object>();
   		ProductLcs interest = productLcsService.searchInterest(map);
   		resultMap.put("interest", interest);
   		return new Gson().toJson(resultMap);
   	}
   	
   	// 관심상품 해제
   	@RequestMapping(value = "/proInterestRemove.dox", method = RequestMethod.POST, produces = "application/json;charset=UTF-8")
   	@ResponseBody
   	public String proInterestRemove(Model model, @RequestParam HashMap<String, Object> map) throws Exception {
   		HashMap<String, Object> resultMap = new HashMap<String, Object>();
   		productLcsService.removeInterest(map);
   	
   		return new Gson().toJson(resultMap);
   	}
 	
 	
}
