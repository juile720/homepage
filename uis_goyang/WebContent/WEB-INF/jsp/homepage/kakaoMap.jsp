<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>homepage</title>
<link rel="stylesheet" href="css/kakaoMap.css?ver=1">
</head>
<body>
	<div id="logo">
		<a class="navbar-brand js-scroll-trigger" href="loginON.do"><img src="assets/img/navbar-logo.svg" alt="" width="200px"/></a>
	</div>
	<div class="listBar">
	<h3>List</h3>
        <ul>
            <li><a href="#" id="SL" onclick="List('선릉역')">선릉역</a></li>
            <li><a href="#" id="SW" onclick="List('수원역')">수원역</a></li>
            <li><a href="#" id="HS" onclick="List('화서역')">화서역</a></li>
        </ul>
    </div>
	<div id="map" style="width:1200px;height:700px;"></div>
	<div id="inputLink">
        hello<br>
    </div>
	
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=d7797ebab266dab6c351344d61d9e7da&libraries=services"></script>
<script>
// 마커를 클릭하면 장소명을 표출할 인포윈도우 입니다
var infowindow = new kakao.maps.InfoWindow({zIndex:1});

var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
    mapOption = {
        center: new kakao.maps.LatLng(37.566826, 126.9786567), // 지도의 중심좌표
        level: 3 // 지도의 확대 레벨
    };  

// 지도를 생성합니다    
var map = new kakao.maps.Map(mapContainer, mapOption); 

// 장소 검색 객체를 생성합니다
var ps = new kakao.maps.services.Places();


//20210113안지은 리스트이름 클릭시 지도 이동
function List(str) {
                if (str == "선릉역"){
                	ps.keywordSearch('선릉역', placesSearchCB);
                	string = "선릉역 3D모델링";
                	document.querySelector("#inputLink").innerHTML = string.link("http://naver.com");                	
                }
                else if(str == "수원역"){
                	ps.keywordSearch('수원역', placesSearchCB);
                	document.querySelector("#inputLink").innerHTML = "수원";
                }
                else if(str == "화서역"){
                	ps.keywordSearch('화서역', placesSearchCB);
                	document.querySelector("#inputLink").innerHTML = "화서";
                }
            }


// 키워드 검색 완료 시 호출되는 콜백함수 입니다
function placesSearchCB (data, status, pagination) {
    if (status === kakao.maps.services.Status.OK) {

        // 검색된 장소 위치를 기준으로 지도 범위를 재설정하기위해
        // LatLngBounds 객체에 좌표를 추가합니다
        var bounds = new kakao.maps.LatLngBounds();

        for (var i=0; i<data.length; i++) {
            displayMarker(data[i]);    
            bounds.extend(new kakao.maps.LatLng(data[i].y, data[i].x));
        }       

        // 검색된 장소 위치를 기준으로 지도 범위를 재설정합니다
        map.setBounds(bounds);
    } 
}

// 지도에 마커를 표시하는 함수입니다
function displayMarker(place) {
    
    // 마커를 생성하고 지도에 표시합니다
    var marker = new kakao.maps.Marker({
        map: map,
        position: new kakao.maps.LatLng(place.y, place.x) 
    });

    // 마커에 클릭이벤트를 등록합니다
    kakao.maps.event.addListener(marker, 'click', function() {
        // 마커를 클릭하면 장소명이 인포윈도우에 표출됩니다
        infowindow.setContent('<div style="padding:5px;font-size:12px;">' + place.place_name + '</div>');
        infowindow.open(map, marker);
    });
}
</script>
</body>
</html>