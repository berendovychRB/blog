<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="../../resources/css1/home.css">
    <title>Головна сторінка |Блог не блогера</title>
    <style>

    </style>
</head>

<body class="unselectable">
<%@include file="blocks/header.jsp" %>
<main>
    <div class="container">
        <div class="blocks" style="margin-top: 75px;">
            <div class="title">
                <b>
                    Створити пост
                </b>
            </div>
            <hr>
            <div>
                <form:form action="/" method="post">
                    <img src="/images/${user.photoUrl}" class="iconUserForPost" alt="">
                    <textarea class="postTitle focusOff" name="title" autocomplete="off"
                              placeholder="Введіть заголовок"></textarea>
                    <textarea class="inputPost focusOff" name="text" autocomplete="off"
                              placeholder="Що у Вас нового?"></textarea>
                    <div>
                        <button type="submit" class="topost focusOff activeButton"><b>Оприлюднити</b></button>
                    </div>
                </form:form>
            </div>

        </div>
        <br>
        <div class="blocks news">
            <div class="title">
                <h3>
                    Новини
                </h3>
            </div>
            <hr>

            <div>
                <c:forEach var="posts" items="${posts}">
                    <div>
                        <div>

                            <img src="/images/${posts.user.photoUrl}" class="iconUserForPost" alt="">
                            <h4 class="userName">${posts.user}</h4>
                            <h5 class="postTitle postTitle2">${posts.title}</h5>
                            <p class="postText">${posts.text}</p>
                            <p style="margin-left: 415px;font-size: 12px;color: #828282;">${posts.dateTime}</p>
                        </div>
                        <div>

                            <form:form action="/likes/${posts.id}" cssStyle="width: 25px;margin-left: 20px;"
                                       method="post">
                                <button class="like focus focusOff" style="margin-left: -17px;margin-top: 7px;}">
                                    <img src="../../resources/images/icons/heart.png" class="like" alt="">
                                </button>
                            </form:form>
                            <div style="width: 40px;position: relative;left: 45px;top: -29px;">
                                <a href="/post/${posts.id}/comments">
                                    <button class="comment focus focusOff">
                                        <img src="../../resources/images/icons/comment.png" class="comment like" alt="">
                                    </button>
                                </a>
                            </div>

                            <hr class="between" style="margin-top: -32px;">
                        </div>
                    </div>

                </c:forEach>

            </div>
        </div>
    </div>
</main>
</body>
</html>