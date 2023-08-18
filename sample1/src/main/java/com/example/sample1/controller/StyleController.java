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

import com.google.gson.Gson;

import jakarta.servlet.http.HttpServletRequest;

@Controller
public class StyleController {
	//style 메인페이지
	@RequestMapping("/style.do") 
    public String style(HttpServletRequest request, Model model, @RequestParam HashMap<String, Object> map) throws Exception{
        return "style/styleMain";
    }
	//로그인된 상태에서 myPosts페이지 (마이페이지에서 내 스타일 클릭시 나오는 첫 화면 사실상 myStyle과 동일함)
	@RequestMapping("/myPosts.do") 
	public String myStylePosts(HttpServletRequest request, Model model, @RequestParam HashMap<String, Object> map) throws Exception{
		return "style/myPosts";
	}
	//로그인된 상태에서 myTagProduct페이지
	@RequestMapping("/myTagProduct.do") 
	public String myTagProduct(HttpServletRequest request, Model model, @RequestParam HashMap<String, Object> map) throws Exception{
		return "style/myTagProduct";
	}
	//로그인된 상태에서 myLikePosts페이지
	@RequestMapping("/myLikePosts.do") 
	public String myLikePosts(HttpServletRequest request, Model model, @RequestParam HashMap<String, Object> map) throws Exception{
		return "style/myLikePosts";
	}
}
