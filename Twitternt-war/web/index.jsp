<%-- 
    Document   : index
    Created on : 11-may-2019, 18:33:26
    Author     : JOSE
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Olive.io</title>
<meta charset="UTF-8">
</head>

<!-- NO SE PUEDE LEER LO QUE APARECE ASI -->

<body style="background-color:DodgerBlue;">
	<h2>Usuario</h2>
	<p style="color:red">Foto de mi perro aceituna <strong>(ATENCION: Muy importante)</strong></p>
	<img src="https://i.imgur.com/sgSYItU.jpg" width="250" height="250" alt="Olive-1">
	
        
        
        
        
	<h2>Menu de usuario</h2>
	<ul style="align-content: left">
		<li><button style="font-family:fantasy">Perfil</button>
		<li><button style="font-family:fantasy">Amigos(<%=request.getAttribute("n_amigos")%>)</button>
		<li><button style="font-family:fantasy">Grupos(<%=request.getAttribute("n_grupos")%>)</button>
		<li><button style="font-family:fantasy">Peticiones de amistad()</button>
	</ul>

	<h2 style="align-content: center">Publicaciones

	<ul>
		<li>

<h3>(Insertar nombre de usuario y fecha de publicion)

<pre title=About W3Schools...>
Aprende a programar HTML
<a href="https://www.w3schools.com">This is a link to W3School</a>

					
	:)
</pre>
		</li>
		<li><a href="https://www.youtube.com/?hl=es&gl=ES">This is a link to Youtube</a>	
		</li>
		<li><a href="https://myanimelist.net/">This is a link to MAL</a>
		
	</li>
	</ul>

	<h2>Amigos conectados</h2>
	<p>Conectar el html con las fachadas. <br> Adios bruh</p>
	<button>Click me...</button>
	

</body>
</html>
