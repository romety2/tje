<%@ page import="com.example.servletjspdemo.domain.Pogrzeb"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<jsp:useBean id="danePogrzebu" class="com.example.servletjspdemo.domain.Pogrzeb" scope="request"/>

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
<jsp:useBean id="pogrzeb" class="com.example.servletjspdemo.domain.Pogrzeb" scope="session" />
<jsp:useBean id="przechowajPogrzeby" class="com.example.servletjspdemo.service.SerwisPrzechowanychDanych"
            scope="application" />

            <%
                Pogrzeb nowy = new Pogrzeb(danePogrzebu.getData(), danePogrzebu.getCena(), danePogrzebu.getOpis());
                przechowajPogrzeby.edytujPogrzeb(pogrzeb, nowy);
            %>

        <p class="komunikat">Dodano: Data: ${danePogrzebu.data},
            Cena: <jsp:getProperty name="danePogrzebu" property="cena"/>, Opis: ${danePogrzebu.opis} </p>
        <form action="wyswietlPogrzeby.jsp">
            <p class="przycisk"><input type="submit" value=" Wróć "></p>
        </form>
    </body>
</html>