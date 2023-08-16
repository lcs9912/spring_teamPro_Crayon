package com.example.sample1.controller;

import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.example.sample1.model.User;

import com.google.gson.Gson;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;


@Controller
public class MypageController {
	
	@Autowired
	HttpSession session;
	
	// 마이페이지
	@RequestMapping("/mypage.do") 
    public String mypage(HttpServletRequest request, Model model, @RequestParam HashMap<String, Object> map) throws Exception{
		return "/mypage/mypage"; 
    }
	
	// 마이페이지 구매리스트
	@RequestMapping("/mypagebuylist.do") 
    public String mypagebuylist(HttpServletRequest request, Model model, @RequestParam HashMap<String, Object> map) throws Exception{
        return "/mypage/mypagebuylist";
    }
	
	// 마이페이지 본인정보
	@RequestMapping("/mypagelogininfo.do") 
	public String mypagelogininfo(HttpServletRequest request, Model model, @RequestParam HashMap<String, Object> map) throws Exception{
	return "/mypage/mypagelogininfo";
	}
	
	// 마이페이지 본인정보
	@RequestMapping("/mypageselllist.do") 
	public String mypageselllist(HttpServletRequest request, Model model, @RequestParam HashMap<String, Object> map) throws Exception{
	return "/mypage/mypageselllist";
	}
	
	
	
}
