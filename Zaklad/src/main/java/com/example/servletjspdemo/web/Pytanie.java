package com.example.servletjspdemo.web;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(urlPatterns = "/pytanie")
public class Pytanie extends HttpServlet {

	private static final long serialVersionUID = 1L;
	
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		response.setContentType("text/html");
		
		PrintWriter out = response.getWriter();
		out.println("<!DOCTYPE html>"+
					"<html>"+
						"<head>"+
							"<meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">"+
							"<title>Ankieta</title>"+
							"<style rel=\"stylesheet\" type=\"text/css\">"+
								"body 	{background: url('czaszki.jpg');}"+
								"h1 	{text-align: center; color: #330033; font-size: 30px; font-style: italic;"+
									"text-decoration: underline ; font-family: \"Arial\"; line-height: 25px}"+
							"</style>"+
						"</head>"+
						"<body>"+
							"<p class=\"link\"> <a href=\"index.jsp\">Strona glowna</a> </p>"+
							"<h1>Jaki czynnik najbardziej wplywa na jakosc zakladu pogrzebowego</h1>" +
							"<form action='odpowiedzi'>" +
								"<input type='radio' name='zaklad' value='trumna'>Trumny<br />" +
								"<input type='radio' name='zaklad' value='wieniec'>Wience<br />" +
								"<input type='radio' name='zaklad' value='kremacja'>Kremacja zwlok<br />" +
								"<input type='radio' name='zaklad' value='pochówek'>Pochowek<br />" +
								"<input type='submit' value=' OK ' />" +
							"</form>" +
						"</body>"+
					"</html>");
		out.close();
	}

}
