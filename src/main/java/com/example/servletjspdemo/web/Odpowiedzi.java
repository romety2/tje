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
    private long wieniec  = 0;
    private long kremacja  = 0;
    private long pochowek  = 0;
    private static final long serialVersionUID = 1L;

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        response.setContentType("text/html");

        PrintWriter out = response.getWriter();

        String pogrz = "";

        try {
            for (String zaklad : request.getParameterValues("zaklad")) {
                pogrz = zaklad;
            }
            if (pogrz.equals("trumna"))
                trumna++;
            else if (pogrz.equals("wieniec"))
                wieniec++;
            else if (pogrz.equals("kremacja"))
                kremacja++;
            else if (pogrz.equals("pochowek"))
                pochowek++;
    }
    catch(Exception e)
    {
    }
        out.println(
                "<!DOCTYPE html>"+
                "<html>"+
                        "<head>"+
                        "<meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">"+
                        "<title>Ankieta</title>"+
                        "<style rel=\"stylesheet\" type=\"text/css\">"+
                        "body 	{background: url('czaszki.jpg');}"+
                        "h1 	{text-align: center; color: #330033; font-size: 30px; font-style: italic;"+
                        "text-decoration: underline ; font-family: \"Arial\"; line-height: 25px}"+
                        ".wynik      {text-align: center; font-family: \"Arial\"}"+
                        "</style>"+
                        "</head>"+
                        "<body>"+
                        "<p class=\"link\"> <a href=\"index.jsp\">Strona glowna</a> </p>"+
                        "<h1>Wynik</h1>" +
                        "<p class='wynik'>Trumny: " + trumna + "<br />" +
                        "Wience: " + wieniec + "<br />" +
                        "Kremacja zwlok: " + kremacja + "<br />" +
                        "Pochowek: " + pochowek + "<br /></p>" +
                        "</body>" +
                        "</html>");
        out.close();
    }
}