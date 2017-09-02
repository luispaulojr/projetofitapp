<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<%-- <%@ page session = "false" %> --%>
 <html>
 <head>
 <title> Carregar Página de Pedido de Arquivo </title>
 </head>
 <body>
	 <form method = "POST" action = "uploadFile" enctype = "multipart / form-data">
		 Arquivo para carregar: <input type = "file" name = "file" />
 
		 Nome: <input type = "text" name = "name" />
 
 
		 <input type = "submit" value = "Upload"> Pressione aqui para carregar o arquivo!
	 </form>	
</body>
</html>