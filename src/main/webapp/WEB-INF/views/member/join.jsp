<%--
  Created by IntelliJ IDEA.
  User: db400tea
  Date: 2024-04-17
  Time: 오후 4:26
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
    <form id="frmRegist" name="frmRegist" method="post" action="/member/join">
        <div>
            <span>아이디 : </span> <input type="text" id="user_id" name="user_id" value="" maxlength="20">
        </div>
        <div>
            <span>비밀번호 : </span> <input type="password" id="pwd" name="pwd" value="" maxlength="100">
        </div>
        <div>
            <span>이름 : </span> <input type="text" id="title" name="title" value="" maxlength="100">
        </div>
        <div>
            <span>내용 : </span> <textarea name="content" id="content" rows="10" cols="60"></textarea>
        </div>
        <div>
            <span>출력날짜 : </span> <input type="date" id="display_date" name="display_date" value="" maxlength="10">
        </div>
        <div>
            <button type="submit">회원가입</button>
        </div>
    </form>
</body>
</html>
