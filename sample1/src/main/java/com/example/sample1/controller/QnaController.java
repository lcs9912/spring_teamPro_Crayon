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
import com.fasterxml.jackson.core.type.TypeReference;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.google.gson.Gson;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;

@Controller
public class QnaController {
	
	@Autowired
	QnaService qnaService;
	
	@Autowired
	HttpSession session;
	// Qna 리스트 출력
	@RequestMapping("/qnalist.do") 
    public String QnaList(HttpServletRequest request, Model model, @RequestParam HashMap<String, Object> map) throws Exception{
        return "/qna/qna_list";
    }
	
	// Qna등록 출력 , Qna 수정 
	@RequestMapping("/qnaadd.do") 
	public String QnaAdd(HttpServletRequest request, Model model, @RequestParam HashMap<String, Object> map) throws Exception{
		request.setAttribute("map", map);
	     return "/qna/qna_add";
	 }
	// Qna상세정보 출력
	@RequestMapping("/qnaview.do") 
	public String QnaView(HttpServletRequest request, Model model, @RequestParam HashMap<String, Object> map) throws Exception{
		request.setAttribute("map", map);
	     return "/qna/qna_view";
	 }
	// 1:1 문의 리스트 출력
	@RequestMapping("/onetoone.do") 
    public String onetoone(HttpServletRequest request, Model model, @RequestParam HashMap<String, Object> map) throws Exception{
		return "/qna/onetoone";
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
		@RequestMapping(value = "/qnaadd.dox", method = RequestMethod.POST, produces = "application/json;charset=UTF-8")
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
	public String qnaEdit(Model model, @RequestParam HashMap<String, Object> map) throws Exception {
		HashMap<String, Object> resultMap = new HashMap<String, Object>();
		qnaService.updateQna(map);
		return new Gson().toJson(resultMap);
	}
	//Qna 삭제(리스트)관리자용(안보이게만) 
		@RequestMapping(value = "/qna/deleteList.dox", method = RequestMethod.POST, produces = "application/json;charset=UTF-8")
		@ResponseBody
		public String qnaDelelte(Model model, @RequestParam HashMap<String, Object> map) throws Exception {
			HashMap<String, Object> resultMap = new HashMap<String, Object>();
			
			String json = (String)map.get("selectComment");
			ObjectMapper mapper = new ObjectMapper();
			List<Object> list = mapper.readValue(json,new TypeReference<List<Object>>(){});
			map.put("list", list);
			
			qnaService.deleteQnaList(map);
			return new Gson().toJson(resultMap);
		}
	//Qna 정보 수정 
	@RequestMapping(value = "/qna/hide.dox", method = RequestMethod.POST, produces = "application/json;charset=UTF-8")
	@ResponseBody
	public String qnaHide(Model model, @RequestParam HashMap<String, Object> map) throws Exception {
		HashMap<String, Object> resultMap = new HashMap<String, Object>();
		qnaService.hideQnaList(map);
		return new Gson().toJson(resultMap);
	}			
	// Qna 댓글 리스트 출력
		@RequestMapping(value = "/qna/comment/list.dox", method = RequestMethod.POST, produces = "application/json;charset=UTF-8")
		@ResponseBody
		public String qnaCommentList(Model model, @RequestParam HashMap<String, Object> map) throws Exception {
			HashMap<String, Object> resultMap = new HashMap<String, Object>();
			List<Qna> list = qnaService.searchQnaCommentList(map);
			resultMap.put("list",list);
			return new Gson().toJson(resultMap);
		}	
	// Qna 댓글 등록
	@RequestMapping(value = "/qna/comment/add.dox", method = RequestMethod.POST, produces = "application/json;charset=UTF-8")
	@ResponseBody
	public String qnaCommAdd(Model model, @RequestParam HashMap<String, Object> map) throws Exception {
		HashMap<String, Object> resultMap = new HashMap<String, Object>();
		qnaService.addQnaComm(map);
		return new Gson().toJson(resultMap);
	}	
	// Qna 댓글 삭제 (자기자신)
	@RequestMapping(value = "/qna/comment/hide.dox", method = RequestMethod.POST, produces = "application/json;charset=UTF-8")
	@ResponseBody
	public String qnaCommhide(Model model, @RequestParam HashMap<String, Object> map) throws Exception {
		HashMap<String, Object> resultMap = new HashMap<String, Object>();
		qnaService.hideComment(map);
		return new Gson().toJson(resultMap);
	}
}
