<%@page import="com.example.servletjspdemo.domain.Trumna"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Trumny</title>
    <style rel="stylesheet" type="text/css">
        table 	{text-align: center;border-style: double; border-color: #000000; margin: 20px auto;
            border-width: 5px; border-collapse: collapse; font-size: 20px}
        body 	{background: url('czaszki.jpg');}
        h1 	    {text-align: center; color: #330033; font-size: 50px; font-style: italic;
            text-decoration: underline; font-family: "Arial"; line-height: 25px}
        th 	    {border-width: 1px; padding: 2px; border-style: solid; border-color: #000000; background: #DCDCDC;
            font-family: "Calibri"}
        td 	    {border-width: 1px;padding: 2px;border-style: solid;border-color: #000000; background: #FFFFFF}
        .przycisk   {text-align: center}
    </style>
</head>
<body>

    <p class="link"> <a href="index.jsp">Strona główna</a> </p>

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
                out.println("<td>"+"</td>");
                out.println("</tr>");
            }
        %>
    </table>

    <form action="dodajTrumne.jsp">

        <p class="przycisk"><input type="submit" value=" Dodaj "></p>

    </form>

</body>
</html>