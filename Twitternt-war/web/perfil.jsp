<%-- 
    Document   : perfil
    Created on : 10-may-2019, 20:00:11
    Author     : Jesús Muley
--%>

<%@page import="twitternt.entity.Usuario"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:include page="menu.jsp"/>

<%
    Usuario u = (Usuario)request.getAttribute("usuario");
    Integer usuario = (Integer)session.getAttribute("usuario");
    Boolean peticion = (Boolean)request.getAttribute("peticion");
    String aux = "";
    if(peticion){
        aux = "readonly";
    }
    
   
%>

<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" type="text/css" href="cssGeneral.css">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Perfil de usuario</title>
    </head>
    <body style="background-color:DodgerBlue;">
        <div class="pagina">
        <h1>Datos del perfil</h1>
        <form action="ModificarUsuarioServlet">
        <b>Nombre de usuario</b> <br/> <input name="nombreUsuario" value="<%= u.getNombreUsuario() %>" maxsize="30" maxlength="30" <%= aux %>/> <br/> <br/>
        <%
          if(!peticion){  
        %>

        <b>Contraseña </b><br/> <input type="password" name="password" value="<%= u.getPassword() %>" maxsize="30" maxlength="30" <%= aux %>/> <br/> <br/>
        
        <%
          }  
        %>
        <b>Nombre </b><br/> <input name="nombre" value="<%= u.getNombre() %>" maxsize="45" maxlength="45" <%= aux %>/> <br/> <br/>
        <b>Apellidos </b><br/> <input name="apellidos" value="<%= u.getApellidos() %>" maxsize="60" maxlength="60" <%= aux %>/> <br/> <br/>
        <b>Correo electr&oacute;nico </b><br/> <input name="correo" value="<%= u.getEmail() %>" maxsize="60" maxlength="60" <%= aux %>/> <br/> <br/>
        <%
        if (!peticion){
        %>
            <input type="hidden" name="usuarioId" value="<%= u.getId() %>">
            <input type="submit" value="Modificar informacion"/>
        </form>
        <%
        }
        if(peticion){
        %>
        <form action="EnviarSolicitudServlet">
            <input type="hidden" value="<%=u.getId()%>" name="amigo">
            <input type="submit" value="Enviar solicitud de amistad">
        </form>
        
        <%
        }
        %>    
            
        </div>
    </body>
</html>
