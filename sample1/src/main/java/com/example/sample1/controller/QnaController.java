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
	
	// Qna 리스트 출력
	@RequestMapping("/qna/list.do") 
    public String QnaList(HttpServletRequest request, Model model, @RequestParam HashMap<String, Object> map) throws Exception{
        return "/qna/qna_list";
    }
	
	// Qna등록 출력 , Qna 수정 
	@RequestMapping("/qna/add.do") 
	public String QnaAdd(HttpServletRequest request, Model model, @RequestParam HashMap<String, Object> map) throws Exception{
		request.setAttribute("map", map);
	     return "/qna/qna_add";
	 }
	// Qna상세정보 출력
	@RequestMapping("/qna/view.do") 
	public String QnaView(HttpServletRequest request, Model model, @RequestParam HashMap<String, Object> map) throws Exception{
		request.setAttribute("map", map);
	     return "/qna/qna_view";
	 }
	
	
	// Qna 리스트 출력
	@RequestMapping(value = "/qna/list.dox", method = RequestMethod.POST, produces = "application/json;charset=UTF-8")
	@ResponseBody
	public String qnaList(Model model, @RequestParam HashMap<String, Object> map) throws Exception {
		HashMap<String, Object> resultMap = new HashMap<String, Object>();
		List<Qna> list = qnaService.searchQnaList(map);
		resultMap.put("list",list);
		return new Gson().toJson(resultMap);
	}
	
	// Qna등록
		@RequestMapping(value = "/qna/add.dox", method = RequestMethod.POST, produces = "application/json;charset=UTF-8")
		@ResponseBody
		public String qnaAdd(Model model, @RequestParam HashMap<String, Object> map) throws Exception {
			HashMap<String, Object> resultMap = new HashMap<String, Object>();
			qnaService.addQna(map);
			return new Gson().toJson(resultMap);
		}
	// Qna 상세정보 가져오기 
		@RequestMapping(value = "/qna/view.dox", method = RequestMethod.POST, produces = "application/json;charset=UTF-8")
		@ResponseBody
		public String qnaInfo(Model model, @RequestParam HashMap<String, Object> map) throws Exception {
			HashMap<String, Object> resultMap = new HashMap<String, Object>();
			Qna info =qnaService.searchQnaInfo(map);
			resultMap.put("info", info);
			return new Gson().toJson(resultMap);
		}
	//Qna 정보 수정 
	@RequestMapping(value = "/qna/edit.dox", method = RequestMethod.POST, produces = "application/json;charset=UTF-8")
	@ResponseBody
	public String boardEdit(Model model, @RequestParam HashMap<String, Object> map) throws Exception {
		HashMap<String, Object> resultMap = new HashMap<String, Object>();
		qnaService.updateQna(map);
		return new Gson().toJson(resultMap);
	}
		
		
}
