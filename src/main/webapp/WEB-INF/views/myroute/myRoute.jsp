<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!-- my_route_1.jsp -->
<%@ include file="../top.jsp"%>

<!-- main 1번 filter -->
<div class="container text-center clearfix">
<form name="f" action="myRouteAfter.do" method="post">
  <div class="row row-cols-3 g-10 p-5">
    <div class="col-lg-3 col-md-4">
    	<div id="trip_thema">
		     <select class="form-select" aria-label="Default select example" id="trip_thema">
			  <option selected>#여행태마</option>
			  <option value="1">#</option>
			  <option value="2">#</option>
			  <option value="3">#</option>
			</select>
	    </div>
    </div>
    
    <div class="col-lg-3 col-md-4">
      <div id="trip_style">
	      <select class="form-select" aria-label="Default select example" id="trip_style">
			  <option selected>#여행 스타일</option>
			  <option value="alone">#나 홀로 여행</option>
			  <option value="friend">#친구와 함께</option>
			  <option value="family">#가족과 함께</option>
			</select>
	     </div>
    </div>
    
    <div class="col-lg-3 col-md-4">
      <div id="region">
      <select class="form-select" aria-label="Default select example" id="region">
		  <option selected>세부지역(구)</option>
		  <option value="1">강남구</option>
		  <option value="2">강동구</option>
		  <option value="3">강북구</option>
		  <option value="4">강서구</option>
		  <option value="5">관악구</option>
		  <option value="6">광진구</option>
		  <option value="7">구로구</option>
		  <option value="8">금천구</option>
		  <option value="9">노원구</option>
		  <option value="10">도봉구</option>
		  <option value="11">동대문구</option>
		  <option value="12">동작구</option>
		  <option value="13">마포구</option>
		  <option value="14">서대문구</option>
		  <option value="15">서초구</option>
		  <option value="16">성동구</option>
		  <option value="17">성북구</option>
		  <option value="18">송파구</option>
		  <option value="19">양천구</option>
		  <option value="20">영등포구</option>
		  <option value="21">용산구</option>
		  <option value="22">은평구</option>
		  <option value="23">종로구</option>
		  <option value="24">중구</option>
		  <option value="25">중랑구</option>
		</select>
      </div>
    </div>
    
    <div class="col-lg-3 p-2">
		<input class="btn btn-outline-dark" type="reset" value="초기화">
    	<input class="btn btn-outline-dark" type="submit" value="저장">
    </div>
    </div>
	</form>
  </div>

