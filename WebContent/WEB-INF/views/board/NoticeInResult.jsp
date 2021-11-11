<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	${noticeBean.n_noticenum }<br>
	${noticeBean.n_noticetitle }<br>
	${noticeBean.n_noticecontent }<br>
	${noticeBean.n_noticedate }<br>
	${noticeBean.n_noticecnt }<br>
	${noticeBean.n_mnum }<br>
	<h1><a href="home">글작성</a></h1>
	<h1><a href="board/NoticeList">글목록</a></h1>
</body>
</html>