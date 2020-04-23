<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="../../resources/css1/home.css">
    <link rel="shortcut icon" href="../../resources/images/icons/favicon.ico" type="image/x-icon">
    <title>Редагування |Блог не блогера</title>
    <style>
        .inp{
            display: block;
            margin: 0 auto;
            width: 450px;
            height: 30px;
            border: 2px solid #3ca9fc;
            outline: none;
            border-radius: 50px;
            padding-left: 40px;
            font-size: 17px;
        }
        .inputfile {
            width: 0.1px;
            height: 0.1px;
            opacity: 0;
            overflow: hidden;
            position: absolute;
            z-index: -1;
        }
        label{
            position: relative;
            left: 25px;
            background-color: #3ca9fc;
            border-radius: 8px;
            color: white;
        }
        label:hover{
            cursor: pointer;
            background-color: #fa6342;
            color: white;
        }

    </style>
</head>
<body class="unselectable">

<%@ include file="blocks/header.jsp" %>


    <div class="blocks">
        <form:form action="/editProfile" method="post" enctype="multipart/form-data">

            <br>
            <input type="text" name="firstName" class="inp" placeholder="Змінити Ім'я"/>
            <br>
            <input type="text" name="secondName" class="inp" placeholder="Змінити Прізвище"/>
            <br>

            <label for="image">Загрузити аватарку</label>
            <input name="image" id="image" class="inputfile" type="file">

            <button type="submit" class="topost focusOff activeButton">Редагувати</button>

        </form:form>
    </div>


</body>
</html>