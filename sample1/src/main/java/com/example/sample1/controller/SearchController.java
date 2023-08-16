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

import com.example.sample1.model.Product;
import com.example.sample1.model.Search;
import com.example.sample1.service.SearchService;
import com.google.gson.Gson;

import jakarta.servlet.http.HttpServletRequest;

@Controller
public class SearchController {
	
	
	  @Autowired 
	  SearchService searchService;
	 
	
	@RequestMapping("/search.do") 
    public String search(HttpServletRequest request, Model model, @RequestParam HashMap<String, Object> map) throws Exception{
        	
		return "/search";
    }
	
	// 물품정보 리스트 (임시)
	@RequestMapping("/productList.do") 
    public String productList(HttpServletRequest request, Model model, @RequestParam HashMap<String, Object> map) throws Exception{
		request.setAttribute("map", map);
		return "/product_list";
    }
	
	// 임시 물품검색 리스트
	@RequestMapping(value = "/product/searchList.dox", method = RequestMethod.POST, produces = "application/json;charset=UTF-8")
	@ResponseBody
	public String searchProductList(Model model, @RequestParam HashMap<String, Object> map) throws Exception {
		HashMap<String, Object> resultMap = new HashMap<String, Object>();
		List<Search> prolist = searchService.searchProductList(map);
		resultMap.put("productList", prolist);
		return new Gson().toJson(resultMap);
	}
	
	// 검색 테이블 정보
	@RequestMapping(value = "/search/list.dox", method = RequestMethod.POST, produces = "application/json;charset=UTF-8")
	@ResponseBody
	public String searchList(Model model, @RequestParam HashMap<String, Object> map) throws Exception {
		HashMap<String, Object> resultMap = new HashMap<String, Object>();
		List<Search> list = searchService.searchAll(map);
		resultMap.put("list", list);
		return new Gson().toJson(resultMap);
	}
	
	// 검색
	@RequestMapping(value = "/search.dox", method = RequestMethod.POST, produces = "application/json;charset=UTF-8")
	@ResponseBody
	public String search(Model model, @RequestParam HashMap<String, Object> map) throws Exception {
		HashMap<String, Object> resultMap = new HashMap<String, Object>();
		searchService.searchName(map);
		
		return new Gson().toJson(resultMap);
	}
	
	// 유저의 검색기록
	@RequestMapping(value = "/search/userList.dox", method = RequestMethod.POST, produces = "application/json;charset=UTF-8")
	@ResponseBody
	public String searchuserList(Model model, @RequestParam HashMap<String, Object> map) throws Exception {
		HashMap<String, Object> resultMap = new HashMap<String, Object>();
		List<Search> userList = searchService.userSearchList(map);
		resultMap.put("userList", userList);
		return new Gson().toJson(resultMap);
	}
	
	// 유저의 검색기록 삭제
	@RequestMapping(value = "/search/remove.dox", method = RequestMethod.POST, produces = "application/json;charset=UTF-8")
	@ResponseBody
	public String removeSearchUser(Model model, @RequestParam HashMap<String, Object> map) throws Exception {
		HashMap<String, Object> resultMap = new HashMap<String, Object>();
		searchService.removeSearchUser(map);
		
		return new Gson().toJson(resultMap);
	}
	
	// 유저의 모든 검색기록 삭제
	@RequestMapping(value = "/search/removeAll.dox", method = RequestMethod.POST, produces = "application/json;charset=UTF-8")
	@ResponseBody
	public String removeSearchAllUser(Model model, @RequestParam HashMap<String, Object> map) throws Exception {
		HashMap<String, Object> resultMap = new HashMap<String, Object>();
		searchService.removeSearchAllUser(map);
			
		return new Gson().toJson(resultMap);
	}
}