<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="../../resources/css1/home.css">
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
            <a href="/editProfile">
            <button class="addToFriends activeButton focusOff">Редагувати профіль</button>
            </a>
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

    <div class="blocks" style="margin-top: -60px">
        <div class="title">
            <b>
                Створити пост
            </b>
        </div>
        <hr>
        <div>
            <form:form action="/" method="post">
                <img src="/images/${user.photoUrl}" class="iconUserForPost" alt="">
                <textarea class="postTitle focusOff" name="title" autocomplete="off" placeholder="Введіть заголовок"></textarea>
                <textarea class="inputPost focusOff" name="text" autocomplete="off" placeholder="Що у Вас нового?"></textarea>
                <div>
                    <button type="submit" class="topost focusOff activeButton"><b>Оприлюднити</b></button>
                </div>
            </form:form>
        </div>

    </div>
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

                        <img src="/images/${user.photoUrl}" class="iconUserForPost" alt="">
                        <h4 class="userName">${posts.user} </h4>
                        <h5 class="postTitle postTitle2">${posts.title}</h5>
                        <p class="postText">${posts.text}</p>
                        <p style="margin-left: 415px;font-size: 12px;color: #828282;">${posts.dateTime}</p>
                    </div>
                    <div>
                        <form:form action="/likes/${posts.id}" cssStyle="width: 25px;margin-left: 20px;" method="post">
                            <button class="like focus focusOff" style="margin-left: -17px;margin-top: 7px;}">
                                <img src="../../resources/images/icons/heart.png" class="like" alt="">
                            </button>
                        </form:form>
                        <div style="width: 40px;position: relative;left: 45px;top: -29px;">
                        <a href="/post/${posts.id}/comments">
                            <button class="like comment focus focusOff">
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


</main>


</body>
</html>