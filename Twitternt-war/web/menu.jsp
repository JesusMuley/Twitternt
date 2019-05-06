<%-- 
    Document   : menu
    Created on : 30-abr-2019, 15:54:29
    Author     : Trigi
--%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <style type="text/css">
        .menu{
            float:left
        }
        table td{
            width:  auto;
            border: black;
            border-width: 2px
        }
        .botonMenu{
            width:  70px;
            height: 25px;
            margin-top: 5px;
            background-color: khaki;
            color:  green;
            font-weight: bold   
        }
        .titulo{
            position: relative;
            left: 15px;
            
        }
    </style>
    <body>
        <div class="menu">

                <table>
                    <tr>
                        <td>
                            <b class="titulo">Olive</b><br>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <form action="ServletMenu">
                                <input type="submit" name="boton" value="Inicio" class="botonMenu"><br>
                            </form>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <form action="ServletMenu">
                                <input type="submit" name="boton" value="Amigos" class="botonMenu"><br>
                            </form>
                        </td>
                    </tr>

                </table>
        </div>
    </body>
</html>
