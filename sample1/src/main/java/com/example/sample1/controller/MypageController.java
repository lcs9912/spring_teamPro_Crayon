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

import com.example.sample1.model.Mypage;
import com.example.sample1.model.Product;
import com.example.sample1.service.MypageService;
import com.google.gson.Gson;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;


@Controller
public class MypageController {
	
	@Autowired
	HttpSession session;
	@Autowired
	MypageService mypageService;
	// 마이페이지 전체정보 목록
	@RequestMapping("/mypage.do") 
    public String mypage(HttpServletRequest request, Model model, @RequestParam HashMap<String, Object> map) throws Exception{
		return "/mypage/mypage"; 
    }
	
	// 마이페이지 구매내역 목록
	@RequestMapping("/mypagebuylist.do") 
    public String mypagebuylist(HttpServletRequest request, Model model, @RequestParam HashMap<String, Object> map) throws Exception{
        return "/mypage/mypagebuylist";
    }
	
	// 마이페이지 본인정보 목록
	@RequestMapping("/mypagelogininfo.do") 
	public String mypagelogininfo(HttpServletRequest request, Model model, @RequestParam HashMap<String, Object> map) throws Exception{

		return "/mypage/mypagelogininfo";
	}
	
	// 마이페이지 판매내역 목록
	@RequestMapping("/mypageselllist.do") 
	public String mypageselllist(HttpServletRequest request, Model model, @RequestParam HashMap<String, Object> map) throws Exception{
	
		return "/mypage/mypageselllist";
	}
	// 마이페이지 프로필관리 목록
	@RequestMapping("/mypageprofile.do") 
	   public String mypageprofile(HttpServletRequest request, Model model, @RequestParam HashMap<String, Object> map) throws Exception{
		return "/mypage/mypageprofile"; 
	   }
	// 마이페이지 로그인정보 > 이메일정보 수정 팝업
	@RequestMapping("/loginInfoPopup.do") 
	public String mypageEditUserEmailPopup(HttpServletRequest request, Model model, @RequestParam HashMap<String, Object> map) throws Exception{
		request.setAttribute("map", map);
		return "/mypage/mypageEditUserEmailPopup";
	}
	
	// 마이페이지 로그인정보 > 이메일정보 수정 팝업 
	@RequestMapping("/testPopup.do") 
	public String testPopup(HttpServletRequest request, Model model, @RequestParam HashMap<String, Object> map) throws Exception{
		request.setAttribute("map", map);
		return "/mypage/testPopup";
	}
	// 마이페이지 포인트충전페이지 목록
	@RequestMapping("/mypageaddpoint.do") 
	public String mypageaddpoint(HttpServletRequest request, Model model, @RequestParam HashMap<String, Object> map) throws Exception{
		return "/mypage/mypageaddpoint"; 
	}
		
	//마이페이지 관심상품 목록
	@RequestMapping("/mypageproductinter.do") 
	public String mypageproductinter(HttpServletRequest request, Model model, @RequestParam HashMap<String, Object> map) throws Exception{
		return "/mypage/mypageproductinter"; 
	}
		
	//마이페이지 주소록 목록
	@RequestMapping("/mypageaddr.do") 
	public String mypageaddr(HttpServletRequest request, Model model, @RequestParam HashMap<String, Object> map) throws Exception{
		return "/mypage/mypageaddr"; 
	}
		
	//마이페이지 결제정보 목록
	@RequestMapping("/mypagepaylist.do") 
	public String mypagepaylist(HttpServletRequest request, Model model, @RequestParam HashMap<String, Object> map) throws Exception{
		return "/mypage/mypagepaylist"; 
	}
		
	//마이페이지 판매정산계좌 목록
	@RequestMapping("/mypagebank.do") 
	public String mypagebank(HttpServletRequest request, Model model, @RequestParam HashMap<String, Object> map) throws Exception{
		return "/mypage/mypagebank"; 
	}
		
	// 주소입력 팝업
	@RequestMapping("/addr.do") 
    public String addr(Model model, @RequestParam HashMap<String, Object> map, HttpServletRequest request) throws Exception{
		
		return "/mypage/jusoPopup";
    }
		
