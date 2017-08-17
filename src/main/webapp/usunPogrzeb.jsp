<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<jsp:useBean id="pomPogrzeb" class="com.example.servletjspdemo.domain.Pogrzeb" scope="session" />
<jsp:useBean id="usunPogrzeb" class="com.example.servletjspdemo.domain.Pogrzeb" scope="session" />
<jsp:useBean id="przechowajPogrzeby" class="com.example.servletjspdemo.service.SerwisPrzechowanychDanych" scope="application" />
<jsp:setProperty name="pomPogrzeb" property="id" />

<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Usuń pogrzeb</title>
    <style rel="stylesheet" type="text/css">
        body 	{background: url('czaszki.jpg')}
        h1 	    {text-align: center; color: #FF0000; font-size: 50px; font-style: italic;
            font-family: "Calibri"; line-height: 25px}
        input   {font-size: 20px}
        .przycisk   {text-align: center}
    </style>
</head>
<body>

<c:forEach var="pomPogrz" items="${przechowajPogrzeby.dajWszystkiePogrzeby()}">
    <c:if test="${pomPogrz.getId() eq pomPogrzeb.getId()}">
        ${usunPogrzeb.setId(pomPogrz.getId())}
    </c:if>
</c:forEach>
${przechowajPogrzeby.usunPogrzeb(usunPogrzeb)}

    <h1>Usunięto!</h1>

      <form action="wyswietlPogrzeby.jsp">
          <p class="przycisk"><input type="submit" value=" Wróć "></p>
      </form>

    </form>

</body>
</html>