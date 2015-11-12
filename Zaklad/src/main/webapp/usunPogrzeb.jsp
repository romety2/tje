<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Dodaj pogrzeb</title>
    <style rel="stylesheet" type="text/css">
        body 	{background: url('czaszki.jpg')}
        h1 	    {text-align: center; color: #000033; font-size: 30px; font-style: italic;
            font-family: "Calibri"; line-height: 25px}
        label   {font-size: 20px; font-family: "Calibri"}
        input   {font-size: 20px}
        .edytor     {text-align: center}
        .przycisk   {text-align: center}
    </style>
</head>
<body>

    <jsp:useBean id="przechowaj" class="com.example.servletjspdemo.service.SerwisPrzechowanychDanych" scope="application" />
    <jsp:useBean id="pogrzeb" class="com.example.servletjspdemo.domain.Pogrzeb" scope="session" />
    <p class="link"> <a href="index.jsp">Strona główna</a> </p>
    <p class="link"> <a href="wyswietlPogrzeby.jsp">Wróć</a> </p>

    <h1>Dodaj pogrzeb</h1>

    <form action="komunikatDodajPogrzeb.jsp">

      <p class="edytor">
          <label>Data: &nbsp;</label><input type="text" name="data" value="rrrr-mm-dd" /><br />
          <label>Cena: </label><input type="text" name="cena" value="0.0" /><br />
          <label>Opis: &nbsp;</label><input type="text" name="opis" value="" /><br />
      </p>
      <p class="przycisk"><input type="submit" value=" OK "></p>

    </form>

</body>
</html>