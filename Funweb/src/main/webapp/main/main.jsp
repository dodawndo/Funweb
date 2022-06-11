<%@page import="board2.BoardBean2"%>
<%@page import="board2.BoardDAO2"%>
<%@page import="board.BoardDAO"%>
<%@page import="board.BoardBean"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>main/main.jsp</title>
<link href="../css/default.css" rel="stylesheet" type="text/css">
<link href="../css/front.css" rel="stylesheet" type="text/css">
</head>
<body>
	<div id="wrap">
		<!-- 헤더 들어가는곳 -->
		<!-- inc/top.jsp 페이지가 포함될 위치 -->
		<%-- jsp:include 액션태그의 page 속성으로 포함할 페이지 지정 --%>
		<jsp:include page="../inc/top.jsp"/>
		<%-- include 디렉티브의 file 속성으로 포함할 페이지 지정 --%>
<%-- 		<%@ include file="../inc/top.jsp" %> --%>
		<!-- 헤더 들어가는곳 -->
		  
		<div class="clear"></div>   
		<!-- 본문들어가는 곳 -->
		<!-- 메인 이미지 -->
		<div id="main_img"><img src="../images/main_img1.jpg"></div>
		<!-- 본문 내용 -->
		<article id="front">
		  	<div id="solution">
		  		<div id="hosting">
		  			<h3>NOTICE</h3>
					<p>배송지연 <br>
					주문량 증가</p>
		  		</div>
		  		<div id="security">
		  		  	<h3>Q&A</h3>
					<p>상품문의<br>
					배송문의<br>
					기타문의
					</p>
		  		</div>
		  		<div id="payment">
		  			<h3>sale</h3>
					<p>xx 월 xx 일 <br>
					여름 세일이 시작됩니다</p>
		  		</div>
		  	</div>
		  	<div class="clear"></div>
			<div id="sec_news">
		  		<h3 class="orange">Security News</h3>
				<table>
					<%
					// BoardDAO2 객체의 selectRecentBoardList() 메서드를 호출하여 최근 게시물 5개 조회 요청
					// => 파라미터 : 없음    리턴타입 : ArrayList<BoardBean>(boardList)
					BoardDAO2 boardDAO2 = new BoardDAO2();
					ArrayList<BoardBean2> boardList2 = boardDAO2.selectRecentBoardList();
					
					for(BoardBean2 board2 : boardList2) {
					%>
						<!-- 게시물 행 클릭 시 notice_content.jsp 페이지로 이동(해당 게시물 표시) -->
						<tr onclick="location.href='../center/publicNews_content.jsp?num=<%=board2.getNum() %>&page=1'">
							<td width="320" class="contxt"><%=board2.getTitle() %></td>
							<td width="80"><%=board2.getWriter() %></td>
							<td width="80"><%=board2.getDate() %></td>
						</tr>
					<%
					}  
					%>
				</table>
		  	</div>
		
			
			<div id="news_notice">
		  		<h3 class="brown">News &amp; Notice</h3>
				<table>
					<%
					// BoardDAO 객체의 selectRecentBoardList() 메서드를 호출하여 최근 게시물 5개 조회 요청
					// => 파라미터 : 없음    리턴타입 : ArrayList<BoardBean>(boardList)
					BoardDAO boardDAO = new BoardDAO();
					ArrayList<BoardBean> boardList = boardDAO.selectRecentBoardList();
					
					for(BoardBean board : boardList) {
					%>
						<!-- 게시물 행 클릭 시 notice_content.jsp 페이지로 이동(해당 게시물 표시) -->
						<tr onclick="location.href='../center/notice_content.jsp?num=<%=board.getNum() %>&page=1'">
							<td width="320" class="contxt"><%=board.getSubject() %></td>
							<td width="80"><%=board.getName() %></td>
							<td width="80"><%=board.getDate() %></td>
						</tr>
					<%
					} 
					%>
				</table>
		  	</div>
	  	</article>
		  
		<div class="clear"></div>  
		<!-- 푸터 들어가는곳 -->
		<!-- inc/bottom.jsp 페이지가 포함될 위치 -->
		<%-- jsp:include 액션태그의 page 속성으로 포함할 페이지 지정 --%>
		<jsp:include page="../inc/bottom.jsp"/>
		<%-- include 디렉티브의 file 속성으로 포함할 페이지 지정 --%>
<%-- 		<%@ include file="../inc/bottom.jsp" %> --%>
		<!-- 푸터 들어가는곳 -->
	</div>
</body>
</html>















