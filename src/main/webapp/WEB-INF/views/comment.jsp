<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="../../resources/css1/home.css">
    <link rel="shortcut icon" href="../../resources/images/icons/favicon.ico" type="image/x-icon">
    <title>Головна сторінка |Блог не блогера</title>
    <style>
        <%--<%@include file="../../resources/home.css"%>--%>
    </style>
</head>

<body class="unselectable">
<%@include file="blocks/header.jsp" %>
<main>
    <div class="container">

        <div class="blocks news">
            <div class="title">
                <h3>
                    Пост №${post.id}
                </h3>
            </div>
            <hr>

            <div>
                <div>
                    <div>

                        <img src="/images/${post.user.photoUrl}" class="iconUserForPost" alt="">
                        <h4 class="userName">${post.user}</h4>
                        <h5 class="postTitle postTitle2">${post.title}</h5>
                        <p class="postText">${post.text}</p>
                        <p style="margin-left: 415px;font-size: 12px;color: #828282;">${post.dateTime}</p>
                    </div>
                    <div>
                        <button class="like focus focusOff">
                            <img src="../../resources/images/icons/heart.png" class="like" alt="">
                        </button>
                            <p>${likes}</p>
                        <hr class="between">
                    </div>
                </div>
            </div>
            <div class="title">
                <h2>
                    Коментарі:
                </h2>
            </div>
            <hr>
            <div>
                <c:forEach var="comments" items="${comments}">
                <div>
                    <div>

                        <img src="/images/${comments.user.photoUrl}" class="iconUserForPost" alt="">
                        <h4 class="userName">${comments.user}</h4>
                        <p class="postText" style="    margin-top: -60px; margin-bottom: -20px;">${comments.text}</p>
                        <p style="margin-left: 415px;font-size: 12px;color: #828282;">${comments.dateTime}</p>
                    </div>
                    <div>
                        <button class="like focus focusOff">
                            <img src="../../resources/images/icons/heart.png" class="like" alt="">
                        </button>
                        <hr class="between">
                    </div>
                </div>
                </c:forEach>
            </div>
        </div>
        <div class="blocks">
            <div class="title">
                <b>
                    Добавити коментар
                </b>
            </div>
            <hr>
            <div>
                <form:form action="/post/${post.id}/comments" method="post">
                    <img src="/images/${user.photoUrl}" class="iconUserForPost" alt="">
                    <textarea class="inputPost focusOff" name="text" autocomplete="off" placeholder="Добавте коментар"></textarea>
                    <div>
                        <button type="submit" class="topost focusOff activeButton"><b>Оприлюднити</b></button>
                    </div>
                </form:form>
            </div>

        </div>
    </div>
</main>
</body>
</html>