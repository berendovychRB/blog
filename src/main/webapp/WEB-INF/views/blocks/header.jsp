<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://www.springframework.org/security/tags"  prefix="sec"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<link rel="stylesheet" href="../../../resources/css/home.css">
<header>
    <div class="unscroll">
        <img src="../../resources/images/logo.png" class="logo focus" alt="Логотип">
        <div class="headd">
            <form:form action="/search" method="post">
            <input type="text" name="nickName" class="inputSearch focusOff" autocomplete="off" placeholder="Знайти користувача...">
            <button type="submit" class="searchButton focusOff" title="Пошук">
                <img src="../../resources/images/icons/search.png" class="searchIcon" alt="Пошук">
            </button>
            </form:form>
        </div>
        <div class="menu">
            <a href="/" title="На головну">
                <img src="../../resources/images/icons/home.png" class="home menu focus" alt="На головну">
            </a>
            <a href="/friends" title="Друзі">
                <img src="../../resources/images/icons/friends.png" class=" friends menu focus" alt="Друзі">
            </a>
            <a href="/about" title="Допомога">
                <img src="../../resources/images/icons/question.png" class=" about menu focus" alt="Допомога">
            </a>
            <a href="/myPage" class="myPage menu">
                <p>${user.firstName} ${user.secondName}</p>
                <img src="/images/${user.photoUrl}" class="iconUser" alt="">
            </a>
            <sec:authorize access="isAuthenticated()">
            <a href="/logout" title="Вихід">
                <img src="../../resources/images/icons/exit.png" class="exit focus" alt="">
            </a>
            </sec:authorize>
        </div>
    </div>
</header>