
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://www.springframework.org/security/tags"  prefix="sec"%>
<!DOCTYPE HTML>
<html xmlns:th="http://www.thymeleaf.org">
<head>
    <title>Редагування |Блог не блогера</title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
</head>

<body>
<div class="container">
    <%@ include file="blocks/header.jsp"%>

    <main role="main" class="inner cover">
        <h1 class="cover-heading">Вітаю, ${user.nickName}</h1>
        <p class="lead">
            <a href="#" class="btn btn-lg btn-secondary">Почати 3-ю Світову війну</a>
        </p>
    </main>

    <%@ include file="blocks/footer.jsp"%>
</div>
</body>
</html>