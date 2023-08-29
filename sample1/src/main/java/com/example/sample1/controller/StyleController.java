package com.example.sample1.controller;

import java.io.File;
import java.util.Calendar;
import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.example.sample1.model.Style;
import com.example.sample1.service.StyleService;
import com.google.gson.Gson;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

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
	@RequestMapping("/addstyle.do")  
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
		resultMap = styleService.addStyle(map);
		return new Gson().toJson(resultMap);
	}
	
	//style 이미지 등록
	@RequestMapping(value = "/addStyleImg.dox")
	public String styleupload(@RequestParam("file1") MultipartFile multi, @RequestParam("idx") int idx, HttpServletRequest request, HttpServletResponse response, Model model) {
		String url = null;
		String path = "c:\\img";
		try {
			String uploadpath = path;
			String originFilename = multi.getOriginalFilename();
			String extName = originFilename.substring(originFilename.lastIndexOf("."), originFilename.length());
			long size = multi.getSize();
			String saveFileName = genSaveFileName(extName);

			String path2 = System.getProperty("user.dir");
			if (!multi.isEmpty()) {
				File file = new File(path2 + "\\src\\main\\webapp\\img\\style", saveFileName);
			    multi.transferTo(file);

			    HashMap<String, Object> map = new HashMap<String, Object>();	
			    map.put("sImgName", saveFileName);
			    map.put("sImgPath", "..\\img\\style\\" + saveFileName); // Set the correct image path
			    map.put("idx", idx);

			    // Insert query execution
			    styleService.addStyleImg(map);

			    model.addAttribute("sImgName", multi.getOriginalFilename());
			    model.addAttribute("uploadPath", file.getAbsolutePath());

			    return "redirect:mypage.do";
			}
		} catch (Exception e) {
			System.out.println(e);
		}
		return "redirect:mypage.do";
	}
		// 현재 시간을 기준으로 파일 이름 생성
	    private String genSaveFileName(String extName) {
	        String sImgName = "";
	        
	        Calendar calendar = Calendar.getInstance();
	        sImgName += calendar.get(Calendar.YEAR);
	        sImgName += calendar.get(Calendar.MONTH);
	        sImgName += calendar.get(Calendar.DATE);
	        sImgName += calendar.get(Calendar.HOUR);
	        sImgName += calendar.get(Calendar.MINUTE);
	        sImgName += calendar.get(Calendar.SECOND);
	        sImgName += calendar.get(Calendar.MILLISECOND);
	        sImgName += extName;
	        
	        return sImgName;
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
	//style 메인페이지 조회
	@RequestMapping(value = "/listAllStyle.dox", method = RequestMethod.POST, produces = "application/json;charset=UTF-8")
	@ResponseBody
	public String listAllStyle(Model model, @RequestParam HashMap<String, Object> map) throws Exception {
		HashMap<String, Object> resultMap = new HashMap<String, Object>();
		List<Style> all = styleService.viewAllStyle(map);
		resultMap.put("all",all);
		return new Gson().toJson(resultMap);
	}
}
