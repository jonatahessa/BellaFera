package br.com.pizzariadomenico.Servlets;

import br.com.pizzariadomenico.Classes.Cliente;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.mail.MessagingException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author joliveira
 */
@WebServlet(name = "Email", urlPatterns = {"/email"})
public class Email extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");

        Cliente cliente = new Cliente();
        cliente.setNome(request.getParameter("nome"));
        cliente.setEmail(request.getParameter("email"));
        cliente.setTelefone(request.getParameter("telefone"));
        cliente.setCep(request.getParameter("cep"));
        cliente.setEndereco(request.getParameter("endereco"));
        cliente.setNumero(request.getParameter("numero"));
        cliente.setComplemento(request.getParameter("complemento"));

        HttpSession session = request.getSession(false);
        try {
            session.setAttribute("mensagem", br.com.pizzariadomenico.Classes.EmailSender.enviaEmail(cliente));
        } catch (MessagingException ex) {
            Logger.getLogger(Email.class.getName()).log(Level.SEVERE, null, ex);
        }
        response.sendRedirect("home");
    }
}
