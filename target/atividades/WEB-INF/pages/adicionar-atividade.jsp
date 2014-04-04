<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>

<?xml version="1.0" encoding="ISO-8859-1" ?>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
   <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
   <title>Cadastro de Atividades</title>
   
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
		         <td><input type="submit" value="Inserir atividade" /></td>
		         <td></td>
	          </tr>
           </tbody>
         </table>
         </form:form>
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