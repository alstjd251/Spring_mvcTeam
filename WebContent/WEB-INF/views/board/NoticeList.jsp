<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<c:set var='root' value="${pageContext.request.contextPath }/" />
<!DOCTYPE html>
<html>
<meta charset="UTF-8">
<title>Sul Sure</title>
<head>
	<link href="${root }css/postListCss.css" rel="stylesheet" type="text/css" />
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
									<c:set var='listcnt' value="${noticeTotal }"/>
									<c:set var='i' value="${i+1 }"/>
									<td>${noticeTotal - i + 1}</td>
									<td>
									<a href="${root }board/NoticeRead?n_noticetitle=${obj.n_noticetitle }&n_noticecontent=${obj.n_noticecontent}&n_noticenum=${obj.n_noticenum}">${obj.n_noticetitle }</a>
									</td>
									<td>${obj.n_noticedate }</td>
									<td>${obj.mem_name }</td>
									<td>${obj.n_noticecnt }</td>
								</tr>
							</c:forEach>
						</tbody>
					</table>
					<hr>
					<!--관리자용! 일반페이지에는 없앨것-->
					<div id="cs-button">
						<a href="${root }board/NoticeWrite">글쓰기</a>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>

</html>