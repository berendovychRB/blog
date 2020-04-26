<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="../../resources/css1/home.css">
    <link rel="shortcut icon" href="../../resources/images/icons/favicon.ico" type="image/x-icon">
    <title>Редагувати Пост |Блог не блогера</title>
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

                        <hr class="between">
                    </div>
                </div>
            </div>

        </div>
        <div class="blocks">
            <div class="title">
                <b>
                    Змінити вміст посту.
                </b>
            </div>
            <hr>
            <div>
                <form:form action="/editPost/${post.id}" method="post">
                <img src="/images/${post.user.photoUrl}" class="iconUserForPost" alt="">
                <textarea class="postTitle focusOff" name="title" autocomplete="off"
                          placeholder="Змініть заголовок..."></textarea>
                <textarea class="inputPost focusOff" name="text" autocomplete="off" placeholder="Змініть текст посту..."></textarea>
                <div>
                    <button type="submit" class="topost focusOff activeButton"><b>Змінити</b></button>
                </div>
                </form:form>
            </div>
        </div>
    </div>
</main>
</body>
</html>