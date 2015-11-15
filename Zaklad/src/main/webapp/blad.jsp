<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Błąd</title>
    <style rel="stylesheet" type="text/css">
        body 	{background: url('czaszka.jpg')}
        p 	    {text-align: center}
        input   {font-size: 30px}
        .komunikat {text-align: center; color: #FF0000; font-size: 50px; font-style: italic;
            text-decoration: underline; font-family: "Arial"}
    </style>
</head>
<body>
<p class="komunikat">Wprowadziłeś nieprawidłowo dane!!!</p>
<form action="wyswietlPogrzeby.jsp">
    <p class="przycisk"><input type="submit" value=" Wróć "></p>
</form>
</body>
</html>