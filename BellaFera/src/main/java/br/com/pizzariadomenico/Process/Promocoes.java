/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.pizzariadomenico.Process;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author joliveira
 */
@WebServlet(name = "Promocoes", urlPatterns = {"/promocoes"})
public class Promocoes extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, Exception {
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");
        List<Produto> promocoes = Utils.ListarPizzasPaginaInicialPromocoes();

        if (promocoes != null) {
            for (Produto prod : promocoes) {
                String promoConvert = prod.getDescricao().replaceAll("\n", "<br/>");
                prod.setDescricao(promoConvert);
            }
        }

        request.setAttribute("promocoes", promocoes);
        RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/promocao.jsp");
        dispatcher.forward(request, response);
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            processRequest(request, response);
        } catch (Exception ex) {
            Logger.getLogger(Promocoes.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
}
