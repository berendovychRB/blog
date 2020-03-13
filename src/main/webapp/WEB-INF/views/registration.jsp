<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <link rel="stylesheet" href="../../../resources/templates/css/registration.css" type="text/css"/>
    <title>Реєстрація|Блог не Блогера</title>
</head>

<body>
<header>
    <div class="head unselectable">
        <div>
            <img class="read" src="/css/images/read.png">
            <img src="/css/images/mind.png">
            <img src="/css/images/find.png">
        </div>
    </div>
</header>
<main>
    <div class="row unselectable">
        <div class="register">
            <form:form modelAttribute="user"
                       action="/registration" method="POST">
                <div class="fname">
                    <label for="firstName">Ім'я</label><br>
                    <form:input type="text" id="firstName" path="firstName" placeholder="Ваше ім'я..."/><br>
                </div>
                <div class="lname">
                    <label for="secondName">Прізвище</label><br>
                    <form:input type="text" id="secondName" path="secondName" placeholder="Ваше прізвище..."/><br>
                </div>
                <div class="login1">
                    <label for="login">Логін</label><br>
                    <form:input type="text" id="login" path="login" placeholder="Придумайте логін"/><br>
                </div>
                <div class="pass">
                    <label for="password">Пароль</label><br>
                    <form:input type="password" id="password" path="password" placeholder="Впишіть пароль"/><br>
                </div>
                <div class="rpass">
                    <label for="passwordRepeat">Повторний пароль</label><br>
                    <form:input type="password" id="passwordRepeat" path="passwordRepeat" placeholder="Повторіть пароль"/><br>
                </div>
                <div class="email">
                    <label for="email">Електронна пошта</label><br>
                    <form:input type="text" id="email" path="email" placeholder="Ваша пошта..."/>
                    <br>
                </div>
                <div class="sex">
                    <label for="sex">Стать:</label><br>
                    <input type="radio" id="sex" name="sex" value="male">Чоловіча
                    <input type="radio" *id="sex" name="sex" value="female">Жіноча<br>
                </div>
                <div>
                    <button type="submit">Зареєструватись</button>
                </div>
                <a class="isRegistered" href="login.html">Вже зареєстровані?</a>
            </form:form>
        </div>
    </div>
</main>
<footer>
    <div class="foot">
    </div>
</footer>
</body>
</html>
