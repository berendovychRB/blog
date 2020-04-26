<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="../../resources/css1/home.css">
    <link rel="shortcut icon" href="../../resources/images/icons/favicon.ico" type="image/x-icon">
    <title>Редагувати Коментар |Блог не блогера</title>
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
                    Коментар №${comment.id}
                </h3>
            </div>
            <hr>

            <div>
                <div>
                    <div>

                        <img src="/images/${comment.user.photoUrl}" class="iconUserForPost" alt="">
                        <h4 class="userName">${comment.user}</h4>
                        <h5 class="postTitle postTitle2"></h5>
                        <p class="postText">${comment.text}</p>
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
                    Змінити вміст коментаря.
                </b>
            </div>
            <hr>
            <div>
                <form:form action="/editComment/${comment.id}" method="post">
                    <img src="/images/${comment.user.photoUrl}" class="iconUserForPost" alt="">
                    <textarea class="inputPost focusOff" name="text" autocomplete="off" placeholder="Змініть текст коментаря..."></textarea>
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