<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Dodaj trumnę</title>
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

    <p class="link"> <a href="index.jsp">Strona główna</a> </p>
    <p class="link"> <a href="wyswietlTrumny.jsp">Wróć</a> </p>

    <h1>Dodaj trumnę</h1>
    <form action="komunikatDodanoTrumne.jsp">
          <p class="edytor">
              <label>Rodzaj: &nbsp;</label><input type="text" name="rodzaj" value="" /><br/>
              <label>Cena: &nbsp;&nbsp;&nbsp;</label><input type="text"  name="cena" value="0.0" /><br/>
              <label>Ilość: &nbsp;&nbsp;&nbsp;&nbsp;</label><input type="text"  name="ilosc" value="0" /><br/>
          </p>
          <p class="przycisk"><input type="submit" value=" OK "></p>
    </form>

</body>
</html>