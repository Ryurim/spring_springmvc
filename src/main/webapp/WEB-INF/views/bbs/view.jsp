<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: db400tea
  Date: 2024-04-17
  Time: 오전 9:30
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="utf-8" %>
<%@ page trimDirectiveWhitespaces="true" %>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">


    <title>게시글 상세조회</title>
</head>
<body>
<jsp:include page="../header.jsp"/>

<div class="container">
    <form name="frmDelete" id="frmDelete" method="post" action="/bbs/delete">
        <input type="hidden" name="idx" id = "idx" value="${bbs.idx}">
        <table class="table" height="20%">
            <tbody>
            <tr>
                <th scope="row" >아이디</th>
                <td > ${bbs.user_id}</td>
                <td> </td>
                <td> </td>
            </tr>
            <tr>
                <th scope="row">제목</th>
                <td> ${bbs.title}</td>
                <td> </td>
                <td> </td>
            </tr>
            <tr>
                <th scope="row">내용</th>
                <td>${bbs.content}</td>
                <td> </td>
                <td> </td>
            </tr>
            <tr>
                <th scope="row">관심사항</th>
                <td> ${bbs.interest}</td>
                <td> </td>
                <td> </td>
            </tr>
            </tbody>
        </table>
        <div class="d-grid gap-2 d-sm-flex justify-content-sm-center">
            <button type="button" class="btn btn-outline-secondary" onclick="location.href='/bbs/list'">목록</button>
            <c:if test="${bbs.user_id eq loginInfo.user_id}">
            <button type="button" class="btn btn-primary" onclick="location.href='/bbs/modify?idx=${bbs.idx}'">수정</button>
            <button type="button" class="btn btn-outline-secondary" onclick="goDelete();">삭제</button>
            </c:if>
        </div>

    </form>
</div>
<script>
    function goDelete() {
        const frm = document.getElementById("frmDelete");
        let confirm_flag = confirm("해당 게시글을 삭제하시겠습니까?\n");
        if (confirm_flag) {
            frm.submit();
        }
    }
</script>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
            crossOrigin="anonymous"></script>


</body>
</html>