	// 유저 프로필 정보 변경 (닉네임, 이름)
	@RequestMapping(value = "/mypage/editFrofill.dox", method = RequestMethod.POST, produces = "application/json;charset=UTF-8")
	@ResponseBody
	public String editFrofill(Model model, @RequestParam HashMap<String, Object> map) throws Exception {
		HashMap<String, Object> resultMap = new HashMap<String, Object>();
		mypageService.editUserProfill(map);
					
		return new Gson().toJson(resultMap);
	}
	
	// 유저 프로필 사진 출력
	@RequestMapping(value = "/user/profileImg.dox", method = RequestMethod.POST, produces = "application/json;charset=UTF-8")
	@ResponseBody
	public String profileImg(Model model, @RequestParam HashMap<String, Object> map) throws Exception {
		HashMap<String, Object> resultMap = new HashMap<String, Object>();
		Mypage imgInfo = mypageService.searchUserImg(map);
		resultMap.put("imgInfo", imgInfo);
						
		return new Gson().toJson(resultMap);
	}
	
	// 유저 포인트 사용 내역 출력
	@RequestMapping(value = "/pointList.dox", method = RequestMethod.POST, produces = "application/json;charset=UTF-8")
	@ResponseBody
	public String pointList(Model model, @RequestParam HashMap<String, Object> map) throws Exception {
		HashMap<String, Object> resultMap = new HashMap<String, Object>();
		List<Mypage> pointList = mypageService.searchUserPointList(map);
		resultMap.put("pointList", pointList);
							
		return new Gson().toJson(resultMap);
	}
	
	// 유저 포인트 사용 내역 출력
	@RequestMapping(value = "/addUserAcc.dox", method = RequestMethod.POST, produces = "application/json;charset=UTF-8")
	@ResponseBody
	public String addUserAcc(Model model, @RequestParam HashMap<String, Object> map) throws Exception {
		HashMap<String, Object> resultMap = new HashMap<String, Object>();
		mypageService.addUserAccount(map);
		
								
		return new Gson().toJson(resultMap);
	}
	
	// 유저 포인트 사용 내역 출력
	@RequestMapping(value = "/likeList.dox", method = RequestMethod.POST, produces = "application/json;charset=UTF-8")
	@ResponseBody
	public String likeList(Model model, @RequestParam HashMap<String, Object> map) throws Exception {
		HashMap<String, Object> resultMap = new HashMap<String, Object>();
		List<Product> likeList = mypageService.searchUserLikeList(map);
		resultMap.put("likeList", likeList);
								
		return new Gson().toJson(resultMap);
	}
	
	// 유저 구매 판매 내역 출력
	@RequestMapping(value = "/sellBuyCount.dox", method = RequestMethod.POST, produces = "application/json;charset=UTF-8")
	@ResponseBody
	public String sellBuyCount(Model model, @RequestParam HashMap<String, Object> map) throws Exception {
		HashMap<String, Object> resultMap = new HashMap<String, Object>();
		resultMap = mypageService.countUserBuyAndSell(map);
			
									
		return new Gson().toJson(resultMap);
	}
		
	// 유저 프로필 사진 변경
	@RequestMapping(value = "/editUserImg.dox", method = RequestMethod.POST, produces = "application/json;charset=UTF-8")
	@ResponseBody
	public String editUserImg(@RequestParam("file1") MultipartFile multi, @RequestParam("uId") String uId, @RequestParam("imgName") String imgName, HttpServletRequest request,HttpServletResponse response, Model model)
    {
		
		String url = null;
        String path="c:\\img";
        try {
        	
        	String path3 = System.getProperty("user.dir"); // 현재 디펙토리 경로 
        	System.out.println("path3 : "+path3+"\\src\\main\\webapp\\img\\user\\"+imgName);
			System.out.println("imgName : "+imgName);
			
			
			if(!imgName.equals("defaultImg.png")) {
				String imagePath = path3 + "\\src\\main\\webapp\\img\\user\\" + imgName; 
	        	File imageFile = new File(imagePath); 
				  if (imageFile.exists()) {   
					  if (imageFile.delete()) { // 
						  System.out.println("기존 이미지 파일 삭제 성공");
						  } else {
							  	System.out.println("기존 이미지 파일 삭제 실패"); 
							  	} 
				  		} else {
				  		   System.out.println("삭제할 이미지 파일이 존재하지 않습니다.");
				   } // 기존이미지 삭제
			}
			//기존 이미지 삭제 
        	
			         	
        	
            //String uploadpath = request.getServletContext().getRealPath(path);
            String uploadpath = path;
            String originFilename = multi.getOriginalFilename();
            String extName = originFilename.substring(originFilename.lastIndexOf("."),originFilename.length());
            long size = multi.getSize();
            String saveFileName = genSaveFileName(extName);
   
            System.out.println("uploadpath : " + uploadpath);
            System.out.println("originFilename : " + originFilename);
            System.out.println("extensionName : " + extName);
            System.out.println("size : " + size);
            System.out.println("saveFileName : " + saveFileName);
            String path2 = System.getProperty("user.dir");
            System.out.println("Working Directory = " + path2 + "\\src\\webapp\\img\\user");
            
            if(!multi.isEmpty()) {
            	
                File file = new File(path2 + "\\src\\main\\webapp\\img\\user", saveFileName);
                multi.transferTo(file);
                
                HashMap<String, Object> map = new HashMap<String, Object>();
                map.put("filename", saveFileName);
                map.put("path", "../img/user/" + saveFileName);
                map.put("uId", uId);
                
                // update 쿼리 실행
                mypageService.editUserImg(map);
                
                model.addAttribute("filename", multi.getOriginalFilename());
                model.addAttribute("uploadPath", file.getAbsolutePath());
                
                return "redirect:list.do";
            }
        }catch(Exception e) {
            System.out. println(e);
        }
        return "redirect:list.do";
		
	}

