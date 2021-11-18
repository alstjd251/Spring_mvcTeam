<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<c:set var='root' value="${pageContext.request.contextPath }/"/>
<!DOCTYPE html>
<html>
<body>
<!-- 헤더 -->
      <div class="logo">
        <a href="${root }main"><img src="${root }img/menu_bar/logoimg.jpg" /></a>
      </div>
      <div class="menu_bar">
        <li><a href="mail">기관소개</a></li>
        <li><a href="${root }course/CourseTab">양조장</a></li>
        <li><a href="${root }reservation/main">예약</a></li>
        <li><a href="${root }board/NoticeList">고객지원</a></li>
      </div>
      <div class="login">
      <c:choose>
	    <c:when test="${loginBean.memLogin == false }">
	      	<a style="position:absolute; right:5em;" href="${root }member/login" id="popup_open_btn" ><img src="${root }img/menu_bar/loginimg.png"/></a>
      	</c:when>
		<c:otherwise>
			<a href="${root }member/mypage">
			<span><img id="mypage_open_btn" src="${root }img/menu_bar/mypage.jpg"/>
			<span id="my_name">${loginBean.mem_name }님</span></span>
			</a>
			<a href="${root }member/logout_proc" id="logout_button">로그아웃</a>
		</c:otherwise>
      </c:choose>
      </div>
</body>
</html>