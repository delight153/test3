<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="ko">

<head>
    <meta charset="utf-8">
    <meta name="description" content="네이버 예약, 네이버 예약이 연동된 곳 어디서나 바로 예약하고, 네이버 예약 홈(나의예약)에서 모두 관리할 수 있습니다.">
    <meta name="viewport" content="width=device-width,initial-scale=1,maximum-scale=1,minimum-scale=1,user-scalable=no">
    <title>네이버 예약</title>
    <link href="../css/style.css" rel="stylesheet">
     <link href="../css/tabui.css" rel="stylesheet">
</head>

<body>
    <div id="container">
        <div class="header">
            <header class="header_tit">
                <h1 class="logo">
                    <a href="https://m.naver.com/" class="lnk_logo" title="네이버"> <span class="spr_bi ico_n_logo">네이버</span> </a>
                    <a href="./myreservation.html" class="lnk_logo" title="예약"> <span class="spr_bi ico_bk_logo">예약</span> </a>
                </h1>
                <a href="./bookinglogin" class="btn_my"> <span class="viewReservation" title="예약확인">예약확인</span> </a>
            </header>
        </div>
        <hr>
        <div class="event">
            <div class="section_visual">
                <div class="group_visual">
                    <div class="container_visual">
                        <div class="prev_e" style="display:none;">
                            <div class="prev_inn">
                                <a href="#" class="btn_pre_e" title="이전"> <i class="spr_book_event spr_event_pre">이전</i> </a>
                            </div>
                        </div>
                        <div class="nxt_e" style="display:none;">
                            <div class="nxt_inn">
                                <a href="#" class="btn_nxt_e" title="다음"> <i class="spr_book_event spr_event_nxt">다음</i> </a>
                            </div>
                        </div>
                        <div>
                            <div class="container_visual">
                                <!-- 슬라이딩기능: 이미지 (type = 'th')를 순차적으로 노출 -->
                                <ul class="visual_img">
                                </ul>
                            </div>
                            <span class="nxt_fix" style="display:none;"></span>
                        </div>
                    </div>
                </div>
            </div>
            <div class="section_event_tab">
                <ul class="event_tab_lst tab_lst_min">
                    <li class="item" data-category="0">
                        <a class="anchor active"> <span>전체리스트</span> </a>
                    </li>
                    <li class="item" data-category="1">
                        <a class="anchor"> <span>전시</span> </a>
                    </li>
                    <li class="item" data-category="2">
                        <a class="anchor"> <span>뮤지컬</span> </a>
                    </li>
                    <li class="item" data-category="3">
                        <a class="anchor"> <span>콘서트</span> </a>
                    </li>
                    <li class="item" data-category="4">
                        <a class="anchor"> <span>클래식</span> </a>
                    </li>
                    <li class="item" data-category="5">
                        <a class="anchor"> <span>연극</span> </a>
                    </li>
                </ul>
            </div>
            <div class="section_event_lst">
                <p class="event_lst_txt" id="">바로 예매 가능한 행사가 <span class="pink">${count}개</span> 있습니다</p>
                <div class="wrap_event_box">
                    <!-- [D] lst_event_box 가 2컬럼으로 좌우로 나뉨, 더보기를 클릭할때마다 좌우 ul에 li가 추가됨 -->
              
	<br>
              <section class="contents">
                <c:forEach items="${list}" var="product">
