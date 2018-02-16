<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

<title>Actualizar Artículo</title>
</head>
<body>
<h1>Actualizar Artículo</h1>
	<form action="adminArticulo?action=editar" method="post" >
		<table>
			<tr>
				<td><label>Id</label></td>
				<td><input type="text" name="id" value="<c:out value="${articulo.id}"></c:out>" ></td>
			</tr>
			<tr>
				<td><label>Origen</label></td>
				<td><input type="text" name="origen" value='<c:out value="${articulo.origen}"></c:out>' ></td>
			</tr>
			<tr>
				<td><label>Destino</label></td>
				<td><input type="text" name="destino" value='<c:out value="${articulo.destino}"></c:out>' ></td>
			</tr>
			<tr>
				<td><label>Paquete</label></td>
				<td><input type="text" name="paquete" value='<c:out value="${articulo.paquete}"></c:out>' ></td>
			</tr>
			<tr>
				<td><label>Fecha</label></td>
				<td><input type="text" name="fecha" value='<c:out value="${articulo.fecha }"></c:out>' ></td>
			</tr>
			<tr>
				<td><label>Remitente</label></td>
				<td><input type="text" name="remitente" value='<c:out value="${articulo.remitente }"></c:out>' ></td>
			</tr>
			<tr>
				<td><label>Transportista</label></td>
				<td><input type="text" name="transportista" value='<c:out value="${articulo.transportista }"></c:out>' ></td>
			</tr>
			<tr>
				<td><label>Precio</label></td>
				<td><input type="text" name="precio" value='<c:out value="${articulo.precio }"></c:out>' ></td>
			</tr>
		</table>
	
		<input type="submit" name="registrar" value="Guardar"> 
	</form>
	
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>	

</body>
</html>