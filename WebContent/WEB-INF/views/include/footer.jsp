<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<c:set var='root' value="${pageContext.request.contextPath }/"/>
<!DOCTYPE html>
<html>
<body>
<div class="FOOTER_TOTAL">
                <div class="F_i F_i1">
                  <img src="${root }img/footer/M_LOGE.jpg"/>
                  <p><strong>대표자</strong> 박치언</p>
                  <p><strong>사업자등록번호</strong> 052-34-56789</p>
                  <p><strong>통신판매업신고</strong> 제2015-울산울주-0164호</p>
                </div>
                <div class="F_i F_i2">
                  <img src="${root }img/footer/location.png" width="180px">
                  <p><strong>울산광역시 울주군 상북면 향산동길 48</strong></p>
                </div>
                <div class="F_i F_i3">
                  <img src="${root }img/footer/call.png" width="180px"/>
                  <p><strong>전화</strong> 052-879-1234</p>
                  <p><strong>팩스</strong> 1577-6746</p>
                  <p>soldesk@gmail.com</p>
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