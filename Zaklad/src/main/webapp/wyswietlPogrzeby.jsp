<%@page import="com.example.servletjspdemo.domain.Pogrzeb"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Pogrzeby</title>
    <style rel="stylesheet" type="text/css">
        table 	{text-align: center;border-style: double; border-color: #000000; margin: 20px auto;
                border-width: 5px; border-collapse: collapse; font-size: 20px}
        body 	{background: url('czaszki.jpg');}
        h1 	    {text-align: center; color: #330033; font-size: 50px; font-style: italic;
                text-decoration: underline; font-family: "Arial"; line-height: 25px}
        th 	    {border-width: 1px; padding: 2px; border-style: solid; border-color: #000000; background: #DCDCDC;
                font-family: "Calibri"}
        td 	    {border-width: 1px; padding: 2px; border-style: solid; border-color: #000000; background: #FFFFFF}
        input   {font-size: 20px}
        .przycisk   {text-align: center}
        .ukryty     {visibility: hidden; width: 1px;  height: 1px; font-size: 1px; margin: 0px ; padding: 0px}
        .tabelka    {font-size: 10px; display:inline-block;}
    </style>
</head>
<body>
    <p class="link"> <a href="index.jsp">Strona główna</a> </p>

    <h1>Pogrzeby</h1>
    <table>
        <tr>
            <th>Data</th>
            <th>Cena</th>
            <th>Opis</th>
            <th></th>
        </tr>

    <jsp:useBean id="przechowajPogrzeby" class="com.example.servletjspdemo.service.SerwisPrzechowanychDanych" scope="application" />
    <%
        for (Pogrzeb pogrzeb : przechowajPogrzeby.dajWszystkiePogrzeby()) {
            out.println("<tr>");
            out.println("<td>" + pogrzeb.getData()+"</td>");
            out.println("<td>" + pogrzeb.getCena()+"</td>");
            out.println("<td>" + pogrzeb.getOpis()+"</td>");
            out.println("<td>" +
                                "<form class=\"tabelka\" action=\"edytujPogrzeb.jsp\">" +
                                    "<input class=\"tabelka\" type=\"submit\" value=\"Edytuj\">" +
                                    "<input class=\"ukryty\" type=\"text\" name=\"id\" value=\""+pogrzeb.getId()+"\">" +
                                "</form>" +
                                "<form class=\"tabelka\" action=\"usunPogrzeb.jsp\">" +
                                    "<input class=\"tabelka\" type=\"submit\" value=\"Usuń\">" +
                                    "<input class=\"ukryty\" type=\"text\" name=\"id\" value=\""+pogrzeb.getId()+"\">" +
                                "</form>" +
                        "</td>");
            out.println("</tr>");
        }
    %>
    </table>

    <form action="dodajPogrzeb.jsp">

        <p class="przycisk"><input type="submit" value=" Dodaj "></p>

    </form>
</body>
</html>