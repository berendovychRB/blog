<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://www.springframework.org/security/tags"  prefix="sec"%>
<!DOCTYPE HTML>
<html xmlns:th="http://www.thymeleaf.org">
<head>
    <title>Новини |Блог не блогера</title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
</head>

<body>
<div class="container">

    <%@ include file="blocks/header.jsp"%>

    <div class="container mt-5">
        <h1>Новини сайту</h1>

        <div>
            <c:forEach var="posts" items="${posts}" varStatus="counter">
                <strong>${counter.count}</strong>
                <p class="ml-9">${posts.dateTime}</p>
                <div class="alert alert-info mt-2">
                    <h3>${posts.user}</h3>
                    <p>${posts.title}</p>
                    <p>${posts.text}</p>
                </div>
            </c:forEach>
        </div>
    </div>

    <%@ include file="blocks/footer.jsp"%>
</div>
</body>
</html>