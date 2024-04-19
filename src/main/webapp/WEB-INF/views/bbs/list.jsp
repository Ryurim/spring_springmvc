<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: db400tea
  Date: 2024-04-17
  Time: 오전 9:29
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
    <h1>BBS >> LIST</h1>
    <ul>
        <c:forEach items="${bbsList}" var="dto">
            <li><a href="/bbs/view?idx=${dto.idx}"><c:out value="${dto}"/></a></li>
        </c:forEach>
    </ul>

    <ul>
        <li><a href="/login/login">로그인</a></li>
    </ul>
</body>
</html>
