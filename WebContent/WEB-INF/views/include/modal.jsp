<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<c:set var='root' value="${pageContext.request.contextPath }/"/>
<head>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/jquery-validation@1.17.0/dist/jquery.validate.min.js"></script>
<script type="text/javascript">
</script>
</head>
<!-- 로그인 모달 -->
    <div id="be_login_modal" style="display:none;">
      <div class="be_login">
        <div class="be_login-screen">
          <div class="be_login-title">
            <div><a class="be_close_btn">닫기</a></div>
            <h1 class="modal_h">로그인</h1>
          </div>
          <div class="be_login-form">
            <form:form action="member/login_proc" method="post" modelAttribute="memberBean">
            <div class="be_control-group">
              <form:input
              	path="mem_id"
                class="login-field"
                value=""
                placeholder="아이디"
                id="login-name"
              />
              <label class="login-field-icon fui-user" for="login-name"></label>
            </div>
            <div class="be_control-group">
              <form:password
                class="login-field"
                value=""
                placeholder="비밀번호"
                id="login-pass"
                path="mem_pw"
              />
              <label class="login-field-icon fui-lock" for="login-pass"></label>
            </div>
            <form:button class="btn btn-primary btn-large btn-block">로그인</form:button>
            </form:form>
            <a id="id_pw_search" href="#">아이디/비밀번호 찾기</a>
            <a id="new_login" href="#">회원 가입</a>
          </div>
        </div>
      </div>
      <!-- idpw찾기 -->
      <div
        id="be_idpwsearch"
        style="
          border: 1px solid black;
          width: 600px;
          height: 400px;
          background-color: aqua;
          display: none;
        "
      >
        <div class="be_idpwsearch-screen">
          <div class="be_idpwsearch-title" style="display: inline">
            <div>
              <a
                class="be_close_btn1"
                style="position: absolute; top: 10px; right: 10px"
                >닫기</a
              >
            </div>
            <h1 class="modal_h" style="text-align: center">
              아이디/비밀번호 찾기
            </h1>
          </div>
          <div
            class="be_idpwsearch-form"
            style="display: flex; justify-content: space-around"
          >
            <div class="be_idpwsearch-idsearch">
              <h3 style="text-align: center">아이디 찾기</h3>
              <form:form action="member/idFinder" modelAttribute="memberBean" method="post">
              이름 :
              <form:input
                class="id-search"
                placeholder="이름"
                path="mem_name"
                style="margin-bottom: 10px; width: 200px; height: 30px"
              /><br />
              주민번호 :
              <form:input
                class="id-search"
                value=""
                placeholder="주민번호 앞 6자리"
                maxlength="6"
                path="mem_joomin"
                style="margin-bottom: 20px; width: 200px; height: 30px"
              /><br />
              <form:button
                id="idsearch"
                style="width: 200px; height: 50px"
              >아이디 찾기</form:button>
              </form:form>
            </div>
            <div class="be_idpwsearch-pwsearch">
              <h3 style="text-align: center">비밀번호 찾기</h3>
              <form:form action="member/pwFinder" modelAttribute="memberBean">
              아이디 :
              <form:input
                class="pw-search"
                placeholder="아이디 입력"
                path="mem_id"
                style="margin-bottom: 10px; width: 200px; height: 30px"
              />
              <br />
              이름 :
              <form:input
                class="pw-search"
                placeholder="이름"
                path="mem_name"
                style="margin-bottom: 10px; width: 200px; height: 30px"
              />
              <br />
              주민번호 :
              <form:input
                class="pw-search"
                placeholder="주민번호 앞 6자리"
                path="mem_joomin"
                style="margin-bottom: 10px; width: 200px; height: 30px"
              /><br />
              <form:button id="pwsearch" >비밀번호 찾기</form:button>
              </form:form>
            </div>
          </div>
        </div>
      </div>
      <!-- 회원가입 -->
      <div
        align="center"
        class="new_login"
        style="text-align: center; display: none"
      >
        <div
          align="center"
          style="
            border: 2px double black;
            width: 500px;
            height: 500px;
            padding: 20px;
            background-color: bisque;
            text-align: center;
          "
        >
          <a class="be_close_btn2" style="position: absolute; top: 10px; right: 10px">닫기</a>
          <h2>회원가입</h2>
          <form:form id = "join_form" action="member/join_proc" method="post" modelAttribute="memberBean">
          <table>
            <tr height="40">
              <td align="right" width="100">아이디 :</td>
              <td>
                <form:input
                  path="mem_id"
                  id="id"
                  maxlength="20"
                  placeholder="아이디입력"
                />
                <input type="button" value="ID중복확인" onclick="memCheck()" />
                <input type="hidden" id="idchecked" value="no" />
                <form:errors path="mem_id" style="color:red;"/>
              </td>
            </tr>
            

            <tr height="40">
              <td align="right" width="100">비밀번호 :</td>
              <td>
                <form:password
                  maxlength="20"
                  placeholder="비밀번호입력"
                  path="mem_pw"
                  id = "pw"
                />
                <form:errors path="mem_pw" style="color:red;"/>
              </td>
            </tr>

            <tr height="40">
              <td align="right" width="100">이름 :</td>
              <td>
                <form:input
                  maxlength="20"
                  placeholder="이름입력"
                  path="mem_name"
                  id = "name"
                />
                <form:errors path="mem_name" style="color:red;"/>
              </td>
            </tr>
            <tr height="40">
              <td align="right" width="100">주민번호 :</td>
              <td>
                <form:input
                  maxlength="6"
                  placeholder="생년월일 6자리"
                  path="mem_joomin"
                  id = "joomin"
                />
                -
                <form:input id = "gender" path="mem_gender" maxlength="1" size="1" />
                ******
              </td>
              <form:errors path="mem_joomin" style="color:red;"/>
            </tr>

            <tr height="40">
              <td align="right" width="100">이메일 :</td>
              <td>
                <form:input type="email" placeholder="이메일 입력" path="mem_mail" id = "mail"/>
              </td>
            </tr>
            <tr height="40">
              <td align="right" width="100">연락처 :</td>
              <td>
                <form:input type="tel" placeholder="연락처 - 제외" path="mem_phone" id = "phone"/>
              </td>
            </tr>
            <tr height="40">
              <td align="right" width="100">주소 :</td>
              <td>
                <form:input
                  id="sample6_postcode"
                  placeholder="우편번호"
                  path="mem_post"
                  readonly="true"
                />
                <input
                  type="button"
                  onclick="sample6_execDaumPostcode()"
                  value="우편번호 찾기"
                /><br />
                <form:input
                  id="sample6_address"
                  placeholder="주소"
                  path="mem_addr1"
                /><br />
                <form:input
                  id="sample6_detailAddress"
                  placeholder="상세주소"
                  path="mem_addr2"
                />
              </td>
            </tr>
            <tr height="40" style="text-align: center">
              <td colspan="2">
                <input type="reset" value="다시 쓰기" />
                <form:button>가입완료</form:button>
              </td>
            </tr>
          </table>
          </form:form>
        </div>
      </div>
    </div>
<script type="text/javascript" src="${root }js/modal.js"></script>