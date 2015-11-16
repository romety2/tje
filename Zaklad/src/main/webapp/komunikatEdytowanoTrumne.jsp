<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>

<jsp:useBean id="daneTrumny" class="com.example.servletjspdemo.domain.Trumna" scope="request"/>

<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Dodano trumnę</title>
    <style rel="stylesheet" type="text/css">
        body 	{background: url('czaszki.jpg')}
        p 	    {text-align: center}
        input   {font-size: 30px}
        .komunikat {text-align: center; color: #006600; font-size: 50px; font-style: italic;
            text-decoration: underline; font-family: "Arial"}
    </style>
</head>
<body>
<jsp:useBean id="przechowajTrumny" class="com.example.servletjspdemo.service.SerwisPrzechowanychDanych"
             scope="application" />

<%
    przechowajTrumny.edytujTrumne(daneTrumny);
%>

<p class="komunikat">Zmieniono na: Rodzaj: ${trumna.rodzaj},
    Cena: <jsp:getProperty name="trumna" property="cena"/>,
    Ilość: <jsp:getProperty name="trumna" property="ilosc"/>} </p>
<form action="wyswietlTrumny.jsp">
    <p class="przycisk"><input type="submit" value=" Wróć "></p>
</form>
</body>
</html>