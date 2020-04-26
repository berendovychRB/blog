<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="../../resources/css1/home.css">
    <link rel="shortcut icon" href="../../resources/images/icons/favicon.ico" type="image/x-icon">
    <title>${user.firstName} ${user.secondName} |Блог не блогера</title>
</head>
<body class="unselectable">

<%@ include file="blocks/header.jsp" %>

<main>
        <div class="headUser">
            <div class="backgroundForPage">
                <img src="/images/${user.photoUrl}" class="iconForPage" alt="">
            </div>
            <h1 class="userNamePage">${user.firstName} ${user.secondName}</h1>
            <p class="city">Львів.Україна</p>
        </div>
    <div>
        <div class="pageMenu">
            <form:form action="/addToFriends/${user.id}" method="post">
                <button class="addToFriends activeButton focusOff">Додати в друзі</button>
            </form:form>
            <!--
        <div class="tagsMenu">
            <div class="n">
                <a href="#">
                    <button class="tags margin">Новини</button>
                </a><br>
            </div>
            <div class="f">
                <a href="#">
                    <button class="tags margin">Друзі</button>
                </a><br>
            </div>
            <div class="p">
                <a href="#">
                    <button class="tags margin">Фото</button>
                </a>
            </div>
-->
        </div>
    </div>
    <div class="pageContent">
        <h3 class="userNamePage titleForPage">Новини</h3>
        <hr class="lineForPage">
        <div>
            <c:forEach var="posts" items="${posts}">
                <div>
                    <div><img src="/images/${user.photoUrl}" class="iconUserForPost marginIcon" alt="">
                        <h4 class="userName marginText">${posts.user}</h4>
                        <h5 class="postTitle2 marginText">${posts.title}</h5>
                        <p class="postText marginText2">${posts.text}</p>
                        <p style="margin-left: 600px;font-size: 12px;color: #828282;">${posts.dateTime}</p>
                    </div>

                    <div>
                        <form:form action="/likes/${posts.id}"  method="post">
                            <button class="like focus focusOff" >
                                <img src="../../resources/images/icons/heart.png" class="like" alt="">
                            </button>
                        </form:form>
                        <div style="margin-left: 21px;margin-top: -39px;">
                        <a href="/post/${posts.id}/comments">
                            <img src="../../resources/images/icons/comment.png" class="comment2 focus focusOff" alt="">
                        </a>
                        </div>
                        <hr class="lineForPage">
                    </div>
                </div>
            </c:forEach>
        </div>
    </div>


</main>


</body>
</html>