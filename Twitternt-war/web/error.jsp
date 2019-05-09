<%-- 
    Document   : error
    Created on : 09-may-2019, 12:48:37
    Author     : adry1
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<% 
    String mensajeError = (String)request.getAttribute("error");
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Error</title>
    </head>
    <body>
        <h1><%=mensajeError %></h1>
    </body>
</html>
