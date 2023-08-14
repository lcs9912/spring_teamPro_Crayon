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
	
	@RequestMapping(value = "/search/list.dox", method = RequestMethod.POST, produces = "application/json;charset=UTF-8")
	@ResponseBody
	public String boardList(Model model, @RequestParam HashMap<String, Object> map) throws Exception {
		HashMap<String, Object> resultMap = new HashMap<String, Object>();
		List<Search> list = searchService.searchAll(map);
		resultMap.put("list", list);
		return new Gson().toJson(resultMap);
	}
}
