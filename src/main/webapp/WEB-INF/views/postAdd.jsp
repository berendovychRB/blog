<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://www.springframework.org/security/tags"  prefix="sec"%>
<!DOCTYPE HTML>
<html>
<head>
    <title>Додати новини |Блог не блогера</title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
</head>

<body>
<div class="container">
    <%@ include file="blocks/header.jsp"%>

    <div class="container mt-5">
        <h1>Що у Вас нового?</h1>

        <div class="container mt-5 mb-5">
            <form:form action="/blog/add" method="post">
                <input type="text" name="title" placeholder="Введіть заголовок" class="form-control"><br>
                <textarea name="text" placeholder="Введіть текст" class="form-control"></textarea><br>
                <button type="submit" class="btn btn-success ml-9">Додати пост</button>
            </form:form>
        </div>

    </div>

    <%@ include file="blocks/footer.jsp"%>
</div>
</body>
</html>