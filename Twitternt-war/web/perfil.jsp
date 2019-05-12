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
        <b>Nombre de usuario</b> <br/> <input name="usuario" value="<%= u.getNombreUsuario() %>" maxsize="30" maxlength="30" readonly/> <br/> <br/>
        <b>Contraseña </b><br/> <input type="password" name="password" value="<%= u.getPassword() %>" maxsize="30" maxlength="30" readonly/> <br/> <br/>
        <b>Nombre </b><br/> <input name="nombre" value="<%= u.getNombre() %>" maxsize="45" maxlength="45" readonly=""/> <br/> <br/>
        <b>Apellidos </b><br/> <input name="apellidos" value="<%= u.getApellidos() %>" maxsize="60" maxlength="60" readonly/> <br/> <br/>
        <b>Correo electr&oacute;nico </b><br/> <input name="correo" value="<%= u.getEmail() %>" maxsize="60" maxlength="60" readonly/> <br/> <br/>
        <%
        if (u.getId() != usuario){
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
