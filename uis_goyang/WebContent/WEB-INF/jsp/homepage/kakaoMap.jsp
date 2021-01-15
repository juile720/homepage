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
            <li><a href="#" id="SL" onclick="List('������')">������</a></li>
            <li><a href="#" id="SW" onclick="List('������')">������</a></li>
            <li><a href="#" id="HS" onclick="List('ȭ����')">ȭ����</a></li>
        </ul>
    </div>
	<div id="map" style="width:1200px;height:700px;"></div>
	<div id="inputLink">
        hello<br>
    </div>
	
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=d7797ebab266dab6c351344d61d9e7da&libraries=services"></script>
<script>
// ��Ŀ�� Ŭ���ϸ� ��Ҹ��� ǥ���� ���������� �Դϴ�
var infowindow = new kakao.maps.InfoWindow({zIndex:1});

var mapContainer = document.getElementById('map'), // ������ ǥ���� div 
    mapOption = {
        center: new kakao.maps.LatLng(37.566826, 126.9786567), // ������ �߽���ǥ
        level: 3 // ������ Ȯ�� ����
    };  

// ������ �����մϴ�    
var map = new kakao.maps.Map(mapContainer, mapOption); 

// ��� �˻� ��ü�� �����մϴ�
var ps = new kakao.maps.services.Places();


//20210113������ ����Ʈ�̸� Ŭ���� ���� �̵�
function List(str) {
                if (str == "������"){
                	ps.keywordSearch('������', placesSearchCB);
                	string = "������ 3D�𵨸�";
                	document.querySelector("#inputLink").innerHTML = string.link("http://naver.com");                	
                }
                else if(str == "������"){
                	ps.keywordSearch('������', placesSearchCB);
                	document.querySelector("#inputLink").innerHTML = "����";
                }
                else if(str == "ȭ����"){
                	ps.keywordSearch('ȭ����', placesSearchCB);
                	document.querySelector("#inputLink").innerHTML = "ȭ��";
                }
            }


// Ű���� �˻� �Ϸ� �� ȣ��Ǵ� �ݹ��Լ� �Դϴ�
function placesSearchCB (data, status, pagination) {
    if (status === kakao.maps.services.Status.OK) {

        // �˻��� ��� ��ġ�� �������� ���� ������ �缳���ϱ�����
        // LatLngBounds ��ü�� ��ǥ�� �߰��մϴ�
        var bounds = new kakao.maps.LatLngBounds();

        for (var i=0; i<data.length; i++) {
            displayMarker(data[i]);    
            bounds.extend(new kakao.maps.LatLng(data[i].y, data[i].x));
        }       

        // �˻��� ��� ��ġ�� �������� ���� ������ �缳���մϴ�
        map.setBounds(bounds);
    } 
}

// ������ ��Ŀ�� ǥ���ϴ� �Լ��Դϴ�
function displayMarker(place) {
    
    // ��Ŀ�� �����ϰ� ������ ǥ���մϴ�
    var marker = new kakao.maps.Marker({
        map: map,
        position: new kakao.maps.LatLng(place.y, place.x) 
    });

    // ��Ŀ�� Ŭ���̺�Ʈ�� ����մϴ�
    kakao.maps.event.addListener(marker, 'click', function() {
        // ��Ŀ�� Ŭ���ϸ� ��Ҹ��� ���������쿡 ǥ��˴ϴ�
        infowindow.setContent('<div style="padding:5px;font-size:12px;">' + place.place_name + '</div>');
        infowindow.open(map, marker);
    });
}
</script>
</body>
</html>