<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8" content="text/css">
    <link rel="stylesheet" href="../../resources/css1/loginAndRegister.css"/>
    <link rel="shortcut icon" href="../../resources/images/icons/favicon.ico" type="image/x-icon">
    <title>Вхід |Блог не блогера</title>

</head>

<body>
<div class="info">
    <img class="logo" src="../../resources/images/logo.png" alt="">
    <h3>Вітаємо Вас на "Блог не Блогера"</h3>
    <p>"Блог не Блогера" - це соціальна павутина для користувачів,які готові спілкуватись,ділитись та надихати.Тут ти можеш опубліковувати свої новини,або читати,що цікавого у інших користувачів.</p>
    <p>О тож заходь поскоріше,та насолоджуйся.</p>
</div>
<div class="login">
    <div class="in">Вхід</div>
    <div>
        <form:form action="/login" method="post">
        <label for="login"></label>
        <input type="text" name="login" id="login" placeholder="Логін">
        <div class="pass">
            <label for="password"></label>
            <input type="password" name="password" id=password placeholder="Пароль">
        </div>
        <div>
            <input type="checkbox" id="remember">
            <label for="remember" class="rem">Запам'ятати мене</label>
        </div>
        <div>
            <button type="submit">Увійти</button>
            <a href="#">Забули пароль?</a>
        </div>
        </form:form>
        <p class="p">Досі немає облікового запису?</p>
        <div class="link">
            <a href="/registration">Зареєструватись зараз</a>
        </div>
    </div>
</div>
</body></html>