<%-- 
    Document   : amigos
    Created on : 08-may-2019, 11:54:52
    Author     : Trigi
--%>

<%@page import="twitternt.entity.Usuario"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    List<Usuario> listaAmigos = (List<Usuario>)request.getAttribute("listaAmigos");
%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" type="text/css" href="cssGeneral.css">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Amigos</title>
    </head>
    <body>
        <div class="pagina">
            <h2>Mis amigos</h2>
            <table>
<%
    for (Usuario amigo : listaAmigos){
%>
                <tr>
                    <td><a href="PerfilServlet?usuario=<%=amigo.getId()%>"><%=amigo.getNombre() + " "
                                                                                        + amigo.getApellidos()%></a></td>
                </tr>
<%
    }
%>
            </table>
        </div>
    </body>
</html>