<!-- main 2번 filter -->
<div class="container text-center clearfix">
  <div class="row row-cols-3 g-15">
  <!-- calendar -->
    <div class="col-lg-2 col-md-4">
		<div class="container mx-auto ps-3">
			<label class="p-2">여행일정</label>
     			<p><input type="text" class="datepicker" value="시작일" id="startDate"></p>
     		<script>
     		$.datepicker.setDefaults({
     			  dateFormat: 'yy-mm-dd',
     			  prevText: '이전 달',
     			  nextText: '다음 달',
     			  monthNames: ['1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월', '9월', '10월', '11월', '12월'],
     			  monthNamesShort: ['1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월', '9월', '10월', '11월', '12월'],
     			  dayNames: ['일', '월', '화', '수', '목', '금', '토'],
     			  dayNamesShort: ['일', '월', '화', '수', '목', '금', '토'],
     			  dayNamesMin: ['일', '월', '화', '수', '목', '금', '토'],
     			  showMonthAfterYear: true,
     			  yearSuffix: '년',
     			  todayHighlight: true
     			});
     			$(function(){
     				$('.datepicker').datepicker();
     			})
     		</script>
     		
     		<p><input type="text" class="datepicker" value="종료일" id="endDate"></p>
     		<script>
     		$.datepicker.setDefaults({
     			  dateFormat: 'yy-mm-dd',
     			  prevText: '이전 달',
     			  nextText: '다음 달',
     			  monthNames: ['1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월', '9월', '10월', '11월', '12월'],
     			  monthNamesShort: ['1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월', '9월', '10월', '11월', '12월'],
     			  dayNames: ['일', '월', '화', '수', '목', '금', '토'],
     			  dayNamesShort: ['일', '월', '화', '수', '목', '금', '토'],
     			  dayNamesMin: ['일', '월', '화', '수', '목', '금', '토'],
     			  showMonthAfterYear: true,
     			  yearSuffix: '년'
     			});
     			$(function(){
     				$('.datepicker').datepicker();
     			})
     		</script>
    	</div>
  	</div>
    
    <!-- spot -->
  <div class="col-lg-3 col-md-4">
    <div class="container mx-auto ps-3">
	  <label class="p-2">장소</label>
	  <ul class="nav nav-tabs justify-content-center" id="spot_tab" role="tablist">
		 <li class="nav-item" role="presentation">
    		<button class="nav-link active" id="search_tab" data-bs-toggle="tab" data-bs-target="#search" type="button" role="tab" aria-controls="saerch" aria-selected="true">검색</button></li>
  		 <li class="nav-item" role="presentation">
  		 	<button class="nav-link" id="favorite-tab" data-bs-toggle="tab" data-bs-target="#favorite" type="button" role="tab" aria-controls="favorite" aria-selected="false">즐겨찾기</button></li>
	   </ul>
	   
	<!-- search panel -->
		<div class="tab-content" id="nav-tabContent">
		  <div class="tab-pane fade show active" id="search" role="tabpanel" aria-labelledby="search-tab" tabindex="0">
		        <input type="text" placeholder="Search" aria-label="Search">
		        <button class="btn btn-outline-success btn-sm" type="button">GO!</button>

		  <!-- 검색항목이 뜨는 부분 -->
		  <a href="#">
		  <div class="card border-dark pt-2 mx-auto" style="width: 90%; height:70px;">
				  <div class="row g-0">
				    <div class="col-md-4">
				      <img src="resources/img/1.jpg" class="img-fluid-center rounded-start" style="width:70px; whight:70px">
				    </div>
				    <div class="col-md-7 mx-auto">
				        <p class="card-text">장소 정보(주소)...</p>
				    </div>
				  </div>
				</div> 
		  </a>
		  </div>
		</div>	
	  
	  <!-- favorite panel -->
		  <div class="tab-pane fade" id="favorite" role="tabpanel" aria-labelledby="favorite-tab" tabindex="0">
		  	<a href="#">
				<div class="card border-dark pt-2 mx-auto" style="width: 90%; height:70px;">
				  <div class="row g-0">
				    <div class="col-md-4">
				      <img src="resources/img/1.jpg" class="img-fluid-center rounded-start" style="width:70px; whight:70px">
				    </div>
				    <div class="col-md-7 mx-auto">
				        <p class="card-text">장소 정보(주소)...</p>
				    </div>
				  </div>
				</div> 
			</a>
		  	</div>
		</div>
    </div>
 
   
   <!-- schedule -->
   <div class="col-lg-3 col-md-4">
   	<div class="container mx-auto ps-3">
   		<label>일정</label>   
				<div class="card border-dark pt-2" style="width: 100%; height:100px;">
				  <div class="row g-0">
				    <div class="col-md-4">
				      <img src="resources/img/1.jpg" class="img-fluid-center rounded-start" style="width:70px; whight:70px">
				    </div>
				    <div class="col-md-7 mx-auto">
				        <p class="card-text" id="spot_info">장소명</p>
				        <p class="card-text"><small class="text-muted" id="addr">의정부시 청사로 38</small></p>
				    </div>
				  </div>
				</div> 
				
		<input type="text" id="addre">	
    	<button type="button" id="searchbtn">검색!</button>
	  		</div>
  	 </div>

    
  <!-- map -->
   <div class="col-lg-4 col-md-12">
     <div class="container mx-auto"> 
    	<div class="tab-content">
	    <div id="map" style="width:100%;height:350px;"></div>
			<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=7dfa24ca49ecafb1d1c5352143d4a441&libraries=services,clusterer,drawing"></script>
			<!-- api는 head, body 상관없지만 코드 실행보다는 먼저 선언 -->
			<%@ include file="kakaoMap.jsp" %>
  	  	</div>
	   	</div>
     </div>
  </div>
</div>

<%@ include file="../bottom.jsp"%>