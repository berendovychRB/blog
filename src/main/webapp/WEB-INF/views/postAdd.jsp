<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://www.springframework.org/security/tags"  prefix="sec"%>
<!DOCTYPE HTML>
<html xmlns:th="http://www.thymeleaf.org">
<head>
    <title>Блог</title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
</head>

<body>
<div class="container">
    <header class="blog-header py-3">
        <div class="row flex-nowrap justify-content-between align-items-center">
            <sec:authorize access="isAuthenticated()">
                <div class="col-4 pt-1">
                    <a class="text-muted" href="#">Підписатись</a>
                </div>
            </sec:authorize>
            <div class="col-4 text-center">
                <a class="blog-header-logo text-dark" href="/"><h4>Блог не блогера</h4></a>
            </div>
            <div class="col-4 d-flex justify-content-end align-items-center">
                <a class="text-muted" href="#" aria-label="Search">
                    <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="none" stroke="currentColor"
                         stroke-linecap="round" stroke-linejoin="round" stroke-width="2" class="mx-3" role="img"
                         viewBox="0 0 24 24" focusable="false"><title>Пошук</title>
                        <circle cx="10.5" cy="10.5" r="7.5"></circle>
                        <path d="M21 21l-5.2-5.2"></path>
                    </svg>
                </a>
                <sec:authorize access="!isAuthenticated()">
                    <a class="btn btn-sm btn-outline-secondary mr-2" href="#">Увійти</a>
                    <a class="btn btn-sm btn-outline-secondary" href="/registration">Зареєструватись</a>
                </sec:authorize>
                <sec:authorize access="isAuthenticated()">
                    <a class="btn btn-sm btn-outline-secondary mr-2" href="/logout">Вийти</a>
                </sec:authorize>
            </div>
        </div>
    </header>
    <div class="nav-scroller py-1 mb-2">
        <nav class="nav d-flex justify-content-between">
            <a class="p-2 text-muted" href="/">Головна сторінка</a>
            <a class="p-2 text-muted" href="/blog">Блог</a>
            <sec:authorize access="hasRole('ROLE_ADMIN')">
                <a class="p-2 text-muted" href="/admin">Для адміна</a>
            </sec:authorize>
            <a class="p-2 text-muted" href="/blog/add">Додати Блог</a>
            <a class="p-2 text-muted" href="/about">Про нас</a>
        </nav>
    </div>

    <div class="container mt-5">
        <h1>Додати пост</h1>

        <div class="container mt-5 mb-5">
            <form:form action="/blog/add" method="post">
                <input type="text" name="title" placeholder="Введіть заголовок" class="form-control"><br>
                <textarea name="text" placeholder="Введіть текст" class="form-control"></textarea><br>
                <button type="submit" class="btn btn-success ml-9">Додати пост</button>
            </form:form>
        </div>

    </div>

    <footer class="text-muted">
        <div class="container">
            <p class="float-right">
                <a href="#">Повернутись на початок</a>
            </p>
            <p>Створено за допомогою пари золотих рук одного зовсім не відомого "Айтішніка".</p>
            <p>Хочеш дізнатись хто це? <a href="https://ins-tag-ram.com/user/b_r.b21" target="_blank">Ось він</a>.Підпишись на нього і буде тобі щастя.</p>
        </div>
    </footer>
</div>
</body>
</html>