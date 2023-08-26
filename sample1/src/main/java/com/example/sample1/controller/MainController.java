package com.example.sample1.controller;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.example.sample1.model.Main;
import com.example.sample1.service.MainService;
import com.fasterxml.jackson.core.type.TypeReference;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.google.gson.Gson;

import jakarta.servlet.http.HttpServletRequest;

@Controller
public class MainController {
	
	@Autowired
	MainService mainService;
		
	@RequestMapping("/mainslider.do") //메인 페이지 슬라이더
    public String mainpageslider(HttpServletRequest request, Model model, @RequestParam HashMap<String, Object> map) throws Exception{
        return "/main/mainpageslider";
    }
	
	@RequestMapping("/mainpageshopping.do")  //메인 shop 메뉴 선택할 때 열리는  카테고리 페이지
    public String mainpageshopping(HttpServletRequest request, Model model, @RequestParam HashMap<String, Object> map) throws Exception{
		request.setAttribute("map", map);
		return "/main/mainpageshopping";
    }		
	
	@RequestMapping("/mainpageranking.do") //메인페이지 랭킹메뉴 선택할 때 열리는 페이지
    public String mainpageranking(HttpServletRequest request, Model model, @RequestParam HashMap<String, Object> map) throws Exception{
        return "/main/mainpageranking";
    }
		
	@RequestMapping("/mainpageman.do") //메인페이지 남성메뉴 선택할 때 열리는 페이지
    public String mainpagemslider(HttpServletRequest request, Model model, @RequestParam HashMap<String, Object> map) throws Exception{
        return "/main/mainpageman";
    }
	
	@RequestMapping("/mainpagewoman.do") //메인페이지 여성메뉴 선택할 때 열리는 페이지
    public String mainpagewslider(HttpServletRequest request, Model model, @RequestParam HashMap<String, Object> map) throws Exception{
        return "/main/mainpagewoman";
    }
	
	// MAINcate 페이지 
	@RequestMapping("/tmain.do") 
	public String tmain(HttpServletRequest request, Model model, @RequestParam HashMap<String, Object> map) throws Exception{
		request.setAttribute("map", map);
		return "/maincate/maincate_m";
	}
	
	
	// SHOP 리스트 출력
	@RequestMapping(value = "/shopList.dox", method = RequestMethod.POST, produces = "application/json;charset=UTF-8")
	@ResponseBody
	public String ShopList(Model model, @RequestParam HashMap<String, Object> map) throws Exception {
		HashMap<String, Object> resultMap = new HashMap<String, Object>();
		
		// 카테고리 검색
	      if (map.get("sizeArr") != null) {
	         String json = map.get("sizeArr").toString();
	         ObjectMapper mapper = new ObjectMapper();
	         List<Object> sizeArr = mapper.readValue(json, new TypeReference<List<Object>>(){});
	         map.put("sizeArr", sizeArr);
	      }
	      if (map.get("cate1Value") != null) {
		         String json = map.get("cate1Value").toString();
		         ObjectMapper mapper = new ObjectMapper();
		         List<Object> cate1Value = mapper.readValue(json, new TypeReference<List<Object>>(){});
		         map.put("cate1Value", cate1Value);
		      }
	      if (map.get("cate2Value") != null) {
		         String json = map.get("cate2Value").toString();
		         ObjectMapper mapper = new ObjectMapper();
		         List<Object> cate2Value = mapper.readValue(json, new TypeReference<List<Object>>(){});
		         map.put("cate2Value", cate2Value);
		      }
	      
	    // 카테고리 검색  리스트 출력 
		List<Main> shopList = mainService.searchShopList(map);
		resultMap.put("shopList", shopList);
		return new Gson().toJson(resultMap);
	}
	
	// 카테고리 리스트 출력
	@RequestMapping(value = "/searchCate.dox", method = RequestMethod.POST, produces = "application/json;charset=UTF-8")
	@ResponseBody
	public String searchCate(Model model, @RequestParam HashMap<String, Object> map) throws Exception {
		HashMap<String, Object> resultMap = new HashMap<String, Object>();
		resultMap = mainService.searchCategorie(map);
		
		return new Gson().toJson(resultMap);
	}
	//maincate리스트 출력
	@RequestMapping(value = "/shopmanList.dox", method = RequestMethod.POST, produces = "application/json;charset=UTF-8")
	@ResponseBody
	public String mainList(Model model, @RequestParam HashMap<String, Object> map) throws Exception {
		HashMap<String, Object> resultMap = new HashMap<String, Object>();
		List<Main> list =mainService.seachMain(map);
		resultMap.put("list", list);
		return new Gson().toJson(resultMap);
	}
	
	 
	
	
}
