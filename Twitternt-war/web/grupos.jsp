<%-- 
    Document   : grupos
    Created on : 08-may-2019, 18:16:22
    Author     : adry1
--%>


<%@page import="twitternt.entity.Grupo"%>
<%@page import="twitternt.entity.Usuario"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:include page="menu.jsp"/>
<%
    List<Grupo> grupos = (List<Grupo>)request.getAttribute("listaGrupos");
    List<Grupo> gruposAdmin = (List<Grupo>)request.getAttribute("listaGruposAdmin");
%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" type="text/css" href="cssGeneral.css">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Grupos</title>
    </head>
    <body style="background-color:DodgerBlue;">
        <div class="pagina">
            <h2>Mis Grupos</h2><br/>
                        <table>
<%
   for (Grupo grupo : grupos){
%>
                <tr>
                    <td>
                        <a href="GrupoServlet?grupo=<%=grupo.getId()%>"><%=grupo.getNombre()%></a>
                    </td>
                    <td><form action="SalirGrupoServlet">
                            <input type="hidden" name="codigoGrupo" value=<%=grupo.getId()%>>
                            <input type="submit" value="Salir">
                        </form>
                    </td>
                </tr>
<%
   }
%>
                </table>
            <br/>
            <h2>Grupos que Administro</h2><br/>
            <table>
<%
    for (Grupo grupo : gruposAdmin){
%>
                <tr>
                    <td>
                        
                        <a href="GrupoServlet?grupo=<%=grupo.getId()%>"><%=grupo.getNombre()%></a>
                    </td>
                     <td><form action="SalirGrupoServlet">
                            <input type="hidden" name="codigoGrupo" value=<%=grupo.getId()%>>
                            <input type="submit" value="Salir">
                        </form>
                    </td>
                    <td><form action="EliminarGrupoServlet">
                            <input type="hidden" name="codigoGrupo" value=<%=grupo.getId()%>>
                            <input type="submit" value="eliminar">
                        </form>
                    </td>
                </tr>
<%
    }
%>
            </table>
            <br/>
            <form action="crearGrupo.jsp">
                <input type="submit" value="Nuevo Grupo">
            </form>
        </div>  
    </body>
</html>
