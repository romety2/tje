<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Dodaj trumnę</title>
</head>
<body>
<jsp:useBean id="trumna" class="com.example.servletjspdemo.domain.Trumna" scope="session" />

<jsp:setProperty name="trumna" property="*" />

<jsp:useBean id="przechowaj" class="com.example.servletjspdemo.service.SerwisPrzechowanychDanych" scope="application" />

<%
    przechowaj.wstawTrumne(trumna);
%>

<p>Dodano trumnę: </p>
<p>Rodzaj: ${trumna.rodzaj} </p>
<p>Cena: <jsp:getProperty name="trumna" property="cena"></jsp:getProperty></p>
<p>Ilość: <jsp:getProperty name="trumna" property="ilosc"></jsp:getProperty></p>
<p>
  <a href="wyswietlTrumny.jsp">Pokaż trumny</a>
</p>
</body>
</html>