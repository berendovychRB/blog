<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec" %>
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


    <div class="blocks">
        <form:form action="/editProfile" method="post" enctype="multipart/form-data">

            <label for="image">Select image</label>
            <input name="image" id="image" type="file">

            <button type="submit" class="topost">Edit</button>

        </form:form>
    </div>


</body>
</html>