<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
  <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Administrar Art�culos</title>
</head>
<body>
	<h1>Lista  Art�culos</h1>
	<table>
		<tr>
			<td><a href="adminArticulo?action=index" >Ir al men�</a> </td>
		</tr>
	</table>
	
	
	
	<table border="1" width="100%">
		<tr>
		 <td> ID</td>
		 <td> origen</td>
		 <td> destino</td>
		 <td>paquete</td>
		 <td>fecha</td>
		 <td>remitente</td>
		 <td>transportista</td>
		 <td>precio</td>
		 <td>mapa</td>
		</tr>
		<c:forEach var="articulo" items="${lista}">
			<tr>
				<td><c:out value="${articulo.id}"/></td>
				<td><c:out value="${articulo.origen}"/></td>
				<td><c:out value="${articulo.destino}"/></td>
				<td><c:out value="${articulo.paquete}"/></td>
				<td><c:out value="${articulo.fecha}"/></td>
				<td><c:out value="${articulo.remitente}"/></td>
				<td><c:out value="${articulo.transportista}"/></td>
				<td><c:out value="${articulo.precio}"/></td>
				<td><a href="adminArticulo?action=map
						&origen=<c:out value="${articulo.origen}"/>
						&destino=<c:out value="${articulo.destino}"/>
						">Ver en el Mapa</a></td>	
			</tr>
		</c:forEach>
	</table>
	
</body>
</html>