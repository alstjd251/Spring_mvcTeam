<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<c:set var='root' value="${pageContext.request.contextPath }/"/>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link rel="stylesheet" href="${root }css/board/page.css" />
    <link rel="stylesheet" href="${root }css/include/header_footer.css" />
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/gsap/2.0.2/TweenMax.min.js"></script>
    <script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
    <title>Sul Sure</title>
  </head>
  <body>
    <!-- 헤더 -->
    <header>
      <!-- 헤더 배너광고 -->
      <c:import url="/WEB-INF/views/include/ad.jsp"/>
      <!-- 헤더 메뉴 -->
      <div class="menu" onscroll="menuscroll()">
        <div class="menu1">
           <c:import url="/WEB-INF/views/include/header.jsp"/>
        </div>
      </div>
    </header>
    <!-- 로그인 폼 부분 -->
    <section>
    <div style="
          margin: 240px 0;
          display: flex;
          flex-direction: column;
          align-items: center;
          justify-content: center;
        ">
      <form:form class="form-horizontal" action="login_proc" modelAttribute="memberBean" >
  <div class="form-group">
    <form:label path="mem_id" for="id" class="col-sm-2 control-label">ID</form:label>
    <div class="col-sm-5">
      <form:input path="mem_id" class="form-control" id="id" placeholder="아이디"/>
    </div>
  </div>
  <div class="form-group">
    <form:label path="mem_pw" for="inputPassword3" class="col-sm-2 control-label">Password</form:label>
    <div class="col-sm-5">
      <form:input path="mem_pw" class="form-control" id="inputPassword3" placeholder="패스워드"/>
    </div>
  </div>
  <div class="form-group">
    <div class="col-sm-offset-2 col-sm-10">
      <form:button class="btn btn-default">Sign in</form:button>
    </div>
  </div>
</form:form>
</div>
    </section>
    <!-- 푸터 -->
    <footer>
      <c:import url="/WEB-INF/views/include/footer.jsp"/>
    </footer>
    <script type="text/javascript" src="${root}js/page.js"></script>
  </body>
</html>