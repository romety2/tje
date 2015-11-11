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

<jsp:useBean id="storage" class="com.example.servletjspdemo.service.SerwisPrzechowanychDanych" scope="application" />
<%
  for (Trumna trumna : storage.dajWszystkieTrumny()) {
	  out.println("<p>Rodzaj: " + trumna.getRodzaj() + "; Cena: " + trumna.getCena()
              + "; Ilosc: " + trumna.getIlosc() + "</p>");
  }
%>
<p>
  <a href="dodajDanePogrzebu.jsp">Dodaj trumnę</a>
</p>

</body>
</html>