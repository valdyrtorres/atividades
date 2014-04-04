<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<?xml version="1.0" encoding="ISO-8859-1" ?>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
	<title>Lista de Atividades</title>
    <!-- Bootstrap core CSS -->
    <link href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="${pageContext.request.contextPath}/resources/css/starter-template.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/resources/css/menucustomizado.css" rel="stylesheet">

</head>
<body>	
	<!-- Inicio -->
    
    <div class="navbar navbar-default navbar-fixed-top" role="navigation">
      <div class="container">
        <div class="navbar-header">
          <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a class="navbar-brand" href="#">Atividades</a>
        </div>
        <div class="collapse navbar-collapse">
          <ul class="nav navbar-nav">
            <li class="active"><a href="${pageContext.request.contextPath}/index.html">Inicio</a></li>
            <li><a href="${pageContext.request.contextPath}/atividade/new.html">Criar Atividade</a></li>
            <li><a href="${pageContext.request.contextPath}/atividade/list.html">Listar Atividades</a></li>
            <li><a href="#sobre">Sobre</a></li>
            <li><a href="#contato">Contato</a></li>
          </ul>
        </div><!--/.nav-collapse -->
      </div>
    </div>

    <div class="container">
      <div class="starter-template">
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
      </div>

    </div><!-- /.container -->
    
    <!-- Fim -->    		

    <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/js/bootstrap.min.js"></script>
</body>
</html>