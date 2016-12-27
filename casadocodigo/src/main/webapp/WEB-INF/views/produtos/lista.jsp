<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s" %>
<!DOCTYPE html>
<html>
    <head>
    	<%@ page isELIgnored="false" %>
        <meta charset="UTF-8">
        <title>Livros de Java, Android, iPhone, Ruby, PHP e muito mais - Casa do Código</title>
        <c:url value="/resources/css" var="cssPath" />
		<link rel="stylesheet" href="${cssPath}/bootstrap.min.css" />
		<link rel="stylesheet" href="${cssPath}/bootstrap-theme.min.css" />
		<head>
	    <style type="text/css">
	        body{
	            padding: 0px 0px;
	        }
	    </style>
</head>
		
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

    <h3><a href="/casadocodigo/carrinho">Carrinho de Compra ${carrinhoCompras.quantidade}</a></h3>
    
    <div class="container">
    <h1><ins>Lista de Produtos</ins></h1>
    <p> ${sucesso} </p>
		<table class="table table-bordered"">
        <tr>
            <th>Título</th>
            <th>Descrição</th>
            <th>Páginas</th>
        </tr>
        <c:forEach items="${produtos}" var="produto">
        <tr>
            <td><a href="${s:mvcUrl('HC#detalhes').arg(0, produto.id).build()}">${produto.titulo}</a></td>
            <td>${produto.descricao}</td>
            <td>${produto.paginas}</td>
        </tr>
    </c:forEach>
    </table>
    </div>
    
    </body>
</html>