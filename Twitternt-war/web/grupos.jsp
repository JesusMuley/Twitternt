<%-- 
    Document   : grupos
    Created on : 08-may-2019, 18:16:22
    Author     : adry1
--%>


<%@page import="twitternt.entity.Grupo"%>
<%@page import="twitternt.entity.Usuario"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    List<Grupo> grupos = (List<Grupo>)request.getAttribute("listaGrupos");
    List<Grupo> gruposAdmin = (List<Grupo>)request.getAttribute("listaGruposAdmin");
%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" type="text/css" href="cssGeneral.css">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Grupos</title>
    </head>
    <body>
        <div class="pagina">
            <h2>Mis Grupos</h2>
            <table>
<%
    for (Grupo grupo : grupos){
%>
                <tr>
                    <td>
                        <a href="PerfilServlet?grupo=<%=grupo.getId()%>"><%=grupo.getNombre()%></a>
                    </td>
                </tr>
<%
    }
%>
            </table>
             <br/>
            <h2>Grupos que Administro</h2>
            <table>
<%
    for (Grupo grupo : gruposAdmin){
%>
                <tr>
                    <td> //hay q pasar aqui si es admin?
                        <a href="PerfilServlet?grupo=<%=grupo.getId()%>"><%=grupo.getNombre()%></a>
                    </td>
                </tr>
<%
    }
%>
             </table>
        </div>  
    </body>
</html>
