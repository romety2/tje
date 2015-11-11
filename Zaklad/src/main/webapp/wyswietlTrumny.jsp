<%@page import="com.example.servletjspdemo.domain.Trumna"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Trumny</title>
</head>
<body>

<p> <a href="index.jsp">Strona główna</a> </p>

<h1>Trumny</h1>
<table>
    <tr>
        <th>Rodzaj</th>
        <th>Cena</th>
        <th>Ilość</th>
        <th></th>
    </tr>

    <jsp:useBean id="przechowaj" class="com.example.servletjspdemo.service.SerwisPrzechowanychDanych" scope="application" />
    <%
        for (Trumna trumna : przechowaj.dajWszystkieTrumny()) {
            out.println("<tr>");
            out.println("<td>" + trumna.getRodzaj()+"</td>");
            out.println("<td>" + trumna.getCena()+"</td>");
            out.println("<td>" + trumna.getIlosc()+"</td>");
            out.println("</tr>");
        }
    %>
</table>

<form action="dodajDaneTrumny.jsp">

    <input type="submit" value=" Dodaj ">

</form>

</body>
</html>