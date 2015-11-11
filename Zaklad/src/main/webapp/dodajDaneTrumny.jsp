<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Dodaj trumnę</title>
</head>
<body>

<jsp:useBean id="przechowaj" class="com.example.servletjspdemo.service.SerwisPrzechowanychDanych" scope="application" />
<jsp:useBean id="trumna" class="com.example.servletjspdemo.domain.Trumna" scope="session" />

<form action="dodajTrumne.jsp">

  Rodzaj :<input type="text" name="rodzaj" value="${trumna.rodzaj}" /><br />
  Cena :<input type="text"  name="cena" value="${trumna.cena}" /><br />
  Ilość :<input type="text"  name="ilosc" value="${trumna.ilosc}" /><br />
  <input type="submit" value=" OK ">
  
</form>

</body>
</html>