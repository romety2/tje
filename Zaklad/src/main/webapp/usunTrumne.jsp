<%@ page import="com.example.servletjspdemo.domain.Trumna"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>

<jsp:useBean id="pomTrumna" class="com.example.servletjspdemo.domain.Trumna" scope="session" />
<jsp:useBean id="przechowajTrumny" class="com.example.servletjspdemo.service.SerwisPrzechowanychDanych" scope="application" />
<jsp:setProperty name="pomTrumna" property="id" />

<%
    Trumna trumna = new Trumna();
    for (Trumna pomTrum : przechowajTrumny.dajWszystkieTrumny()) {
        if(pomTrumna.getId() == pomTrum.getId()) {
            trumna.setId(pomTrum.getId());
            break;
        }
    }
    przechowajTrumny.usunTrumne(trumna);
%>

<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Usuń trumnę</title>
    <style rel="stylesheet" type="text/css">
        body 	{background: url('czaszki.jpg')}
        h1 	    {text-align: center; color: #FF0000; font-size: 50px; font-style: italic;
            font-family: "Calibri"; line-height: 25px}
        input   {font-size: 20px}
        .przycisk   {text-align: center}
    </style>
</head>
<body>

<h1>Usunięto!</h1>

<form action="wyswietlTrumny.jsp">
    <p class="przycisk"><input type="submit" value=" Wróć "></p>
</form>

</form>

</body>
</html>