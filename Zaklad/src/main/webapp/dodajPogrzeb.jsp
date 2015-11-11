<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Dodaj pogrzeb</title>
</head>
<body>

<jsp:useBean id="przechowaj" class="com.example.servletjspdemo.service.SerwisPrzechowanychDanych" scope="application" />
<jsp:useBean id="pogrzeb" class="com.example.servletjspdemo.domain.Pogrzeb" scope="session" />

<form action="komunikatDodaniaPogrzeb.jsp">

  Data :<input type="text" name="data" value="${pogrzeb.data}" /><br />
  Cena :<input type="text" name="cena" value="${pogrzeb.cena}" /><br />
  Opis :<input type="text" name="opis" value="${pogrzeb.opis}" /><br />
  <input type="submit" value=" OK ">
  
</form>


</body>
</html>