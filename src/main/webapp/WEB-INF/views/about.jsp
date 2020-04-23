
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://www.springframework.org/security/tags"  prefix="sec"%>
<!DOCTYPE HTML>
<html xmlns:th="http://www.thymeleaf.org">
<head>
    <title>Про нас |Блог не блогера</title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <link rel="stylesheet" href="../../resources/css1/home.css">
    <link rel="shortcut icon" href="../../resources/images/icons/favicon.ico" type="image/x-icon">
    <style>
        p:hover{
            transform: scale(1.3);
            color: #fa6342;
            margin-left: 60px;
        }
        h4{
            border-bottom: 2px solid #3ca9fc;
            width: 150px;
        }
        a{
            text-decoration: none;
            color: black;
        }
        hr{
            width: 450px;
        }
    </style>
</head>

<body class="unselectable">
    <%@ include file="blocks/header.jsp"%>


    <div class="blocks">
        <div style="margin-left: 60px">
            <h3 class="title">Інформація про нас:</h3>
            <hr>
            <h4>Команда: </h4>
            <a href="https://bigsta.net/account/b_r.b21/" target="_blank"><p>EvangelistTeam</p></a>
            <h4>Організатор: </h4>
            <a href="https://bigsta.net/account/b_r.b21/" target="_blank"><p>Руслан Берендович</p></a>
            <h4>Front-end розробник: </h4>
            <a href="https://bigsta.net/account/b_r.b21/" target="_blank"><p>Руслан Берендович</p></a>
            <h4>Back-end розробник: </h4>
            <a href="https://bigsta.net/account/b_r.b21/" target="_blank"><p>Руслан Берендович</p></a>
            <h4>Повариха: </h4>
            <a href="https://bigsta.net/account/b_r.b21/" target="_blank"><p>Руслан Берендович</p></a>
            <hr>
        </div>
    </div>


</body>
</html>