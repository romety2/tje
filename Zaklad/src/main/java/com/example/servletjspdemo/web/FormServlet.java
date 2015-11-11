package com.example.servletjspdemo.web;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(urlPatterns = "/form")
public class FormServlet extends HttpServlet {

	private static final long serialVersionUID = 1L;
	
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		response.setContentType("text/html");
		
		PrintWriter out = response.getWriter();
		out.println("<html><body><h2>Prosty serwlet</h2>" +
				"<form action='data'>" +
				"Imie: <input type='text' name='imie' /> <br />" +
				"<input type='checkbox' name='hobby' value='rower'>Lubie jezdzic rowerem<br />" +
				"<input type='checkbox' name='hobby' value='tv'>Lubie ogladac TV<br />" +
				"<input type='checkbox' name='hobby' value='piwo'>Lubie pic piwo<br />" +
				"<input type='checkbox' name='hobby' value='ksiazki'>Lubie czytac ksiazki<br />" +
				"<input type='submit' value=' OK ' />" +
				"</form>" +
				"</body></html>");
		out.close();
	}

}
