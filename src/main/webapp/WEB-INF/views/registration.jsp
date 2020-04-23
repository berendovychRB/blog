<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="../../resources/css1/loginAndRegister.css">
    <link rel="shortcut icon" href="../../resources/images/icons/favicon.ico" type="image/x-icon">
    <title>Реєстрація |Блог не блогера</title>
</head>
<body>
    <form:form action="/registration" method="post" modelAttribute="user">
        <div class="block">
            <h2>Реєстрація</h2>
            <form:input type="text" path="firstName" class="inp mLeft" placeholder="Ім'я"/>
            <form:input type="text" path="secondName" class="inp mRight" placeholder="Прізвище"/>
            <form:input type="text" path="login" class="inp2" placeholder="Логін"/>
            <form:input type="text" path="email" class="inp2" placeholder="Email-адреса"/>
            <form:input type="password" path="password" class="inp mLeft" placeholder="Пароль"/>
            <form:input type="password"  path="passwordRepeat" class="inp mRight" placeholder="Повтор. пароль"/>
            <form:input type="text" path="phone" class="inp2" placeholder="Телефон"/>
            <button class="reg">Зареєструватись</button>
            <p class="text">Вже зареєстровані?<a href="/login">Увійдіть</a></p>
        </div>
    </form:form>
</body>
</html>