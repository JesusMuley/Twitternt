<%-- 
    Document   : perfil
    Created on : 10-may-2019, 20:00:11
    Author     : Jesús Muley
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Perfil de usuario</title>
    </head>
    <body>
        <h1>Datos del perfil</h1>
        Nombre de usuario <br/> <input name="usuario" value="<%= %>" maxsize="30" maxlength="30"/> <br/> <br/>
        Contraseña <br/> <input type="password" name="password" value="" maxsize="30" maxlength="30"/> <br/> <br/>
        Nombre <br/> <input name="nombre" value="" maxsize="45" maxlength="45"/> <br/> <br/>
        Apellidos <br/> <input name="apellidos" value="" maxsize="60" maxlength="60"/> <br/> <br/>
        Correo electr&oacute;nico <br/> <input name="correo" value="" maxsize="60" maxlength="60"/> <br/> <br/>
        
        
    </body>
</html>
