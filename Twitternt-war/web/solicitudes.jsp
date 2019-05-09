<%-- 
    Document   : solicitudes
    Created on : 08-may-2019, 17:43:34
    Author     : Trigi
--%>

<%@page import="java.util.List"%>
<%@page import="twitternt.entity.Usuario"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:include page="menu.jsp"/>
<%
List<Usuario> listaSolicitudes = (List<Usuario>) request.getAttribute("listaSolicitudes");
%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" type="text/css" href="cssGeneral.css">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Solicitudes de amistad</title>
    </head>
    <body>
        <div class="pagina">
            <table>
<%
    for (Usuario solicitud : listaSolicitudes){
%>
                <tr>
                    <td><a href="PerfilServlet?usuario=<%=solicitud.getId()%>"><%=solicitud.getNombre() + " "
                            + solicitud.getApellidos()%></a></td>
                    <td>
                        <form action="AdministrarSolicitudServlet">
                            <input type="hidden" name="solicitud" value=<%=solicitud.getId()%>>
                            <input type="submit" name="boton" value="Aceptar">
                            <input type="submit" name="boton" value="Rechazar">
                        </form>
                    </td>
                                                                                        
                </tr>
<%
    }
%>
            </table>
        </div>
    </body>
</html>
