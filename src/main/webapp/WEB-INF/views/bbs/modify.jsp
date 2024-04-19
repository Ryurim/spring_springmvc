
<%--
  Created by IntelliJ IDEA.
  User: db400tea
  Date: 2024-04-17
  Time: 오전 9:30
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="utf-8" %>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <meta charset="utf-8">
    <title>Title</title>
</head>
<body>
    <h1>BBS >> MODIFY</h1>
    <form id="frmRegist" name="frmRegist" method="post" action="/bbs/modify">
        <input type="hidden" name="idx" id="idx" value="${bbs.idx}">
        <div>
            <span>아이디 : </span> <input type="text" id="user_id" name="user_id" value="${bbs.user_id}" maxlength="20">
        </div>
        <div>
            <span>제목 : </span> <input type="text" id="title" name="title" value="${bbs.title}" maxlength="100">
        </div>
        <div>
            <span>내용 : </span> <textarea name="content" id="content" rows="10" cols="60">${bbs.content}</textarea>
        </div>
        <div>
            <span>출력날짜 : </span> <input type="date" id="display_date" name="display_date" value="${bbs.display_date}" maxlength="10">
        </div>
        <div>
            <span>관심항목 : </span>
            <span>스포츠</span><input type="checkbox" id="interest_0" name="interest" value="스포츠" <c:out value="${bbs.interest.contains('스포츠') ? 'checked' : ''}"/>>
            <span>여행</span><input type="checkbox" id="interest_1" name="interest" value="여행" <c:out value="${bbs.interest.contains(\"여행\") ? 'checked' : ''}"/>>
            <span>영화</span><input type="checkbox" id="interest_2" name="interest" value="영화" <c:out value="${bbs.interest.contains(\"영화\") ? 'checked' : ''}"/>>
            <span>음악</span><input type="checkbox" id="interest_3" name="interest" value="음악" <c:out value="${bbs.interest.contains(\"음악\") ? 'checked' : ''}"/>>
            <div id="div_err_interest" style="display: none"></div>
        </div>
        <div>
            <button type="submit">수정</button>
        </div>
    </form>
</body>
</html>
