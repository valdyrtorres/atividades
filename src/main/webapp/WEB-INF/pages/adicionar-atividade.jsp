<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>

<?xml version="1.0" encoding="ISO-8859-1" ?>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
<title>Cadastro de Atividades</title>
</head>
<body>
<h1>Cadastro de Atividades</h1>
<p>Nova Atividade.</p>
<form:form method="POST" commandName="atividade" action="${pageContext.request.contextPath}/atividade/new.html">
<table>
<tbody>
	<tr>
		<td>Nome:</td>
		<td><form:input path="nome" /></td>
	</tr>
	<tr>
		<td>Descrição:</td>
		<td><form:input path="descricao" /></td>
	</tr>	
	<tr>
		<td>Nota:</td>
		<td><form:input path="nota" /></td>
	</tr>
	<tr>
		<td><input type="submit" value="New" /></td>
		<td></td>
	</tr>
</tbody>
</table>
</form:form>

<p><a href="${pageContext.request.contextPath}/index.html">Home page</a></p>
</body>
</html>