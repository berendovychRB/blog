<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <%--<link rel="stylesheet" href="../../resources/css1/home.css">--%>
    <link rel="stylesheet" href="../../resources/css1/admin.css">
    <link rel="shortcut icon" href="../../resources/images/icons/favicon.ico" type="image/x-icon">
    <title>Друзі |Блог не блогера</title>
</head>
<body class="unselectable">
<a href="/" class="href">На головну</a>
<div class="container">

    <div class="div">
        <h2>Друзі</h2>
        <hr>
        <c:forEach var="friends" items="${friends}">
            <img src="/images/${friends.photoUrl}" alt="">
            <a href="/page/${friends.id}">
            <h4>${friends.firstName} ${friends.secondName}</h4>
            </a>
            <br>
            <form:form action="/deleteFromFriends/${friends.id}" method="post">
                <button class="de" style="margin-left: -100px;">Видалити</button>
            </form:form>
            <hr>
        </c:forEach>
    </div>


</div>



</body>
</html>