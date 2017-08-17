package com.example.servletjspdemo.web;

import com.example.servletjspdemo.domain.Pogrzeb;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(urlPatterns = "/walidacjaEdytujPogrzeb")
public class WalidacjaEdytujPogrzeb extends HttpServlet {

    private static final long serialVersionUID = 1L;

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try
        {
            Pogrzeb pogrzeb = new Pogrzeb(request.getParameter("data"),
                    Double.parseDouble(request.getParameter("cena")), request.getParameter("opis"));
            String data = pogrzeb.getData();
            pogrzeb.setId(Long.parseLong(request.getParameter("id")));
            int rok = Integer.parseInt(data.substring(0, 4));
            int miesiac = Integer.parseInt(data.substring(5, 7));
            int dzien = Integer.parseInt(data.substring(8));
            if (data.length() != 10)
                throw new Exception();
            else if (data.charAt(4) != '-' || data.charAt(7) != '-')
                throw new Exception();
            else if (((dzien > 0) && (miesiac > 0) && (rok > 0)) &&
                    ((((miesiac == 1) || (miesiac == 3) || (miesiac == 5) || (miesiac == 7) || (miesiac == 8) ||
                            (miesiac == 10) || (miesiac == 12)) && (dzien <= 31)) ||
                            (((miesiac == 4) || (miesiac == 6) || (miesiac == 9) || (miesiac == 11)) && (dzien <= 30))
                            || ((((rok % 4 == 0) && (rok % 100 != 0)) || (rok % 400 == 0)) &&
                            (miesiac == 2) && (dzien <= 29)) || ((miesiac == 2) && (dzien <= 28)))) {

            } else
                throw new Exception();
            request.setAttribute("danePogrzebu", pogrzeb);
            request.getRequestDispatcher("komunikatEdytowanoPogrzeb.jsp").forward(request, response);
        }
        catch(Exception e)
        {
            request.getRequestDispatcher("blad.jsp").forward(request, response);
        }
    }
}
