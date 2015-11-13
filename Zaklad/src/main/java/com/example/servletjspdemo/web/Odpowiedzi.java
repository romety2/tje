package com.example.servletjspdemo.web;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(urlPatterns = "/odpowiedzi")
public class Odpowiedzi extends HttpServlet {

    private long trumna = 0;
    private long wience  = 0;
    private long kremacja  = 0;
    private long pochowek  = 0;
    private static final long serialVersionUID = 1L;

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        response.setContentType("text/html");

        PrintWriter out = response.getWriter();

        try {
            for (String hobby : request.getParameterValues("zaklad")) {
            }
            out.println("<html><body><h2>Twoje dane</h2>" +
                    "<p>Trumny: " + request.getParameter("imie") + "<br />" +
                    "<p>Wience: " + request.getParameter("imie") + "<br />" +
                    "<p>Kremacja zwlok: " + request.getParameter("imie") + "<br />" +
                    "<p>Pochowek: " + request.getParameter("imie") + "<br />" +
                    "</body></html>");
        }
        catch(Exception e)
            {
            }
        out.close();
    }
}