<ul class="lst_event_box">
                         
                        <li class="item">
                            <a href="detail.html" class="item_book">
                                <div class="item_preview"> <img alt="뮤지컬  최초 내한" class="img_thumb" src="${product.save_file_name}">  <span class="img_border"></span> </div>
                                <div class="event_txt">
                                    <h4 class="event_txt_tit"> <span>${product.id} </span> <small class="sm">${product.category_id}</small> </h4>
                                    <p class="event_txt_dsc"> ${product.description}  </p>
                                </div>
                            </a>
                        </li>
                       
                    </ul>
            
             </c:forEach>
              </section>
               
                    <!-- 더보기 -->
                   </div> 
               
                <div class="more">
                        <button class="btn" id="myBtn"><span>더보기</span></button>
                </div>
               
            </div>
        </div>
    </div>
    <footer>
        <div class="gototop">
            <a href="#" class="lnk_top"> <span class="lnk_top_text">TOP</span> </a>
        </div>
        <div class="footer">
            <p class="dsc_footer">네이버(주)는 통신판매의 당사자가 아니며, 상품의정보, 거래조건, 이용 및 환불 등과 관련한 의무와 책임은 각 회원에게 있습니다.</p>
            <span class="copyright">© NAVER Corp.</span>
        </div>
    </footer>


    <script type="rv-template" id="promotionItem">
    <li class="item" style="background-image: url(http://211.249.62.123/productImages/${productId}/${productImageId});">
        <a href="#"> <span class="img_btm_border"></span> <span class="img_right_border"></span> <span class="img_bg_gra"></span>
            <div class="event_txt">
                <h4 class="event_txt_tit"></h4>
                <p class="event_txt_adr"></p>
                <p class="event_txt_dsc"></p>
            </div>
        </a>
    </li>
    </script>

    <script type="rv-template" id="itemList">
<ul class="lst_event_box">
        <li class="item">
            <a href="detail.html?id=${id}" class="item_book">
                <div class="item_preview">
                    <img alt="${description}" class="img_thumb" src="{save_file_name}">
                    <span class="img_border"></span>
                </div>
                <div class="event_txt">
                    <h4 class="event_txt_tit"> <span>{id}</span> <small class="sm">${id}</small> </h4>
                    <p class="event_txt_dsc">{description}</p>
                </div>
            </a>
        </li>
</ul>
    </script>
   
      <script>
      num=0;//초기화
      id=0;//초기화
        function makeTemplate(data, clickedName) {
            var html = document.getElementById("itemList").innerHTML;
           var resultHTML ="";
           for (var i = 0; i < data.list.length; i++) {  
        	  
        	   resultHTML += html.replace("{id}", data.list[i].id)
        	   .replace("{category_id}", data.list[i].category_id)
        	   .replace("{save_file_name}", data.list[i].save_file_name)
        	   .replace("{content}", data.list[i].content)
        	   .replace("{description}", data.list[i].description);
        	   
       }
        	
          console.log(resultHTML); 
            document.querySelector(".contents").innerHTML+= resultHTML;
            //개수
         
            
        }
        function sendAjax(url, clickedName) {
            var oReq = new XMLHttpRequest();
            oReq.addEventListener("load", function () {
                var data = JSON.parse(oReq.responseText);
                makeTemplate(data, clickedName);
            });
            oReq.open("GET", url);
            oReq.send();
        }
        
        //카테고리
        var tabmenu = document.querySelector(".event_tab_lst.tab_lst_min");
        tabmenu.addEventListener("click", function (evt) {
        	console.log(evt.target.innerText);
        	num=0;
        	document.querySelector(".contents").innerHTML= "";
        	category_id=evt.target.innerText;
        	switch (category_id) {
        	  case '전시' :
        		  id=1;
        	    break;
        	  case '뮤지컬':
        		  id=2;
        	    break;
        	  case '콘서트':
        		  id=3;
        	    break;
        	  case '클래식':
        		  id=4;
        	    break;
        	  case '연극':
        		  id=5;
        	    break;
        	  default :
        		  id=0;
        	    break;
        	}
        	 sendAjax("./reservations?start="+num+"&category_id="+id, evt.target.innerText);
        });
        //더보기
            document.getElementById("myBtn").addEventListener("click", function(){
            	 num+=4;
            	  sendAjax("./reservations?start="+num+"&category_id="+id);
            	});
        </script> 
        
        
      
</body>

</html>
