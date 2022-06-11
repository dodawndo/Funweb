<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>company/welcome.jsp</title>
<link href="../css/default.css" rel="stylesheet" type="text/css">
<link href="../css/subpage.css" rel="stylesheet" type="text/css">
</head>
<body>
	<div id="wrap">
		<!-- 헤더 들어가는곳 -->
		<jsp:include page="../inc/top.jsp" />
		<!-- 헤더 들어가는곳 -->

		<!-- 본문들어가는 곳 -->
		<!-- 본문 메인 이미지 -->
		<div id="sub_img"></div>
		<!-- 왼쪽 메뉴 -->
		<nav id="sub_menu">
			<ul>
				<li><a href="#">Welcome</a></li>
				<li><a href="#">History</a></li>
				<li><a href="#">Newsroom</a></li>
				<li><a href="#">Public Policy</a></li>
			</ul>
		</nav>
		<!-- 본문 내용 -->
		<article>
			<h1>회사소개</h1>
			<p>회사</p>
			<p> ZARA는 세계 최대 규모의 패션 그룹인 Inditex의 대표 브랜드로 전세계에서 가장 큰 패션 브랜드 중 하나입니다.<br>
			고객은 디자인, 생산, 유통 및 판매를 모두 총괄하는 Zara의 비지니스 모델의 핵심입니다.<br>
			더 많은 정보를 원하시면 Inditex 그룹의 홈페이지를 참고하시기 바랍니다. <a href = "http://www.inditex.com">www.inditex.com</a></p>
		</article>	

		<div class="clear"></div>
		<!-- 푸터 들어가는곳 -->
		<jsp:include page="../inc/bottom.jsp" />
		<!-- 푸터 들어가는곳 -->
	</div>
</body>
</html>


