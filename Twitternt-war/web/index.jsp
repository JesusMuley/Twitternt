<%-- 
    Document   : index
    Created on : 11-may-2019, 18:33:26
    Author     : JOSE
--%>

<%@page import="twitternt.entity.Post"%>
<%@page import="java.util.List"%>
<%@page import="twitternt.entity.Usuario"%>
<%@page import="java.util.Iterator"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:include page="/menu.jsp"/>
<jsp:include page="/busqueda.jsp"/>
<!DOCTYPE html>
<html>
<head>
    <link rel="stylesheet" type="text/css" href="cssGeneral.css">
<title>Olive.io</title>
<meta charset="UTF-8">
</head>

<!-- NO SE PUEDE LEER LO QUE APARECE ASI -->

<body style="background-color:DodgerBlue;"> 
    <div class="pagina">
    
                <form action="PublicarServlet">
                    <input type="text" size="50" maxlength="30" name="texto">
                    <input type="submit" value="Publicar"> <br/>
                    <input type="radio" name="visibilidad" value="0"> Publico
                    <input type="radio" name="visibilidad" value="1"> Privado
                </form>
                <h1>Publicaciones</h1>
                <%
                   if (((List<Post>)request.getAttribute("listaPost")).size() != 0){
                Iterator iter = ((List<Post>) request.getAttribute("listaPost")).iterator();
                int i = 0;
                Post p = null;
                while(iter.hasNext()&& i<20){
                    p = (Post)iter.next();           
                    %>
                    <div class="post">
                        <h3><a href="PerfilServlet?usuario=<%=p.getUsuario().getId()%>"><%=p.getUsuario().getNombreUsuario()%></a><%="-" + p.getUsuario().getNombre() + " " + p.getUsuario().getApellidos()%></h3>
                        <h4><%=p.getTexto()%></h4> 
                        <h6><%=p.getFechaPublicacion().getDay() + "/" + p.getFechaPublicacion().getMonth() + "/" + (p.getFechaPublicacion().getYear()+1900)%></h6><br/>
                    </div>
                    <%
                }
                } else {
                %>
                <h1>No existen Posts</h1>
                <%
                }
                %>
	
    </div>
        <div class="busqueda">
        <form action="BusquedaServlet">
            <input name="nombre">
            <input type="submit" value="Buscar">
        </form>
            <%
            List<Usuario> lista = (List<Usuario>)request.getAttribute("listaUsuario");
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
