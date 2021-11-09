<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<c:set var='root' value="${pageContext.request.contextPath }/" />
<!DOCTYPE html>
<html>

<head>
<style>
body {
	margin: 0%;
}

.cs-container {
	text-align: center;
}

.cs-board01 {
	display: flex;
	width: 100%;
	flex-direction: column;
	align-items: center;
}

.cs-board01 #cs-menu {
	display: flex;
}

.cs-board01 #cs-menu li {
	list-style-type: none;
	padding: 10px;
	margin: 20px;
	border-bottom: solid lightslategrey;
}

.cs-board01 #cs-backimg {
	width: 700px;
	height: 300px;
	background: url('C:/Users/user/Downloads/notice.jpg') center/cover
		no-repeat;
	margin: 50px;
}

.cs-board02 {
	display: flex;
	justify-content: center;
	margin: 20px;
}

#cs-titleBox {
	height: auto;
	text-align: left;
	vertical-align: top;
}

#cs-listContainer {
	vertical-align: top;
	width: 60%;
}

#cs-listContainer #cs-search {
	text-align: right;
}

.cs-table {
	width: 100%;
	margin-top: 20px;
}

table.cs-table {
	border-collapse: collapse;
	text-align: center;
	line-height: 1.5;
}

table.cs-table thead tr th {
	padding: 10px;
	font-weight: bold;
	vertical-align: top;
	color: #369;
	border-bottom: 3px solid lightslategrey;
}

tbody.cs-tbody {
	/* 게시글 css for문 적용방법 찾기*/
	border-collapse: separate;
	border-spacing: 1px;
	text-align: center;
	line-height: 1.5;
	border-top: 1px solid #ccc;
	margin: 20px 10px;
}

#cs-button {
	text-align: right;
}
</style>
</head>

<body>
	<div class="cs-container">
		<h2>고객센터</h2>
		<div class="cs-board01">
			<div id="cs-menu">
				<li>공지사항</li>
				<li>Q&A</li>
				<li>Contact Us</li>
			</div>
			<div id="cs-backimg">.</div>
		</div>

		<div class="cs-board02">
			<div id="cs-titleBox">공지사항</div>
			<div id="cs-listContainer">
				<div id="cs-listBoard">
					<div id="cs-search">
						<!--게시판 검색 리스트-->
						<select>
							<option>제목</option>
							<option>작성일</option>
							<option>조회수</option>
						</select> <input type="text">
						<button type="submit">검색</button>
					</div>
				</div>
				<div id="cs-list">
					<table class="cs-table">
						<thead>
							<tr>
								<th>번호</th>
								<th>제목</th>
								<th>작성일</th>
								<th>작성자</th>
								<th>조회수</th>
							</tr>
						</thead>
						<tbody class="cs-tbody">
							<!--게시글 <td> 들어가는 곳-->
							<c:forEach var='obj' items="${noticeList }">
								<tr>
									<c:set var='listcnt' value="${noticeCnt }"/>
									<c:set var='i' value="${i+1 }"/>
									<td>${noticeCnt - i + 1}</td>
									<td>${obj.n_noticetitle }</td>
									<td>${obj.n_noticedate }</td>
									<td>${obj.mem_name }</td>
									<td></td>
								</tr>
							</c:forEach>
						</tbody>
					</table>
					<hr>
					<!--관리자용! 일반페이지에는 없앨것-->
					<div id="cs-button">
						<button>
							<a href="${root }board/NoticeWrite">글쓰기</a>
						</button>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>

</html>