<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@ page isELIgnored="false" %>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Livros de Java, Android, iPhone, Ruby, PHP e muito mais - Casa do Código</title>
<c:url value="/resources/css" var="cssPath" />
<link rel="stylesheet" href="${cssPath}/bootstrap.min.css" />
<link rel="stylesheet" href="${cssPath}/bootstrap-theme.min.css" />
<style>
	body{
		padding-left: 20px;
		}
</style>
</head>
<body>

		<nav class="navbar navbar-inverse">
		  <div class="container">
		    <div class="navbar-header">
		      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
		        <span class="sr-only">Toggle navigation</span>
		        <span class="icon-bar"></span>
		        <span class="icon-bar"></span>
		        <span class="icon-bar"></span>
		      </button>
		      <a class="navbar-brand" href="${s:mvcUrl('HC#index').build()}">Casa do Código</a>
		    </div>
		    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
		      <ul class="nav navbar-nav">
		        <li><a href="${s:mvcUrl('HC#listar').build()}">Lista de Produtos</a></li>
		        <li><a href="${s:mvcUrl('HC#form').build()}">Cadastro de Produtos</a></li>
		      </ul>
		    </div><!-- /.navbar-collapse -->
		  </div>
		</nav>
		
    <h1>Home</h1>
<table>
    <tr>
        <td>TDD na Prática - JAVA</td>
        <td>Google Android</td>
        <td>Certificação OCJP</td>
        <td>Java 8 Prático</td>
    </tr>
</table>
<c:forEach items="${produtos}" var="produtos">

<li>
  <a href="${s:mvcUrl('HC#detalhes').arg(0, produtos.id).build()}">
          <h2 class="product-title">${produtos.titulo}</h2>
          <small class="buy-button">Compre</small>
  </a>
</li>

</c:forEach>

</body>
</html>