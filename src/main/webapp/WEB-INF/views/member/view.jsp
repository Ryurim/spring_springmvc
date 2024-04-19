<%--
  Created by IntelliJ IDEA.
  User: db400tea
  Date: 2024-04-17
  Time: 오후 4:27
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="utf-8" %>
<%@ page trimDirectiveWhitespaces="true" %>
<html>
<head>
    <meta charset="utf-8">
    <title>Title</title>
</head>
<body>
    <h1>BBS >> VIEW</h1>

    <div>
        <span>인덱스 : ${bbs.idx}</span>
    </div>
    <div>
        <span>아이디 : ${bbs.user_id}</span>
    </div>
    <div>
        <span>제목 : ${bbs.title}</span>
    </div>
    <div>
        <span>내용 : ${bbs.content}</span>
    </div>
    <div>
        <span>출력날짜 : ${bbs.display_date}</span>
    </div>
    <div>
        <button type="button" onclick="location.href='/bbs/list'">목록</button>
        <button type="button" onclick="location.href='/bbs/modify?idx=${bbs.idx}'">수정</button>
        <button type="button" onclick="location.href='/bbs/delete?idx=${bbs.idx}'">삭제</button>
    </div>
</body>
</html>
