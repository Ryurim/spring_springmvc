<%--
  Created by IntelliJ IDEA.
  User: db400tea
  Date: 2024-04-17
  Time: 오후 4:25
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
    <h1>Login</h1>
    <form name="frmLogin" id="frmLogin" method="post" action="/login/login">
        <input type="text" name="referer" id="referer" value="${acc_url}">
        <div>
            <div><span>아이디 : <input type="text" name="user_id" id="user_id" value="" maxlength="20"> </span></div>
            <div><span>비밀번호 : <input type="text" name="pwd" id="pwd" value="" maxlength="20"> </span></div>
            <div>
                <span>아이디 저장<input type="checkbox" name="save_id" id="save_id" value="Y"></span>
                <span>자동 로그인<input type="checkbox" name="auto_login" id="auto_login" value="Y"></span>
            </div>
            <div><button type="submit" id="btnLogin">로그인</button></div>
        </div>
    </form>
    <script>
        const btnLogin = document.getElementById("btnLogin");
        const frm = document.getElementById("frmLogin");

        btnLogin.addEventListener("click", function(e) {
            e.preventDefault();
            e.stopPropagation();

            frm.method = "post";
            frm.submit();
        }, false);
    </script>
</body>
</html>
