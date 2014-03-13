<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<?xml version="1.0" encoding="ISO-8859-1" ?>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
<title>Lista de Atividades</title>
</head>
<body>
<h1>Lista de Atividades</h1>
<p>Atividades.</p>
<table border="1px" cellpadding="0" cellspacing="0" >
<thead>
<tr>
<th width="10%">id</th><th width="15%">nome</th><th width="15%">descri��o</th><th width="10%">nota</th><th width="10%">a��es</th>
</tr>
</thead>
<tbody>
<c:forEach var="atividade" items="${atividades}">
<tr>
	<td>${atividade.id}</td>
	<td>${atividade.nome}</td>
	<td>${atividade.descricao}</td>	
	<td>${atividade.nota}</td>
	<td>
	<a href="${pageContext.request.contextPath}/atividade/edit/${atividade.id}.html">Editar</a><br/>
	<a href="${pageContext.request.contextPath}/atividade/delete/${atividade.id}.html">Eliminar</a><br/>
	</td>
</tr>
</c:forEach>
</tbody>
</table>

<p><a href="${pageContext.request.contextPath}/index.html">Home page</a></p>

</body>
</html>