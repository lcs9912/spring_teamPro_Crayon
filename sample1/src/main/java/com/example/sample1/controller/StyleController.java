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

import com.example.sample1.model.Style;
import com.example.sample1.service.StyleService;
import com.google.gson.Gson;

import jakarta.servlet.http.HttpServletRequest;

@Controller
public class StyleController {
	@Autowired
	StyleService styleService;

	//style 메인페이지
	@RequestMapping("/style.do") 
    public String style(HttpServletRequest request, Model model, @RequestParam HashMap<String, Object> map) throws Exception{
        return "style/styleMain";
    }
	//style 작성페이지
	@RequestMapping("/style/add.do") 
    public String styleAdd(HttpServletRequest request, Model model, @RequestParam HashMap<String, Object> map) throws Exception{
        return "style/styleAdd";
    }
	//로그인된 상태에서 myPosts페이지 (마이페이지에서 내 스타일 클릭시 나오는 첫 화면 사실상 myStyle과 동일함)
	@RequestMapping("/myposts.do") 
	public String myStylePosts(HttpServletRequest request, Model model, @RequestParam HashMap<String, Object> map) throws Exception{
		return "style/myPosts";
	}
	//로그인된 상태에서 myTagProduct페이지
	@RequestMapping("/mytagproduct.do") 
	public String myTagProduct(HttpServletRequest request, Model model, @RequestParam HashMap<String, Object> map) throws Exception{
		return "style/myTagProduct";
	}
	//로그인된 상태에서 myLikePosts페이지
	@RequestMapping("/mylikeposts.do") 
	public String myLikePosts(HttpServletRequest request, Model model, @RequestParam HashMap<String, Object> map) throws Exception{
		return "style/myLikePosts";
	}

	//style 글 등록 
	@RequestMapping(value = "/addStyle.dox", method = RequestMethod.POST, produces = "application/json;charset=UTF-8")
	@ResponseBody
	public String addProduct(Model model, @RequestParam HashMap<String, Object> map) throws Exception {
		HashMap<String, Object> resultMap = new HashMap<String, Object>();
		styleService.addStyle(map);
		resultMap.put("success", "가입완료");
		return new Gson().toJson(resultMap);
	}
	//style 글 조회
	@RequestMapping(value = "/listStyle.dox", method = RequestMethod.POST, produces = "application/json;charset=UTF-8")
	@ResponseBody
	public String listStyle(Model model, @RequestParam HashMap<String, Object> map) throws Exception {
		HashMap<String, Object> resultMap = new HashMap<String, Object>();
		List<Style> list = styleService.viewStyle(map);
		resultMap.put("list",list);
		return new Gson().toJson(resultMap);
	}
}
