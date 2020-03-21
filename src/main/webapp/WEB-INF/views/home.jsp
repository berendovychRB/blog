<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://www.springframework.org/security/tags"  prefix="sec"%>
<!DOCTYPE HTML>
<html xmlns:th="http://www.thymeleaf.org">
<head>
    <title>Головна сторінка</title>
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
                <a class="btn btn-sm btn-outline-secondary mr-2" href="/login">Увійти</a>
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
    <main role="main">
        <section class="jumbotron text-center">
            <div class="container">
                <h3>Новини:</h3>
                <div class="row">
                    <div class="col-md-4">
                        <div class="card mb-4 shadow-sm">
                            <svg class="bd-placeholder-img card-img-top" width="100%" height="225"
                                 xmlns="http://www.w3.org/2000/svg" preserveAspectRatio="xMidYMid slice"
                                 focusable="false" role="img" aria-label="Placeholder: Thumbnail"><title>
                                Placeholder</title>
                                <rect width="100%" height="100%" fill="#55595c"></rect>
                                <text y="50%" fill="#eceeef" dy=".3em">Тут могла бути Ваша реклама,а пока новини</text>
                            </svg>
                            <div class="card-body">
                                <p class="card-text">Згодом: добавлення коментарів та вподобань.</p>
                                <div class="d-flex justify-content-between align-items-center">
                                    <div class="btn-group">
                                        <button type="button" class="btn btn-sm btn-outline-secondary">Переглянути</button>
                                    </div>
                                    <small class="text-muted">Годину тому</small>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="card mb-4 shadow-sm">
                            <svg class="bd-placeholder-img card-img-top" width="100%" height="225"
                                 xmlns="http://www.w3.org/2000/svg" preserveAspectRatio="xMidYMid slice"
                                 focusable="false" role="img" aria-label="Placeholder: Thumbnail"><title>
                                Placeholder</title>
                                <rect width="100%" height="100%" fill="#55595c"></rect>
                                <text y="50%" fill="#eceeef" dy=".3em">Тут могла бути Ваша реклама,а пока новини</text>
                            </svg>
                            <div class="card-body">
                                <p class="card-text">Тепер можна добавляти нові пости.Стрічка відображає всі пости.</p>
                                <div class="d-flex justify-content-between align-items-center">
                                    <div class="btn-group">
                                        <button type="button" class="btn btn-sm btn-outline-secondary">Переглянути</button>
                                    </div>
                                    <small class="text-muted">вчора</small>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="card mb-4 shadow-sm">
                            <svg class="bd-placeholder-img card-img-top" width="100%" height="225"
                                 xmlns="http://www.w3.org/2000/svg" preserveAspectRatio="xMidYMid slice"
                                 focusable="false" role="img" aria-label="Placeholder: Thumbnail"><title>
                                Placeholder</title>
                                <rect width="100%" height="100%" fill="#55595c"></rect>
                                <text y="50%" fill="#eceeef" dy=".3em">Тут могла бути Ваша реклама,а пока новини</text>
                            </svg>
                            <div class="card-body">
                                <p class="card-text">Логін та реєстрація цілком працює,а також вихід з облікового запису</p>
                                <div class="d-flex justify-content-between align-items-center">
                                    <div class="btn-group">
                                        <button type="button" class="btn btn-sm btn-outline-secondary">Переглянути</button>
                                    </div>
                                    <small class="text-muted">2 дня тому</small>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <div class="album py-5 bg-light">
            <div class="container">



            </div>
        </div>

    </main>
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