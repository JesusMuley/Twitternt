<%-- 
    Document   : solicitudes
    Created on : 08-may-2019, 17:43:34
    Author     : Trigi
--%>

<%@page import="java.util.List"%>
<%@page import="twitternt.entity.Usuario"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
List<Usuario> listaSolicitudes = (List<Usuario>) request.getAttribute("listaSolicitudes");
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Solicitudes de amistad</title>
    </head>
    <body>
        <h1>Hello World!</h1>
    </body>
</html>
