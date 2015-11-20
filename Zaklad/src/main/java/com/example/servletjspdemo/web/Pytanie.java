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
				"input   {font-size: 20px}"+
				".radio   {text-align: center; font-family: \"Arial\"}"+
				".przycisk   {text-align: center}"+
				"</style>"+
				"</head>"+
				"<body>"+
				"<p class=\"link\"> <a href=\"index.jsp\">Strona glowna</a> </p>"+
				"<h1>Ktory czynnik najbardziej wplywa na jakosc zakladu pogrzebowego</h1>" +
				"<form action='odpowiedzi'>" +
				"<p class=\"radio\"><input type='radio' name='zaklad' value='trumna'>Trumny<br />" +
				"<input type='radio' name='zaklad' value='wieniec'>Wience<br />" +
				"<input type='radio' name='zaklad' value='kremacja'>Kremacja zwlok<br />" +
				"<input type='radio' name='zaklad' value='pochowek'>Pochowek<br /></p>" +
				"<p class='przycisk'><input type='submit' value=' OK ' /></p>" +
				"</form>" +
				"</body>"+
				"</html>");
		out.close();
	}


}
