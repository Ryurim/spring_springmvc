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
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">

    <title>게시글 목록</title>

    <!-- Bootstrap core CSS -->
    <link href="../assets/dist/css/bootstrap.min.css" rel="stylesheet">

    <style>
        .bd-placeholder-img {
            font-size: 1.125rem;
            text-anchor: middle;
            -webkit-user-select: none;
            -moz-user-select: none;
            user-select: none;
        }

        @media (min-width: 768px) {
            .bd-placeholder-img-lg {
                font-size: 3.5rem;
            }
        }
        .b-example-divider {
            height: 3rem;
            background-color: rgba(0, 0, 0, .1);
            border: solid rgba(0, 0, 0, .15);
            border-width: 1px 0;
            box-shadow: inset 0 .5em 1.5em rgba(0, 0, 0, .1), inset 0 .125em .5em rgba(0, 0, 0, .15);
        }

        .bi {
            vertical-align: -.125em;
            fill: currentColor;
        }

        .opacity-50 { opacity: .5; }
        .opacity-75 { opacity: .75; }

        .list-group {
            width: auto;
            max-width: 460px;
            margin: 4rem auto;
        }

        .form-check-input:checked + .form-checked-content {
            opacity: .5;
        }

        .form-check-input-placeholder {
            pointer-events: none;
            border-style: dashed;
        }
        [contenteditable]:focus {
            outline: 0;
        }

        .list-group-checkable {
            display: grid;
            gap: .5rem;
            border: 0;
        }
        .list-group-checkable .list-group-item {
            cursor: pointer;
            border-radius: .5rem;
        }
        .list-group-item-check {
            position: absolute;
            clip: rect(0, 0, 0, 0);
            pointer-events: none;
        }
        .list-group-item-check:hover + .list-group-item {
            background-color: var(--bs-light);
        }
        .list-group-item-check:checked + .list-group-item {
            color: #fff;
            background-color: var(--bs-blue);
        }
        .list-group-item-check[disabled] + .list-group-item,
        .list-group-item-check:disabled + .list-group-item {
            pointer-events: none;
            filter: none;
            opacity: .5;
        }

    </style>
</head>
<body>
<jsp:include page="../header.jsp"/>
<%--    <ul>--%>
<%--        <c:forEach items="${bbsList}" var="dto">--%>
<%--            <li><a href="/bbs/view?idx=${dto.idx}"><c:out value="${dto}"/></a></li>--%>
<%--        </c:forEach>--%>
<%--    </ul>--%>
<%--    <div class="container" >--%>
<%--        <div>${loginInfo.name}님, 환영합니다!</div>--%>
<%--        <ul class="list-group list-group-flush">--%>
<%--            <c:forEach items="${bbsList}" var="dto">--%>
<%--                <li class="list-group-item"><a href="/bbs/view?idx=${dto.idx}"><c:out value="${dto}"/></a></li>--%>
<%--            </c:forEach>--%>

<%--        </ul>--%>
<%--    </div>--%>
    <div class="container">
        <c:if test="${not empty logInfo}">
            <div>${loginInfo.name}님, 환영합니다!</div>
        </c:if>

        <c:forEach items="${bbsList}" var="dto">
        <a href="/bbs/view?idx=${dto.idx}" class="list-group-item list-group-item-action d-flex gap-3 py-3" aria-current="true">
            <img src="https://github.com/twbs.png" alt="twbs" width="32" height="32" class="rounded-circle flex-shrink-0">
            <div class="d-flex gap-2 w-100 justify-content-between">
                <div>
                    <h6 class="mb-0">${dto.title}</h6>
                    <p class="mb-0 opacity-75">${dto.content}</p>
                </div>
                <small class="opacity-50 text-nowrap">${dto.display_date}</small>
            </div>
        </a>
        </c:forEach>
        <div class="row footer">
            <!--h1>Footer</h1-->
            <div class="row fixed-=bottom" style="z-index: -100">
                <footer class="py-1 my-1">
                    <p class="text-center text-muted">footer</p>
                </footer>
            </div>
        </div>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>

</body>
</html>
