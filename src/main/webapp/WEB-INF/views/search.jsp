<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://www.springframework.org/security/tags"  prefix="sec"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE HTML>
<html>
<head>
    <title>Пошук |Блог не блогера</title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
</head>

<body>
<div class="container">
    <%@ include file="blocks/header.jsp"%>
    <div style="text-align: center">
        <form:form action="/search" method="post">
            <label for="search">
                <input type="text" name="nickName" class="form-control mt-5" placeholder="Введіть нікнейм" id="search">
                <button type="submit" class="btn btn-success ml-9 mt-4">Пошук</button>
            </label>
        </form:form>

    <%@ include file="blocks/footer.jsp"%>
    </div>
</div>
</body>
</html>