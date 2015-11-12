<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<jsp:useBean id="pogrzeb" class="com.example.servletjspdemo.domain.Pogrzeb" scope="session" />

<c:catch var="wyjatek">
    <jsp:setProperty name="pogrzeb" property="*" />
    <%
        String data = pogrzeb.getData();
        int rok = Integer.parseInt(data.substring(0, 4));
        int miesiac = Integer.parseInt(data.substring(5, 7));
        int dzien = Integer.parseInt(data.substring(8));
        if (data.length() != 10)
            throw new Exception();
        else if (data.charAt(4) != '-' || data.charAt(7) != '-')
            throw new Exception();
        else if (((dzien > 0) && (miesiac > 0) && (rok > 0)) &&
        ((((miesiac == 1) || (miesiac == 3) || (miesiac == 5) || (miesiac == 7) || (miesiac == 8) ||
        (miesiac == 10) || (miesiac == 12)) && (dzien <= 31)) ||
        (((miesiac == 4) || (miesiac == 6) || (miesiac == 9) || (miesiac == 11)) && (dzien <= 30))
        || ((((rok % 4 == 0) && (rok % 100 != 0)) || (rok % 400 == 0)) &&
        (miesiac == 2) && (dzien <= 29)) || ((miesiac == 2) && (dzien <= 28))))
        {

        }
        else
            throw new Exception();
    %>
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
            <jsp:useBean id="przechowaj" class="com.example.servletjspdemo.service.SerwisPrzechowanychDanych"
            scope="application" />

            <%
                przechowaj.wstawPogrzeb(pogrzeb);
            %>

            <p class="komunikat">Dodano: Data: ${pogrzeb.data},
                Cena: <jsp:getProperty name="pogrzeb" property="cena"></jsp:getProperty>, Opis: ${pogrzeb.opis} </p>
            <form action="wyswietlPogrzeby.jsp">
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
        <form action="wyswietlPogrzeby.jsp">
            <p class="przycisk"><input type="submit" value=" Wróć "></p>
        </form>
    </body>
    </html>
</c:if>