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
import com.example.sample1.model.Test;
import com.example.sample1.service.ProductService;
import com.example.sample1.service.TestService;
import com.google.gson.Gson;

import jakarta.servlet.http.HttpServletRequest;

@Controller
public class TestController {
	
	@Autowired
	TestService testService;
	
	@RequestMapping("/test.do") 
    public String test(HttpServletRequest request, Model model, @RequestParam HashMap<String, Object> map) throws Exception{
        return "/test";
    }
	
	@RequestMapping("/chart.do") 
    public String chart(HttpServletRequest request, Model model, @RequestParam HashMap<String, Object> map) throws Exception{
        return "/product/chartTest";
    }
	
	@RequestMapping("/testshopping.do") 
    public String test1(HttpServletRequest request, Model model, @RequestParam HashMap<String, Object> map) throws Exception{
        return "/test/testshopping_sh";
    }
	
	@RequestMapping("/testheader.do") 
    public String test2(HttpServletRequest request, Model model, @RequestParam HashMap<String, Object> map) throws Exception{
        return "/test/testheader_sh";
    }
	
	@RequestMapping("/testpaylist.do") 
    public String test3(HttpServletRequest request, Model model, @RequestParam HashMap<String, Object> map) throws Exception{
        return "/test/testmypagepaylist_sh";
    }
	
	@RequestMapping("/testmypagebank.do") 
    public String test4(HttpServletRequest request, Model model, @RequestParam HashMap<String, Object> map) throws Exception{
        return "/test/testmypagebank_sh";
    }
	
	@RequestMapping("/testmypagepoint.do") 
    public String test5(HttpServletRequest request, Model model, @RequestParam HashMap<String, Object> map) throws Exception{
        return "/test/testmypagepoint_sh";
    }
	
	// 임시 물품검색 리스트
	@RequestMapping(value = "/chartlist.dox", method = RequestMethod.POST, produces = "application/json;charset=UTF-8")
	@ResponseBody
	public String chartlist(Model model, @RequestParam HashMap<String, Object> map) throws Exception {
		HashMap<String, Object> resultMap = new HashMap<String, Object>();
		List<Test> list = testService.searchchart(map);
		resultMap.put("list", list);
		return new Gson().toJson(resultMap);
	}
}