	// 유저프로필 사진 기본이미지로 변경
	@RequestMapping(value = "/imgRemove.dox", method = RequestMethod.POST, produces = "application/json;charset=UTF-8")
	@ResponseBody
	public String removeImg(@RequestParam("uId") String uId, @RequestParam("imgName") String imgName, HttpServletRequest request,HttpServletResponse response, Model model)
    {
		
		String url = null;
        String path="c:\\img";
        try {
        	
        	String path3 = System.getProperty("user.dir"); // 현재 디펙토리 경로 
        	System.out.println("path3 : "+path3+"\\src\\main\\webapp\\img\\user\\"+imgName);
			System.out.println("imgName : "+imgName);
			  //기존 이미지 삭제 
        	String imagePath = path3 + "\\src\\main\\webapp\\img\\user\\" + imgName; 
        	
        	if(!imgName.equals("defaultImg.png")) {
        		File imageFile = new File(imagePath); 
  			  if (imageFile.exists()) {   
  				  if (imageFile.delete()) { // 
  					  System.out.println("기존 이미지 파일 삭제 성공");
  					  } else {
  						  	System.out.println("기존 이미지 파일 삭제 실패"); 
  						  	} 
  			  		} else {
  			  		   System.out.println("삭제할 이미지 파일이 존재하지 않습니다.");
  			   } // 기존이미지 삭제
        	}
        	
			         	
        	
            //String uploadpath = request.getServletContext().getRealPath(path);
            String uploadpath = path;
           
            String saveFileName = "defaultImg.png"; // 기본프사
   
            System.out.println("uploadpath : " + uploadpath);
           
            System.out.println("saveFileName : " + saveFileName);
            String path2 = System.getProperty("user.dir");
            System.out.println("Working Directory = " + path2 + "\\src\\webapp\\img\\user");
            
           
            	
                File file = new File(path2 + "\\src\\main\\webapp\\img\\user", saveFileName);
               
                
                HashMap<String, Object> map = new HashMap<String, Object>();
                map.put("filename", saveFileName);
                map.put("path", "../img/user/" + saveFileName);
                map.put("uId", uId);
                
                // update 쿼리 실행
                mypageService.editUserImg(map);
                
               
                model.addAttribute("uploadPath", file.getAbsolutePath());
                
                return "redirect:list.do";
            
        }catch(Exception e) {
            System.out.println(e);
        }
        return "redirect:list.do";
		
	}
	// 현재 시간을 기준으로 파일 이름 생성
    private String genSaveFileName(String extName) {
        String fileName = "";
        
        Calendar calendar = Calendar.getInstance();
        fileName += calendar.get(Calendar.YEAR);
        fileName += calendar.get(Calendar.MONTH);
        fileName += calendar.get(Calendar.DATE);
        fileName += calendar.get(Calendar.HOUR);
        fileName += calendar.get(Calendar.MINUTE);
        fileName += calendar.get(Calendar.SECOND);
        fileName += calendar.get(Calendar.MILLISECOND);
        fileName += extName;
        
        return fileName;
    }
	
		
}
