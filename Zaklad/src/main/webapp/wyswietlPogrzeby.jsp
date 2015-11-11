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

<jsp:useBean id="przechowaj" class="com.example.servletjspdemo.service.SerwisPrzechowanychDanych" scope="application" />
<%
  for (Pogrzeb pogrzeb : przechowaj.dajWszystkiePogrzeby()) {
	  out.println("<p>Data: " + pogrzeb.getData() + "; Cena: " + pogrzeb.getCena()
              +"; Opis: " + pogrzeb.getOpis() + "</p>");
  }
%>
<p>
  <a href="dodajDanePogrzebu.jsp">Dodaj pogrzeb</a>
</p>

</body>
</html>