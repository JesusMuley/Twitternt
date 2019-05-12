<%-- 
    Document   : grupo
    Created on : 12-may-2019, 16:08:55
    Author     : adry1
--%>

<%@page import="twitternt.entity.Post"%>
<%@page import="java.util.List"%>
<%@page import="twitternt.entity.Usuario"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<% 
List<Usuario> u = (List<Usuario>)(request.getAttribute("usuarios"));
List<Post> p = (List<Post>)(request.getAttribute("posts_grupo"));
Integer g = Integer.parseInt((String)(request.getAttribute("grupo")));
boolean admin = (boolean)(request.getAttribute("admin"));

%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Vista de Grupo</title>
    </head>
    <body>
        
         <% 
                    if(admin){
                    %>
                    <td>
                        <form action="grupoAdmin.jsp">
                            <input type="hidden" name="codigoGrupo" value=<%=g%>>
                            <input type="submit" value="Administrar">
                        </form>>
                    </td>
                    <% }%>
        
        <h2>Usuarios</h2>
        <h2>Posts</h2>
        
    </body>
</html>
