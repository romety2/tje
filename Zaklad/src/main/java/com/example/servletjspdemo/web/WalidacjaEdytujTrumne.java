package com.example.servletjspdemo.web;

import com.example.servletjspdemo.domain.Trumna;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(urlPatterns = "/walidacjaEdytujTrumne")
public class WalidacjaEdytujTrumne extends HttpServlet {

    private static final long serialVersionUID = 1L;

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try
        {
            Trumna trumna = new Trumna(request.getParameter("rodzaj"),
                    Double.parseDouble(request.getParameter("cena")), Integer.parseInt(request.getParameter("ilosc")));
            request.setAttribute("daneTrumny", trumna);
            request.getRequestDispatcher("komunikatEdytowanoTrumne.jsp").forward(request, response);
        }
        catch(Exception e)
        {
            request.getRequestDispatcher("blad.jsp").forward(request, response);
        }
    }
}
