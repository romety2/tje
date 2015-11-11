<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Dodaj pogrzeb</title>
    <style rel="stylesheet" type="text/css">
        body 	{background: url('czaszki.jpg');}
    </style>
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