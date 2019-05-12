/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package twitternt.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import javax.ejb.EJB;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import twitternt.dao.GrupoFacade;
import twitternt.dao.UsuarioFacade;
import twitternt.entity.Grupo;
import twitternt.entity.Usuario;

/**
 *
 * @author adry1
 */
@WebServlet(name = "GrupoEliminarUsuarioServlet", urlPatterns = {"/GrupoEliminarUsuarioServlet"})
public class GrupoEliminarUsuarioServlet extends HttpServlet {

    @EJB 
    private UsuarioFacade usuarioFacade;
    @EJB
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
            int grupoId = Integer.parseInt(request.getParameter("codigoGrupo"));
            Grupo grupo = grupoFacade.findById(grupoId);
            Usuario usuario = usuarioFacade.findById(Integer.parseInt(request.getParameter("usuarioId")));
            usuario.removeFromGrupoList(grupo);
            grupo.removeFromUsuarioList(usuario);
            usuarioFacade.edit(usuario);
            grupoFacade.edit(grupo);
            
            RequestDispatcher rd = request.getRequestDispatcher("/GrupoServlet?codigoGrupo="+grupoId);
            rd.forward(request, response);
        }
        catch (Exception e) {
            request.setAttribute("error", "Error al eliminar usuario.");
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
