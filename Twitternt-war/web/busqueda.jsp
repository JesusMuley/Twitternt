<%-- 
    Document   : busqueda
    Created on : 12-may-2019, 18:01:32
    Author     : Trigi
--%>

<%@page import="java.util.List"%>
<%@page import="twitternt.entity.Usuario"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
List<Usuario> lista = (List<Usuario>)request.getAttribute("lista");
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" type="text/css" href="cssGeneral.css">
    </head>
    <body>
        <div class="busqueda">
        <form action="BusquedaServlet">
            <input name="nombre">
            <input type="submit" value="Buscar">
        </form>
            <%
            if (lista != null){
                for (Usuario u : lista){
            %>
                <a href="PerfilServlet?usuario=<%=u.getId()%>"><%=u.getNombreUsuario()%></a><%="-" + u.getNombre() + " " + u.getApellidos()%>
            <%
                }
            }
            %>
        </div>
    </body>
</html>
