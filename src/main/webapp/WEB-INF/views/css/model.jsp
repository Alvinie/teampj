<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text-javascript" src="resources/jquery-1.12.1-ui.js"></script>

<script type="text/javascript">
function doDisplay(){
	   var con1 = document.getElementById("myDiv1");
	   var con2= document.getElementById("myDiv2");
	   var con3= document.getElementById("myDiv3");
	   var con4= document.getElementById("myDiv4");
	   if(con1.style.display=='none'){
	      con1.style.display='inline';
	      con2.style.display='none';
	      con3.style.display='none';
	      con4.style.display='none';
	   }else{
	      con1.style.display='none';
	      }	   
	}
function doDisplay2(){
	   var con1 = document.getElementById("myDiv1");
	   var con2= document.getElementById("myDiv2");
	   var con3= document.getElementById("myDiv3");
	   var con4= document.getElementById("myDiv4");
	   if(con2.style.display=='none'){
	      con2.style.display='inline';
	      con1.style.display='none';
	      con3.style.display='none';
	      con4.style.display='none';
	   }else{
	      con2.style.display='none';
	      }	   
	}
function doDisplay3(){
	   var con1 = document.getElementById("myDiv1");
	   var con2= document.getElementById("myDiv2");
	   var con3= document.getElementById("myDiv3");
	   var con4= document.getElementById("myDiv4");
	   if(con3.style.display=='none'){
	      con3.style.display='inline';
	      con1.style.display='none';
	      con2.style.display='none';
	      con4.style.display='none';
	   }else{
	      con3.style.display='none';
	      }	   
	}
function doDisplay4(){
	   var con1 = document.getElementById("myDiv1");
	   var con2= document.getElementById("myDiv2");
	   var con3= document.getElementById("myDiv3");
	   var con4= document.getElementById("myDiv4");
	   if(con4.style.display=='none'){
	      con4.style.display='inline';
	      con1.style.display='none';
	      con2.style.display='none';
	      con3.style.display='none';
	   }else{
	      con4.style.display='none';
	      }	   
	}

</script>

<style>
	
	span { 
		cursor:pointer;
		font-weight:bold;		 
		font-size: 13px;
	 }
	
	.car_list ul {
		text-align: right;
		display: block;
		clear: both;
	}
	
	.car_image li  {
		float:left;
		width: 210px;
		height: 197px;
		padding: 10px 10px 20px;
	}
	
	.model_info {
		 width:280px;
		 height:778px;
		 float: left;
		 background-color: #FFFFFF;
	}
	
	.hyn1 {
		display: none;
		position: absolute;
	}
	
	
	.img_frame:hover { 
		background-color: #EAEAEA;
	} 	
	
	.car {
		width: 190px;
		height: 85.172px;
	}
	
	.video {
		padding-top: 458px;
		padding-left: 430px;
		height:0;
	}
		.modelf{
		margin-top: 400px;
	}
	
</style>

</head>
<body>
	<c:import url="../default/header.jsp"/>
