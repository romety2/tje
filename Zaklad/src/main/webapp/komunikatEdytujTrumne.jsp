<%--Zrodlo catch: http://www.tutorialspoint.com/jsp/jstl_core_catch_tag.htm--%>
<%@page import="com.example.servletjspdemo.domain.Trumna"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<jsp:useBean id="daneTrumny" class="com.example.servletjspdemo.domain.Trumna" scope="session" />

<c:catch var="wyjatek">
    <jsp:setProperty name="daneTrumny" property="*" />
</c:catch>

<c:if test="${empty wyjatek}">
    <!DOCTYPE html>
    <html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Dodano pogrzeb</title>
        <style rel="stylesheet" type="text/css">
            body 	{background: url('czaszki.jpg')}
            p 	    {text-align: center}
            input   {font-size: 30px}
            .komunikat {text-align: center; color: #006600; font-size: 50px; font-style: italic;
                text-decoration: underline; font-family: "Arial"}
        </style>
    </head>
    <body>
    <jsp:useBean id="trumna" class="com.example.servletjspdemo.domain.Trumna" scope="session" />
    <jsp:useBean id="przechowajTrumny" class="com.example.servletjspdemo.service.SerwisPrzechowanychDanych"
                 scope="application" />

    <%
        for (Trumna pomTrumn : przechowajTrumny.dajWszystkieTrumny()) {
            if (pomTrumn.getId() == daneTrumny.getId()) {
                trumna.setId(pomTrumn.getId());
                break;
            }
        }
        Trumna nowy = new Trumna(daneTrumny.getRodzaj(), daneTrumny.getCena(), daneTrumny.getIlosc());

        przechowajTrumny.edytujTrumne(trumna, nowy);
    %>

    <p class="komunikat">Edytowano na: Rodzaj: ${daneTrumny.rodzaj},
        Cena: <jsp:getProperty name="daneTrumny" property="cena"></jsp:getProperty>,
        Ilość: <jsp:getProperty name="daneTrumny" property="ilosc"></jsp:getProperty></p>
    <form action="wyswietlTrumny.jsp">
        <p class="przycisk"><input type="submit" value=" Wróć "></p>
    </form>
    </body>
    </html>
</c:if>

<c:if test="${not empty wyjatek}">
    <!DOCTYPE html>
    <html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Błąd</title>
        <style rel="stylesheet" type="text/css">
            body 	{background: url('czaszka.jpg')}
            p 	    {text-align: center}
            input   {font-size: 30px}
            .komunikat {text-align: center; color: #FF0000; font-size: 50px; font-style: italic;
                text-decoration: underline; font-family: "Arial"}
        </style>
    </head>
    <body>
    <p class="komunikat">Wprowadziłeś nieprawidłowo dane!!!</p>
    <form action="wyswietlTrumny.jsp">
        <p class="przycisk"><input type="submit" value=" Wróć "></p>
    </form>
    </body>
    </html>
</c:if>