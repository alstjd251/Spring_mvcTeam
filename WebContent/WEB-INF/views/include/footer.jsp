<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<c:set var='root' value="${pageContext.request.contextPath }/"/>
<!DOCTYPE html>
<html>
<body>
	<div class="ocean">
      <div class="wave" style="background: url(${root}img/footer/wave.svg) repeat-x;"></div>
    </div>
    <div class="FOOTER_TOTAL">
                <div class="F_i F_i1">
                  <img src="${root }img/footer/M_LOGE.jpg"/>
                  <p><strong>대표자</strong> 박치언</p>
                  <p><strong>사업자등록번호</strong> 052-34-56789</p>
                  <p><strong>통신판매업신고</strong> 제2011-솔데스크-1014호</p>
                </div>
                <div class="F_i F_i2">
                  <img src="${root }img/footer/location.png" width="180px">
                  <p><strong>서울특별시 종로구 종로12길 15 코아빌딩1</strong></p>
                </div>
                <div class="F_i F_i3">
                  <img src="${root }img/footer/call.png" width="180px"/>
                  <p><strong>전화</strong> 0507-1430-7001</p>
                  <p><strong>팩스</strong> 1577-1577</p>
                  <p>soldesk@naver.com</p>
                </div>
                <div class="F_i F_i4">
                  <img src="${root }img/footer/open.png" width="180px"/>
                  <p><strong>매주</strong></p>
                  <p id="line"><strong>오전</strong> 9:00 ~ <strong>오후</strong> 18:00</p>
                  <p><strong>매주 월요일 휴무</strong></p>
                </div>
            </div>
</body>
</html>