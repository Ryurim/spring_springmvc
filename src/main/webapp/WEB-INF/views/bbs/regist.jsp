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
    <h1>BBS >> REGIST</h1>

    <form id="frmRegist" name="frmRegist" method="post" action="/bbs/regist">
        <div>
            <span>아이디 : </span> <input type="text" id="user_id" name="user_id" value="${bbsDTO.user_id}" maxlength="20">
            <div id="div_err_user_id" style="display: none"></div>
        </div>
        <div>
            <span>제목 : </span> <input type="text" id="title" name="title" value="${bbsDTO.title}" maxlength="100">
            <div id="div_err_title" style="display: none"></div>
        </div>
        <div>
            <span>내용 : </span> <textarea name="content" id="content" rows="10" cols="60">${bbsDTO.content}</textarea>
            <div id="div_err_content" style="display: none"></div>
        </div>
        <div>
            <span>출력날짜 : </span> <input type="date" id="display_date" name="display_date" value="${bbsDTO.display_date}" maxlength="10">
        </div>
        <div>
            <span>관심항목 : </span>
            <span>스포츠</span><input type="checkbox" id="interest_0" name="interest" value="스포츠">
            <span>여행</span><input type="checkbox" id="interest_1" name="interest" value="여행">
            <span>영화</span><input type="checkbox" id="interest_2" name="interest" value="영화">
            <span>음악</span><input type="checkbox" id="interest_3" name="interest" value="음악">
            <div id="div_err_interest" style="display: none"></div>
        </div>

        <div>
            <button type="submit">글등록</button>
        </div>
    </form>

    <script>
        const serverValidResult = {}; //JSON 객체 빈값으로 선언
        <c:forEach items="${errors}" var="err">
            if (document.getElementById("div_err_${err.getField()}") != null) {
                document.getElementById("div_err_${err.getField()}").innerHTML = "<span style='color:red'>${err.getField()} 필드는 ${err.defaultMessage}</span>";
                document.getElementById("div_err_${err.getField()}").style.display = "block";
            }
            serverValidResult['${err.getField()}'] = '${err.defaultMessage}';
        </c:forEach>

        console.log(serverValidResult);
    </script>
<div class="card-body">

</div>
</body>
</html>
