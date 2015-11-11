<%@page import="com.example.servletjspdemo.domain.Pogrzeb"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Pogrzeby</title>
</head>
<body>

<p> <a href="index.jsp">Strona główna</a> </p>

<h1>Pogrzeby</h1>
<table>
    <tr>
        <th>Data</th>
        <th>Cena</th>
        <th>Opis</th>
        <th></th>
    </tr>

<jsp:useBean id="przechowaj" class="com.example.servletjspdemo.service.SerwisPrzechowanychDanych" scope="application" />
<%
    for (Pogrzeb pogrzeb : przechowaj.dajWszystkiePogrzeby()) {
        out.println("<tr>");
        out.println("<td>" + pogrzeb.getData()+"</td>");
        out.println("<td>" + pogrzeb.getCena()+"</td>");
        out.println("<td>" + pogrzeb.getOpis()+"</td>");
        out.println("</tr>");
    }
%>
</table>

<form action="dodajDanePogrzebu.jsp">

    <input type="submit" value=" Dodaj ">

</form>

</body>
</html>