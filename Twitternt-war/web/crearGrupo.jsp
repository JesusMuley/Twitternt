<%-- 
    Document   : crearGrupo
    Created on : 11-may-2019, 13:16:42
    Author     : adry1
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:include page="menu.jsp"/>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Crear Grupo</title>
    </head>
    <body>
        <h1>Crea un nuevo grupo</h1>
        <form action="CrearGrupoServlet" method="POST">
            Nombre del grupo <br/> <input name="nombre" value="" maxsize="30" maxlength="30" /> <br/> <br/>
            Descripci&oacute;n <br/> <textarea name="descripcion" rows="7" cols="30"></textarea> <br/> <br/>
            <input type="submit" value="Confirmar"/>
        </form>
    </body>
</html>
