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
    

                <h1>Publicaciones</h1>
                <%
                   if (((List<Post>)request.getAttribute("listaPost")).size() != 0){
                Iterator iter = ((List<Post>) request.getAttribute("listaPost")).iterator();
                int i = 0;
                String p = "";
                while(iter.hasNext()&& i<20){
                    p = ((Post)iter.next()).getTexto();           
                    %>
                    <h3><%=p%></h3> <br/><br/>
                    
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
