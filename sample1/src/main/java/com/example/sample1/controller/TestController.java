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
	
	@RequestMapping("/testshopping.do")  //테스트용 shopping 페이지
    public String test1(HttpServletRequest request, Model model, @RequestParam HashMap<String, Object> map) throws Exception{
        return "/test/testshopping_sh";
    }
	
	@RequestMapping("/testheader.do") //테스트용 shopping 헤더 페이지
    public String test2(HttpServletRequest request, Model model, @RequestParam HashMap<String, Object> map) throws Exception{
        return "/test/testshopheader_sh";
    }
	
	@RequestMapping("/testmainheader.do") //테스트용 main 헤더 페이지
    public String test6(HttpServletRequest request, Model model, @RequestParam HashMap<String, Object> map) throws Exception{
        return "/test/testmainheader_sh";
    }
	
	@RequestMapping("/testrankingpage.do") //테스트용 랭킹 페이지
    public String test7(HttpServletRequest request, Model model, @RequestParam HashMap<String, Object> map) throws Exception{
        return "/test/testrankingpage_sh";
    }

	@RequestMapping("/testpaylist.do") //테스트용 구매리스트 페이지
    public String test3(HttpServletRequest request, Model model, @RequestParam HashMap<String, Object> map) throws Exception{
        return "/test/testmypagepaylist_sh";
    }
	
	@RequestMapping("/testmypagebank.do") //테스트용 계좌 페이지
    public String test4(HttpServletRequest request, Model model, @RequestParam HashMap<String, Object> map) throws Exception{
        return "/test/testmypagebank_sh";
    }
	
	@RequestMapping("/testmypagepoint.do") //테스트용 포인트 페이지
    public String test5(HttpServletRequest request, Model model, @RequestParam HashMap<String, Object> map) throws Exception{
        return "/test/testmypagepoint_sh";
    }
	
	@RequestMapping("/testmypageprofile.do") //테스트용 포인트 페이지
    public String test12(HttpServletRequest request, Model model, @RequestParam HashMap<String, Object> map) throws Exception{
        return "/test/testmypageprofile";
    }
	
	@RequestMapping("/testmainslider.do") //테스트용 메인 페이지 슬라이더
    public String test8(HttpServletRequest request, Model model, @RequestParam HashMap<String, Object> map) throws Exception{
        return "/test/testmainslider_sh";
    }
	
	@RequestMapping("/testmainmancate.do") //테스트용 메인 페이지 슬라이더
    public String test9(HttpServletRequest request, Model model, @RequestParam HashMap<String, Object> map) throws Exception{
        return "/test/testmainmancate_sh";
    }
	
	@RequestMapping("/testmslider.do") //테스트용 메인 페이지 슬라이더
    public String test10(HttpServletRequest request, Model model, @RequestParam HashMap<String, Object> map) throws Exception{
        return "/test/testmslider_sh";
    }
	
	@RequestMapping("/testwslider.do") //테스트용 메인 페이지 슬라이더
    public String test11(HttpServletRequest request, Model model, @RequestParam HashMap<String, Object> map) throws Exception{
        return "/test/testwslider_sh";
    }
	
	// 결제 api 테스트
	@RequestMapping("/payTest.do") //테스트용 메인 페이지 슬라이더
    public String payTest(HttpServletRequest request, Model model, @RequestParam HashMap<String, Object> map) throws Exception{
        return "/mypage/paymentTest";
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
