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

### 상품 카테고리 (SHOP페이지)
  <br />
  
  <img src="https://github.com/lcs9912/spring_teamPro_Crayon/assets/137017212/779d34c3-b321-420c-97a2-08788e83075d" alt="SHOP페이지" width="400"/>
  <img src="https://github.com/lcs9912/spring_teamPro_Crayon/assets/137017212/da73041e-0671-49ea-9417-32b387c27750" alt="SHOP페이지카테고리" width="400"/>
  
  <h4>카테고리별 상품과 검색 기능을 위해 CheckBox 의 VALUE 를 JSON의 문자열 형태로 변환후 @RequestMapping 으로 값을 받아 쿼리문에 적용 하였습니다.</h4>
  
- CheckBox의 VALUE 를 JSON의 문자열 형태로 반환하는 코드입니다.
  
   ```
      fnGetList : function(){
              var self = this;
              var arrSize = JSON.stringify(self.sizeArr);
              var arrCate1 = JSON.stringify(self.cate1Value);
              var arrCate2 = JSON.stringify(self.cate2Value);
              console.log(self.seachName);
              var nparmap = {
              		searchName : self.searchName,
              		sizeArr : arrSize,
              		cate1Value : arrCate1,
              		cate2Value : arrCate2
              }
                $.ajax({
                      url:"/shopList.dox",
                      dataType:"json",
                      type : "POST",
                      data : nparmap,
                      success : function(data) {
                      	self.shopList = data.shopList;
                      	console.log(self.shopList);
                      	console.log(self.sizeArr);
                      	if(self.searchName != "" && self.searchName != null){
                      		self.searchFlg = true;
                      	}else{
                      		self.searchFlg = false;
                      	}	
                      }
                  });
          },
   ```

<ul>
  <li>
	@RequestMapping 으로 값을 받아 JSON 문자열에서 List<Object>로 변환하여 다시 map에 넣어주는 작업을 수행하는 코드입니다.
  </li>
</ul>

   ```
    	// SHOP 리스트 출력
    	@RequestMapping(value = "/shopList.dox", method = RequestMethod.POST, produces = "application/json;charset=UTF-8")
    	@ResponseBody
    	public String ShopList(Model model, @RequestParam HashMap<String, Object> map) throws Exception {
    		HashMap<String, Object> resultMap = new HashMap<String, Object>();
    		
    		// 카테고리 검색
    	      if (map.get("sizeArr") != null) {
    	         String json = map.get("sizeArr").toString();
    	         ObjectMapper mapper = new ObjectMapper();
    	         List<Object> sizeArr = mapper.readValue(json, new TypeReference<List<Object>>(){});
    	         map.put("sizeArr", sizeArr);
    	      }
    	      if (map.get("cate1Value") != null) {
    		         String json = map.get("cate1Value").toString();
    		         ObjectMapper mapper = new ObjectMapper();
    		         List<Object> cate1Value = mapper.readValue(json, new TypeReference<List<Object>>(){});
    		         map.put("cate1Value", cate1Value);
    		      }
    	      if (map.get("cate2Value") != null) {
    		         String json = map.get("cate2Value").toString();
    		         ObjectMapper mapper = new ObjectMapper();
    		         List<Object> cate2Value = mapper.readValue(json, new TypeReference<List<Object>>(){});
    		         map.put("cate2Value", cate2Value);
    		      }
    	      
    	    // 카테고리 검색  리스트 출력 
    		List<Main> shopList = mainService.searchShopList(map);
    		resultMap.put("shopList", shopList);
    		return new Gson().toJson(resultMap);
    	}
   ```

<ul>
	<li>
		상품리스트 출력 쿼리문입니다.
	</li>
</ul>

  ```
      <!-- SHOP 리스트 출력 -->
  	<select id="selectShopList" parameterType="hashmap"
  		resultType="com.example.sample1.model.Main">
  		SELECT * 
  		FROM T1_PRODUCT_UPDATE U
  		INNER JOIN T1_PRODUCT_IMG I
  		ON I.PRODUCT_NAME = U.PRODUCT_NAME
  		INNER JOIN T1_PRODUCT_BRAND B
  		ON B.PRODUCT_BRAND = U.PRODUCT_BRAND
  		LEFT JOIN(
  				SELECT PRODUCT_MODEL, MIN(PRODUCT_PRICE) AS BUYMINPRICE
  				FROM T1_PRODUCT_UPDATE 
  				WHERE SELLBUY = 'B'
  				GROUP BY PRODUCT_MODEL
  		) M ON M.PRODUCT_MODEL = U.PRODUCT_MODEL
  		WHERE 1=1
  		<if test="searchName != '' and  searchName != null">
  			AND (U.PRODUCT_NAME LIKE  CONCAT('%',#{searchName},'%')
  					 OR U.PRODUCT_KNAME LIKE CONCAT('%',#{searchName},'%')
  					 OR B.BRAND_NAME LIKE CONCAT('%',#{searchName},'%'))
  		</if>
  		<if test="sizeArr != null  and sizeArr.size() > 0">
  		AND U.PRODUCT_SIZE IN
  			<foreach item="sizeItem" index="index" open="(" close=")" separator="," collection="sizeArr">
                 #{sizeItem}
              </foreach>
  		</if>
  		<if test="cate1Value != null and cate1Value.size() > 0">
  	    AND U.PRODUCT_CATEGORIE1 IN
  			<foreach item="cate1Item" index="index" open="(" close=")" separator="," collection="cate1Value">
  				#{cate1Item}
  			</foreach>
  		</if>
  		<if test="cate2Value != null and cate2Value.size() > 0">
  	    AND U.PRODUCT_CATEGORIE2 IN
  			<foreach item="cate2Item" index="index" open="(" close=")" separator="," collection="cate2Value">
  				#{cate2Item}
  			</foreach>
  		</if>
  		<if test="priceValue != null and priceValue.size() > 0">
  		AND U.PRODUCT_PRICE BETWEEN
  			<foreach item="priceItem" index="index" open="(" close=")" separator="," collection="priceValue">
  				#{priceItem}
  			</foreach>
  		</if>
  		GROUP BY U.PRODUCT_MODEL
  		ORDER BY U.PRODUCT_INTEREST DESC
  	</select>
  ```
<br>

### 검색기능
<br>

<img src="https://github.com/lcs9912/spring_teamPro_Crayon/assets/137017212/cdf3d24b-c0bc-457d-87ff-dd47d85f01e5" alt="검색페이지" width="400">
<img src="https://github.com/lcs9912/spring_teamPro_Crayon/assets/137017212/3111e3a1-785e-4f6e-9e4d-bd0e41b3da4d" alt="검색완료" width="400">

검색 기능을위해 검색페이지에서 검색어를 입력받아 JSON의 문자열 형태로 SHOP 페이지로 페이지전환을 합니다.

- 검색어를 입력받고 페이지전환을 하는 코드입니다.
   ```
     // 검색
		fnSearch : function(searchName){
			var self = this;
			var nparmap = {searchName : self.searchName, uId : self.uId};
			   $.ajax({
	                url:"/search.dox", 
	                dataType:"json", 
	                type : "POST",  
	                data : nparmap, 
	                success : function(data) {
	                	self.fnSearchList();
	            		self.fnUserSearchList();
						$.pageChange("/mainpageshopping.do", {searchName : self.searchName});  
	                }
	            });   
		},
   ```
- 입력 받은 검색어를 JSON 의 문자열 형태로 변환후 페이지 이동을 시켜주는 함수입니다.
   ```
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
