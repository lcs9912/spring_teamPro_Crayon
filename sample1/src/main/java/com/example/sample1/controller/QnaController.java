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

import com.example.sample1.model.Qna;
import com.example.sample1.service.QnaService;
import com.google.gson.Gson;

import jakarta.servlet.http.HttpServletRequest;

@Controller
public class QnaController {
	
	@Autowired
	QnaService qnaService;
	
	// 상품등록 페이지
	@RequestMapping("/qna/list.do") 
    public String register(HttpServletRequest request, Model model, @RequestParam HashMap<String, Object> map) throws Exception{
        return "/qna/qna_list";
    }
	
	
	
	@RequestMapping(value = "/qna/list.dox", method = RequestMethod.POST, produces = "application/json;charset=UTF-8")
	@ResponseBody
	public String userAdd(Model model, @RequestParam HashMap<String, Object> map) throws Exception {
		HashMap<String, Object> resultMap = new HashMap<String, Object>();
		List<Qna> list = qnaService.searchQnaList(map);
		resultMap.put("list",list);
		return new Gson().toJson(resultMap);
	}
}
