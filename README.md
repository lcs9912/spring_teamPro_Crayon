![crayon_logo](https://github.com/wuuuugi/shopping/assets/137017155/fff55294-d8ef-4f0b-805d-0bbda4a85ba3)
<div style="text-align: center;"><h1>CRAYON</h1></div>

<br>

# 📖프로젝트 소개

> 'Crayon'을 소개합니다 ( •⌄• ू )✧( •⌄• ू )✧( •⌄• ू )✧
> 
한정판 의류 및 신발등 다양한 한정판 제화를 좋아하는 사람들을 위한 한정판 상품 판매/구매 및 정보 제공이 가능한 웹 플랫폼 서비스입니다.
<br>
<br>

## 📜서비스 내용

- 판매자와 구매자의 경계없이 모든 회원이 판매자와 구매자가 될 수 있습니다. 
  - 판매자는 상품 등록이 가능하고 구매자는 상품 구매가 가능합니다.
  - 판매자도 상품 구매가 가능하고, 구매자도 상품 등록이 가능합니다.
- 사용자가 지정한 검색 조건으로 상품을 검색할 수 있습니다. 
  - 카테고리별, 인기순으로도 상품 조회가 가능합니다.
- 한정판 상품의 시세 정보를 제공합니다.
- 한정판 상품의 경매 등록 및 낙찰 서비스를 제공합니다.

## 📆개발 기간 

- 2023-08-09 ~ 2023.08.29

## 🛠기술 스택

- Spring Boot
- HTML, CSS, JavaScript
- Vue.js, jQuery
- MySQL

## 👪팀 소개

| 이름         | 역할                               |
|:------------:|:----------------------------------:|
| 강도현(FE)   | 로그인, 아이디 비밀번호 찾기, 회원가입, 고객센터, 상품페이지 |
| 장승호(FE)   | 웹디자인, 화면설계이미지, 제작 데이터 수집, CSS 전제 정비, 메인 페이지 슬라이더, 로고 에니메이션 |
| 손명욱(BE)   | 💡팀장💡, 포인트 충전, 경매페이지, 경매 페이지, 고객센터, DB 설계 데이터 수집 |
| 서보규(BE)   | 회원가입, 스타일 게시판, 상품 이미지 출력, 상품 등록, 상품 판매, 결제 내역 |
| 이찬신(BE)   | 구매, 판매 내역, 마이페이지, 프로필 관리 주소록, 결제 내역, 포인트 충전 |

## 📂프로젝트 구성도

- ERD

![drawio jpg](https://github.com/wuuuugi/shopping/assets/137017155/2eb4e19a-075a-4170-a5c7-095fef310907)


## 💻담당 역할

### 1. 상품 카테고리 (SHOP페이지)
  <br />
  
  <img src="https://github.com/lcs9912/spring_teamPro_Crayon/assets/137017212/779d34c3-b321-420c-97a2-08788e83075d" alt="SHOP페이지" width="400"/>
  <img src="https://github.com/lcs9912/spring_teamPro_Crayon/assets/137017212/da73041e-0671-49ea-9417-32b387c27750" alt="SHOP페이지카테고리" width="400"/>
  
  <h4>카테고리별 상품과 검색 기능을 위해 CheckBox 의 VALUE 를 JSON의 문자열 형태로 변환후 @RequestMapping 으로 값을 받아 쿼리문에 적용 하였습니다.</h4>
  
<br>

### 2. 검색기능
<br>

<img src="https://github.com/lcs9912/spring_teamPro_Crayon/assets/137017212/cdf3d24b-c0bc-457d-87ff-dd47d85f01e5" alt="검색페이지" width="400">
<img src="https://github.com/lcs9912/spring_teamPro_Crayon/assets/137017212/3111e3a1-785e-4f6e-9e4d-bd0e41b3da4d" alt="검색완료" width="400">

검색 기능을위해 검색페이지에서 검색어를 입력받아 JSON의 문자열 형태로 변환하여 SHOP 페이지로 페이지전환을 합니다.
코드 중복을 고려해 JSON형태로 변환후 페이지 이동하는 코드를 함수화 하였습니다.
- 입력 받은 검색어를 JSON 의 문자열 형태로 변환후 페이지 이동을 시켜주는 함수입니다.
   ```JS 
     pageChange : function(url, param) {
		var target = "_self";
		if(param == undefined){
			return;
		}
		var form = document.createElement("form"); 
			form.name = "dataform";
			form.action = url;
			form.method = "post";
			form.target = target;
		for(var name in param){
			var item = name;
			var val = "";
			if(param[name] instanceof Object){
				val = JSON.stringify(param[name]);
			} else {
				val = param[name];
			}
			var input = document.createElement("input");
			input.type = "hidden";
			input.name = item;
			input.value = val;
			form.insertBefore(input, null);
		}
		document.body.appendChild(form);
		form.submit();
		document.body.removeChild(form);
	},
   ```
### 3. 마이페이지
<img src="https://github.com/lcs9912/spring_teamPro_Crayon/assets/137017212/83debade-25d7-4a51-ba05-0987d8a54e74" alt="마이페이지 메인" width="400"/>

마이페이지의 메인화면 입니다. 이곳에서 구매,판매 내역을 볼수 있고. 프로필 이미지변경, 포인트충전, 내스타일, 등등 사용자의 관련된 페이지 이동이 가능합니다.

1. 마이페이지 - 관심상품, 로그인정보

<img src="https://github.com/lcs9912/spring_teamPro_Crayon/assets/137017212/84197b9a-02a8-4515-a720-0701d52a5de8" alt="마이페이지 관심상품" width="400"/>

사용자가 관심등록한 상품의 간략 정보를 한눈에 볼수 있는 페이지 입니다.

2. 마이페이지 - 로그인정보

<img src="https://github.com/lcs9912/spring_teamPro_Crayon/assets/137017212/c3b7548b-50f9-442a-8eff-d1d7ca871d6d" alt="마이페이지 로그인정보" width="400"/>

사용자본인의 로그인정보를 볼수 있고 비밀번호 힌트, 또는 비밀번호로 정보 변경이 가능합니다.

<img src="https://github.com/lcs9912/spring_teamPro_Crayon/assets/137017212/bbdc3ff1-7242-40b9-8cfb-4de2aecaf15e" alt="마이페이지 로그인정보 이메일변경" width="400"/>
<img src="https://github.com/lcs9912/spring_teamPro_Crayon/assets/137017212/d3be28aa-7445-4b03-b6d0-dca642c3b203" alt="마이페이지 로그인정보 비번변경" width="400"/>

### 4. 프로필관리

<img src="https://github.com/lcs9912/spring_teamPro_Crayon/assets/137017212/ba35c4de-f0a7-45e1-8ee3-952c12c0a647" alt="마이페이지 프로필관리" width="400"/>
<img src="https://github.com/lcs9912/spring_teamPro_Crayon/assets/137017212/2a604acd-5dc4-4156-867b-24bf9271ada3" alt="마이페이지 닉변" width="400"/>

1. 다른 사용자에게 보여질수 있는 정보들을 변경할수 있습니다. 비밀번호 인증이 완료되어야 닉네임변경이 가능합니다.

<img src="https://github.com/lcs9912/spring_teamPro_Crayon/assets/137017212/036f2b2b-acd9-4e69-91d2-734a17b40f39" alt="마이페이지 프사변경1" width="400"/>
<img src="https://github.com/lcs9912/spring_teamPro_Crayon/assets/137017212/df50a4d1-63fc-4107-a65f-0592dd9e1d7a" alt="마이페이지 프사변경2" width="400"/>

2. 프로필 이미지 변경입니다. 변경시에 이미지 데이터가 무한으로 쌓을것을 대비해 기존에 이미지를 자동으로 삭제한후 변경되도록 구현하였습니다.
   ```JAVA
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
			
			
			//기존 이미지 삭제
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
				   } 
			}// 기존이미지 삭제
			 
        	
			         	
        	
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
   ```
### 5. 사용자 주소록API
<img src="https://github.com/lcs9912/spring_teamPro_Crayon/assets/137017212/b41c6eb3-7fe2-4c07-826d-edf93c1f99f9" alt="주소록" width="400"/>

상품구매시 배송주소를 등록하는 페이지입니다. 주소기반산업지원서비스 API 를 활용하였습니다.

### 6. 포인트충전

<img src="https://github.com/lcs9912/spring_teamPro_Crayon/assets/137017212/48a444fa-5a07-4062-8b3c-390ce10a03e5" alt="포인트 충전" width="400"/>
<img src="https://github.com/lcs9912/spring_teamPro_Crayon/assets/137017212/44026abc-adc8-4115-884f-4f34e611f9f9" alt="포인트 충전API" width="400"/>

상품구매에 사용될 포인트를 충전하는 페이지 입니다. 포트원 API를 활용하였습니다.

### 7. 상품 상세페이지

<img src="https://github.com/lcs9912/spring_teamPro_Crayon/assets/137017212/2d640fa6-bd62-44e8-92ae-33ece063fca0" alt="상세1" width="400"/>
<img src="https://github.com/lcs9912/spring_teamPro_Crayon/assets/137017212/1e9b69ff-64d6-4298-aa01-0d4acc0b9c71" alt="상세2" width="400"/>

상품의 즉시구매,판매 가격, 발매가 등 상세 정보를 확인할수 있고, 로그인이 되어있다면 관심등록이 가능합니다.
또한 모든 거래 체결 내역과 입찰가를 차트화 시켜 공개하여 주식처럼 시세를 예측해 똑똑한 구매와 판매가 가능합니다.
차트API는 APEXCHARTS.JS 를 활용해 구현하였습니다.

### 8. 상품 즉시구매

<img src="https://github.com/lcs9912/spring_teamPro_Crayon/assets/137017212/fbbb0ef6-5287-4c14-b9d7-ac56900b4a59" alt="즉시구매1" width="400"/>
<img src="https://github.com/lcs9912/spring_teamPro_Crayon/assets/137017212/620d9f52-4447-4398-963b-d441a0f51844" alt="즉시구매2" width="400"/>
<img src="https://github.com/lcs9912/spring_teamPro_Crayon/assets/137017212/31fabd21-d6b6-4e0a-9eec-fc5789db9dea" alt="즉시구매3" width="400"/>

1. 현재 즉시 구매가격중 가장 낮은 순서로 구매가 가능합니다. 배송방법이 선택되고 최종결제 가격에 배송비를 포함하여 포인트에서 결제가 됩니다.
2. 상품을 구매할땨 해당 상품이 정상제품인지 검수하는 과정이 들어가는데 이때 수수료가 발생해 수익창출이 가능합니다.
3. 구매전 주의사항을 모두 동의해야 최종결제가 가능합니다.


   
