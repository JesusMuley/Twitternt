<%-- 
    Document   : grupo
    Created on : 12-may-2019, 16:08:55
    Author     : adry1
--%>

<%@page import="java.util.Iterator"%>
<%@page import="java.util.Iterator"%>
<%@page import="twitternt.entity.Post"%>
<%@page import="java.util.List"%>
<%@page import="twitternt.entity.Usuario"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:include page="/menu.jsp"/>
<% 
List<Usuario> u = (List<Usuario>)(request.getAttribute("usuarios"));
List<Post> p = (List<Post>)(request.getAttribute("posts_grupo"));
int g = (Integer)request.getAttribute("grupo");
boolean admin = (Boolean)request.getAttribute("admin");

%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" type="text/css" href="cssGeneral.css">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Vista de Grupo</title>
    </head> 
    <body style="background-color:DodgerBlue;">
        <%--Lista de usuarios--%>
        <h2>Usuarios</h2>
        <%
            if (u.size() != 0){
                Iterator iterU = u.iterator();
                int j = 0;
                Usuario auxU = null;

                while(iterU.hasNext()&& j<20){
                    auxU = (Usuario)iterU.next();
            %>
        <h4> <%=auxU.getNombreUsuario()%> <br/></h4>
         <% 
                    if(admin){
                    %>
                    <td>
                        <form action="grupoEliminarU-Servlet">
                            <input type="hidden" name="codigoGrupo" value=<%=g%>>
                            <input type="hidden" name="usuarioId" value=<%=auxU.getId()%>>
                            <input type="submit" value="Eliminar">
                        </form>>
                    </td>
                    <% }%>
            
            <% 
                j++;
            }}
            else{
            %>
        <h4>No existen Usuarios</h4>
            <%
            } 
            %>
            
        <%--Lista de Posts--%>
        <h2>Posts</h2>
        <%
                   if (p.size() != 0){
                Iterator iterP = p.iterator();
                int i = 0;
                Post auxP = null;

                while(iterP.hasNext()&& i<20){
                    auxP = (Post)iterP.next();           
                    %>
                    <div class="post">
                        <h3><a href="PerfilServlet?usuario=<%=auxP.getUsuario().getId()%>"><%=auxP.getUsuario().getNombreUsuario()%></a><%="-" + auxP.getUsuario().getNombre() + " " + auxP.getUsuario().getApellidos()%></h3>
                        <h4><%=auxP.getTexto()%></h4> 
                        <h6><%=auxP.getFechaPublicacion().getDay() + "/" + auxP.getFechaPublicacion().getMonth() + "/" + (auxP.getFechaPublicacion().getYear()+1900)%></h6><br/>
                        <% 
                    if(admin){
                    %>
                    <td>
                        <form action="grupoEliminarU-Servlet">
                            <input type="hidden" name="codigoGrupo" value=<%=g%>>
                            <input type="hidden" name="postId" value=<%=auxP.getId()%>>
                            <input type="submit" value="Eliminar">
                        </form>>
                    </td>
                    <% }%>
                    </div>
                    <%
                        i++;
                }
                } else {
                %>
                <h1>No existen Posts</h1>
                <%
                }
                %>
        
    </body>
</html>
