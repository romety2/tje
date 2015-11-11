<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Dodaj pogrzeb</title>
</head>
<body>
<jsp:useBean id="pogrzeb" class="com.example.servletjspdemo.domain.Pogrzeb" scope="session" />

<jsp:setProperty name="pogrzeb" property="*" />

<jsp:useBean id="przechowaj" class="com.example.servletjspdemo.service.SerwisPrzechowanychDanych" scope="application" />

<%
    przechowaj.wstawPogrzeb(pogrzeb);
%>

<p>Dodano pogrzeb: </p>
<p>Data: ${pogrzeb.data} </p>
<p>Cena: <jsp:getProperty name="pogrzeb" property="cena"></jsp:getProperty></p>
<p>Opis: ${pogrzeb.opis} </p>
<p>
  <a href="wyswietlPogrzeby.jsp">Pokaż pogrzeby</a>
</p>
</body>
</html>