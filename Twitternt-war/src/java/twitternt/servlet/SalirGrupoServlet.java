/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package twitternt.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import twitternt.dao.GrupoFacade;
import twitternt.entity.Grupo;
import twitternt.entity.Usuario;

/**
 *
 * @author adry1
 */
@WebServlet(name = "SalirGrupoServlet", urlPatterns = {"/SalirGrupoServlet"})
public class SalirGrupoServlet extends HttpServlet {
    private GrupoFacade grupoFacade;

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        try {
            HttpSession session = request.getSession(true);            
            Grupo g = new Grupo((Integer) session.getAttribute("codigoGrupo"));
            Usuario u = new Usuario((Integer) session.getAttribute("usuario"));
            List<Usuario> usuarios = g.getUsuarioList();
            usuarios.remove(u);
            List<Grupo> grupos = u.getGrupoList();
            List<Grupo> gruposAdmin = u.getGrupoList1();
            
            request.setAttribute("listaGrupos", grupos);
            request.setAttribute("listaGruposAdmin", gruposAdmin);
            
            RequestDispatcher rd = request.getRequestDispatcher("/grupos.jsp");
            rd.forward(request, response);
        } catch (ServletException servletException) {
        } catch (Exception ex) {
            String err = "Error al intentar salir grupo";
            request.setAttribute("error", err);
            RequestDispatcher rd = request.getRequestDispatcher("/error.jsp");
            rd.forward(request, response);
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
