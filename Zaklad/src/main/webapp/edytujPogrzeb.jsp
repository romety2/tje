<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Edytuj pogrzeb</title>
    <style rel="stylesheet" type="text/css">
        body 	{background: url('czaszki.jpg')}
        h1 	    {text-align: center; color: #000033; font-size: 30px; font-style: italic;
            font-family: "Calibri"; line-height: 25px}
        label   {font-size: 20px; font-family: "Calibri"}
        input   {font-size: 20px}
        .edytor     {text-align: center}
        .przycisk   {text-align: center}
        .ukryty     {visibility: hidden; width: 1px;  height: 1px; font-size: 1px; margin: 0px ; padding: 0px}
    </style>
</head>
<body>

<p class="link"> <a href="index.jsp">Strona główna</a> </p>
<p class="link"> <a href="wyswietlPogrzeby.jsp">Wróć</a> </p>

<h1>Edytuj pogrzeb</h1>

<jsp:useBean id="przechowajPogrzeby" class="com.example.servletjspdemo.service.SerwisPrzechowanychDanych"
             scope="application" />
<jsp:useBean id="pomPogrzeb" class="com.example.servletjspdemo.domain.Pogrzeb" scope="session" />
<jsp:useBean id="pogrzeb" class="com.example.servletjspdemo.domain.Pogrzeb" scope="session" />
<jsp:setProperty name="pomPogrzeb" property="id" />

<c:forEach var="pomPogrz" items="${przechowajPogrzeby.dajWszystkiePogrzeby()}">
    <c:if test="${pomPogrz.getId() eq pomPogrzeb.getId()}">
        ${pogrzeb.setId(pomPogrz.getId())}
        ${pogrzeb.setData(pomPogrz.getData())}
        ${pogrzeb.setCena(pomPogrz.getCena())}
        ${pogrzeb.setOpis(pomPogrz.getOpis())}
    </c:if>
</c:forEach>

<form action="walidacjaEdytujPogrzeb">
    <p class="edytor">
        <label>Data: &nbsp;</label><input type="text" name="data" value=${pogrzeb.getData()} /><br />
        <label>Cena: </label><input type="text" name="cena" value=${pogrzeb.getCena()}  /><br />
        <label>Opis: &nbsp;</label><input type="text" name="opis" value=${pogrzeb.getOpis()}  /><br />
    </p>
    <p class="przycisk"><input type="submit" value=" OK "></p>
    <p class="ukryty"><input type="text" name="id" value=${pogrzeb.getId()} /></p>
</form>

</body>
</html>