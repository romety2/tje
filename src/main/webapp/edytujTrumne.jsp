<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Edytuj trumnę</title>
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
<p class="link"> <a href="wyswietlTrumny.jsp">Wróć</a> </p>

<h1>Edytuj trumnę</h1>

<jsp:useBean id="przechowajTrumny" class="com.example.servletjspdemo.service.SerwisPrzechowanychDanych"
             scope="application" />
<jsp:useBean id="pomTrumny" class="com.example.servletjspdemo.domain.Trumna" scope="session" />
<jsp:useBean id="trumna" class="com.example.servletjspdemo.domain.Trumna" scope="session" />
<jsp:setProperty name="pomTrumny" property="id" />

<c:forEach var="pomTrumn" items="${przechowajTrumny.dajWszystkieTrumny()}">
    <c:if test="${pomTrumn.getId() eq pomTrumny.getId()}">
        ${trumna.setId(pomTrumn .getId())}
        ${trumna.setRodzaj(pomTrumn.getRodzaj())}
        ${trumna.setCena(pomTrumn.getCena())}
        ${trumna.setIlosc(pomTrumn.getIlosc())}
    </c:if>
</c:forEach>

<form action="walidacjaEdytujTrumne">
    <p class="edytor">
        <label>Rodzaj: &nbsp;</label><input type="text" name="rodzaj" value=${trumna.getRodzaj()} /><br/>
        <label>Cena: &nbsp;&nbsp;&nbsp;</label><input type="text"  name="cena" value=${trumna.getCena()} /><br/>
        <label>Ilość: &nbsp;&nbsp;&nbsp;&nbsp;</label><input type="text"  name="ilosc" value=${trumna.getIlosc()}
        /><br/>
    </p>
    <p class="przycisk"><input type="submit" value=" OK "></p>
    <p class="ukryty"><input type="text" name="id" value=${trumna.getId()} /></p>
</form>

</body>
</html>