<div>

	<div class="model_info" style="padding-left:150px; padding-top: 40px;">
	<ul>
    	<li>
        	<b style="font-size:16px; text-align:left;">
        		추천차량
        	</b>
        </li>        
    </ul>
    
    <ul class="car_list" style="height:70px; font-size: 15px;">
    	<li style="text-align: left;">
    		<span>
    			<a href="javascript:doDisplay();" onMouseover="this.style.color='#007fa8';" onMouseout="this.style.color='black';" 
    			title="승용 차량 자세히 보기">승 용 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;>
    			</a>
    		</span>
    	</li>
    </ul>	
    
    <ul class="car_list" style="height:70px; font-size: 15px;">
    	<li style="text-align: left;">
    		<span>
    			<a href="javascript:doDisplay2();" onMouseover="this.style.color='#007fa8';" onMouseout="this.style.color='black';" 
    			title="SUV 차량 자세히 보기">SUV &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;    >
    			</a>
    		</span>
    	</li>
    </ul>		
    
    <ul class="car_list" style="height:70px; font-size: 15px;">
    	<li style="text-align: left;">
    		<span>
    			<a href="javascript:doDisplay3();" onMouseover="this.style.color='#007fa8';" onMouseout="this.style.color='black';" 
    			title="MPV 차량 자세히 보기">MPV &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    				&nbsp;&nbsp;&nbsp;&nbsp;  >
    			</a>
    		</span>
    	</li>
    </ul>
    
    <ul class="car_list" style="height:70px; font-size: 15px;">
    	<li style="text-align: left;">	
    		<span>
    			<a href="javascript:doDisplay4();" onMouseover="this.style.color='#007fa8';" onMouseout="this.style.color='black';" 
    			title="친환경 차량 자세히 보기">친환경 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    				&nbsp;&nbsp;&nbsp;>
    			</a>
    		</span>
    	</li>
    </ul>
    </div> <!-- model_info end -->
    
    <div class="hyn1" id="myDiv1" style="width:987px; display: inline;"  >
    	<ul class="car_image">
          <li>
             <div class="img_frame">
             	<a href="grdetail" title="그랜져">
                   <img src="../resources/images/car_side/grandeur-well-side.png" class="car">
                   <div><span style="padding-left:75px;">그랜져</span></div>
                   <div><span style="padding-left:69px;">3,212만원</span></div>
                   <div><a href="../cars/estimate_grangeur" title="내 차 만들기" style="padding-left: 60px; font-size: 13px;">
                   			내 차 만들기
                   		</a>
                   </div>
             	</a>
             </div>
          </li>
    	 
    	 <li class="">
            <div class="img_frame">
             	<a href="sndetail" title="소나타">
                	<img src="../resources/images/car_side/sonata-well-side.png" class="car">
               		<div><span style="padding-left:75px;">소나타</span></div>
                	<div><span style="padding-left:69px;">2,326만원</span></div>
                	<div><a href="../cars/estimate_sonata" title="내 차 만들기" style="padding-left: 60px; font-size: 13px;">
                   			내 차 만들기
                   		</a>
                   </div>
             	</a>
             </div>          
         </li>
         
         <li class="">
            <div class="img_frame">
             	<a href="avdetail" title="아반떼">
                	<img src="../resources/images/car_side/all-new-avante-well-side.png" class="car">
               		<div><span style="padding-left:75px;">아반떼</span></div>
                	<div><span style="padding-left:69px;">1,531만원</span></div>
                	<div><a href="../cars/estimate_avante" title="내 차 만들기" style="padding-left: 60px; font-size: 13px;">
                   			내 차 만들기
                   		</a>
                   </div>
             	</a>
             </div>          
         </li>
         
         <li class="">
            <div class="img_frame">
             	<a href="i3detail" title="i30">
                	<img src="../resources/images/car_side/i30-well-side.png" class="car">
               		<div><span style="padding-left:85px;">i30</span></div>
                	<div><span style="padding-left:69px;">2,319만원</span></div>
                	<div><a href="../cars/estimate_i30" title="내 차 만들기" style="padding-left: 60px; font-size: 13px;">
                   			내 차 만들기
                   		</a>
                   </div>
             	</a>
             </div>          
         </li>
         
         <li class="">
            <div class="img_frame">
             	<a href="bldetail" title="벨로스터">
                	<img src="../resources/images/car_side/ioniq-electric-well-side.png" class="car">
               		<div><span style="padding-left:75px;">벨로스터</span></div>
                	<div><span style="padding-left:73px;">2,044만원</span></div>
                	<div><a href="../cars/estimate_veloster" title="내 차 만들기" style="padding-left: 65px; font-size: 13px;">
                   			내 차 만들기
                   		</a>
                   </div>
             	</a>
            </div>
         </li>
    	</ul> <!-- car_image end -->
    	
    </div> <!-- myDiv1 end -->
    
    <div class="hyn1" id="myDiv2" style="width:987px;">
   		<ul class="car_image">
          <li>
             <div class="img_frame">
             	<a href="vndetail" title="베뉴">
                   <img src="../resources/images/car_side/venue-well-side.png" class="car">
                   <div><span style="padding-left:85px;">베뉴</span></div>
                   <div><span style="padding-left:69px;">1,436만원</span></div>
                   <div><a href="../cars/estimate_venue" title="내 차 만들기" style="padding-left: 60px; font-size: 13px;">
                   			내 차 만들기
                   		</a>
                   </div>
             	</a>
             </div>
          </li>
    	 
    	 <li class=""> 
            <div class="img_frame">
             	<a href="kndetail" title="코나">
                	<img src="../resources/images/car_side/kona-hybrid-well-side.png" class="car">
               		<div><span style="padding-left:85px;">코나</span></div>
                	<div><span style="padding-left:69px;">1,867만원</span></div>
                	<div><a href="../cars/estimate_kona" title="내 차 만들기" style="padding-left: 60px; font-size: 13px;">
                   			내 차 만들기
                   		</a>
                   </div>
             	</a>
             </div>          
         </li>
         
         <li class="">
            <div class="img_frame">
             	<a href="tsdetail" title="투싼">
                	<img src="../resources/images/car_side/tucson-well-side.png" class="car">
               		<div><span style="padding-left:85px;">투싼</span></div>
                	<div><span style="padding-left:69px;">2,199만원</span></div>
                	<div><a href="../cars/estimate_tucson" title="내 차 만들기" style="padding-left: 60px; font-size: 13px;">
                   			내 차 만들기
                   		</a>
                   </div>
             	</a>
             </div>          
         </li>
         
         <li class="">
            <div class="img_frame">
             	<a href="stdetail" title="싼타페">
                	<img src="../resources/images/car_side/santafe-well-side.png" class="car">
               		<div><span style="padding-left:75px;">싼타페</span></div>
                	<div><span style="padding-left:69px;">2,628만원</span></div>
                	<div><a href="../cars/estimate_santafe" title="내 차 만들기" style="padding-left: 60px; font-size: 13px;">
                   			내 차 만들기
                   		</a>
                   </div>
             	</a>
             </div>          
         </li>
         
         <li class="">
            <div class="img_frame">
             	<a href="pldetail" title="팰리셰이드">
                	<img src="../resources/images/car_side/palisade-20my-well-side.png" class="car">
               		<div><span style="padding-left:68px;">팰리셰이드</span></div>
                	<div><span style="padding-left:69px;">3,497만원</span></div>
                	<div><a href="../cars/estimate_palisade" title="내 차 만들기" style="padding-left: 60px; font-size: 13px;">
                   			내 차 만들기
                   		</a>
                   </div>
             	</a>
             </div>          
         </li>
    	</ul>
    </div> <!-- myDiv2 end -->
    
    <div class="hyn1" id="myDiv3">
    	<ul class="car_image">
          <li>
             <div class="img_frame">
             	<a href="gsdetail" title="그랜드 스타렉스">
                   <img src="../resources/images/car_side/grandstarex-well-side.png" class="car">
                   <div><span style="padding-left:53px;">그랜드 스타렉스</span></div>
                   <div><span style="padding-left:69px;">2,209만원</span></div>
                   <div><a href="../cars/estimate_grandstarex" title="내 차 만들기" style="padding-left: 60px; font-size: 13px;">
                   			내 차 만들기
                   		</a>
                   </div>
             	</a>
             </div>
          </li>
         <li class="">
            <div class="img_frame">
             	<a href="gsldetail" title="그랜드 스타랙스 Limousine">
                	<img src="../resources/images/car_side/grandstarex-limousine-well-side.png" class="car">
               		<div><span style="padding-left:20px;">그랜드 스타랙스 Limousine</span></div>
                	<div><span style="padding-left:69px;">4,185만원</span></div>
                	<div><a href="../cars/estimate_grandstarex_limousine" title="내 차 만들기" style="padding-left: 60px; font-size: 13px;">
                   			내 차 만들기
                   		</a>
                   </div>
             	</a>
             </div>          
         </li>
    </div> <!-- myDiv3 end -->
    
    <div class="hyn1" id="myDiv4">
    	<ul class="car_image">
          <li>
             <div class="img_frame">
             	<a href="nxdetail" title="넥쏘">
                   <img src="../resources/images/car_side/nexo-well-side.png" class="car">
                   <div><span style="padding-left:85px;">넥쏘</span></div>
                   <div><span style="padding-left:69px;">6,890만원</span></div>
                   <div><a href="../cars/estimate_nexo" title="내 차 만들기" style="padding-left: 60px; font-size: 13px;">
                   			내 차 만들기
                   		</a>
                   </div>
             	</a>
             </div>
          </li>
    	 
    	 <li class="">
            <div class="img_frame">
             	<a href="ptdetail" title="포터">
                	<img src="../resources/images/car_side/porter2-well-side.png" class="car">
               		<div><span style="padding-left:85px;">포터2</span></div>
                	<div><span style="padding-left:69px;">4,060만원</span></div>
                	<div><a href="../cars/estimate_porter2" title="내 차 만들기" style="padding-left: 60px; font-size: 13px;">
                   			내 차 만들기
                   		</a>
                   </div>
             	</a>
            </div>          
         </li>
    </div> <!-- myDiv4 end -->
</div>
	
	<div class="video"> <!-- youtube 동영상 -->
		<iframe width="950px" height="360px;" 
			src="https://www.youtube.com/embed/a5_w0YjIchM?autoplay=1&amp;loop=1;playlist=a5_w0YjIchM" frameborder="0" 
			allow="accelerometer; encrypted-media; gyroscope; picture-in-picture" allowfullscreen>
		</iframe>
	</div>
	<div class="modelf"><c:import url="../default/footer.jsp"/></div>
</body>
</html>