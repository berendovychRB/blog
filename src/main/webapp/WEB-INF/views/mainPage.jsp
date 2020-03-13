<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://www.springframework.org/security/tags"  prefix="sec"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Not Blogger Blog</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
</head>
<body class="text-center">
<div class="cover-container d-flex w-100 h-100 p-3 mx-auto flex-column">
    <header class="masthead mb-auto">
        <div class="inner">
            <h3 class="masthead-brand">Welcome</h3>
            <nav class="nav nav-masthead justify-content-center">
                <a class="nav-link active" href="#">Home</a>
                <sec:authorize access="hasRole('ROLE_ADMIN')">
                    <a class="nav-link" href="/admin">FOR ADMIN</a>
                </sec:authorize>
                <a class="nav-link" href="#">Contact</a>
            </nav>
        </div>
    </header>

    <main role="main" class="inner cover">
        <sec:authorize access="isAuthenticated()">
        <h1 class="cover-heading">Hello, ${name}</h1>
        </sec:authorize>
        <sec:authorize access="!isAuthenticated()">
            <h1 class="cover-heading">Your Account</h1>
        </sec:authorize>
        <p class="lead">"Not Blogger Blog - This is a new blog that will please you with interesting posts and will not let you get bored."</p>
        <p class="lead">
            <sec:authorize access="!isAuthenticated()">
            <a href="/login" class="btn btn-lg btn-secondary">Login</a>
            </sec:authorize>
            <sec:authorize access="isAuthenticated()">
            <a href="/registration" class="btn btn-lg btn-secondary">Registration</a>
            </sec:authorize>
            <sec:authorize access="isAuthenticated()">
                <a class="btn btn-lg btn-secondary" href="/logout" >Logout</a>
            </sec:authorize>
        </p>
    </main>

    <footer class="mastfoot mt-auto">
        <div class="inner">
            <p>Made for enjoyment, by <a href="https://ins-tag-ram.com/user/b_r.b21" target="_blank">@b_r.b21</a>.</p>
        </div>
    </footer>
</div>


</body>
</html>