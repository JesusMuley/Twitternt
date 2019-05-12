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
<!DOCTYPE html>
<html>
<head>
<title>Olive.io</title>
<meta charset="UTF-8">
</head>

<!-- NO SE PUEDE LEER LO QUE APARECE ASI -->

<body style="background-color:DodgerBlue;">    
    
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
                    <div style="background-color: white">
                        <h2><%=p.getUsuario().getNombreUsuario()%></h2>
                        <h3><%=p.getTexto()%></h3> <br/>
                        <h4><%=p.getFechaPublicacion().toString()%></h4><br/>
                    </div>
                    <%
                }
                } else {
                %>
                <h1>No existen Posts</h1>
                <%
                }
                %>
	

</body>
</html>
