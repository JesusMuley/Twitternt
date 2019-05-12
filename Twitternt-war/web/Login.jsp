<%-- 
    Document   : Login
    Created on : 29-abr-2019, 21:53:35
    Author     : Jesús Muley
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <%
      String fallo = (String)request.getAttribute("fallo");
    %>
    
    
    
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Twittern't</title>
    </head>
    <body style="background-color:DodgerBlue;">
        <h1>Bienvenido a Twittern't</h1>
        <p>Inicia sesi&oacute;n o reg&iacute;strate</p>
        
        <%
          String str;
          if(fallo != null && fallo.equals("s")){
            str = " <br/>  Fallo al registrar";
          }else{
            str = "";
          }
        %>
        <h3> <%=str%> </h3>
        <form action="LoginServlet" method="post">
            Nombre de usuario <br/>
            <input type="text" name="Usuario"><br/>
            Contraseña <br/>
            <input type="password" name="Password"><br/>
            <br/>
            <input type="submit" value="Iniciar sesión"/>  
        </form>
        
        <form action="Registro.jsp" method="post">
            <br/>
            <input type="submit" value="Registrarse">
            
            
        </form>
        
    </body>
</html>
