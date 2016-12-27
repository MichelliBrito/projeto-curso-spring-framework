<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s" %>
<!DOCTYPE html>
<html>
<head>
<%@ page isELIgnored="false" %>
	
		<meta charset="utf-8"/>
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"/>
		<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1"/>
		<title>${produtos.titulo} - Casa do Código</title>
		<c:url value="/resources/css" var="cssPath" />
		<link rel="stylesheet" href="${cssPath}/bootstrap.min.css" />
		<link rel="stylesheet" href="${cssPath}/bootstrap-theme.min.css" />
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
		
		
	<h1>Detalhes do livro</h1>
		<div class="container-fluid">
				
				<article id="${produtos.id}">
					  
					      <h3>Nome do Livro: ${produtos.titulo}</h3>
						
					    <h3>
					    	Descrição: ${produtos.descricao}
					    </h3>
				  
			
			   
			  <form action='<c:url value="/carrinho/add" />' method="post">
			    <input type="hidden" name="produtoId" value="${produtos.id}" />
			    
			    <ul class="list-inline">
			    <c:forEach items="${produtos.precos}" var="preco">
			    	  <li>
			            <input type="radio" name="tipoPreco" id="id" value="${preco.tipo}"  checked="checked"  />
			            <label>
			              ${preco.tipo}
			            </label>
			            <p>${preco.valor}</p>
			          </li>  
			     </c:forEach>         
			    </ul>
			    <button type="submit" title="Compre Agora ${produtos.titulo}">Compre Agora </button>
			  </form>
	  	</div>
	  
	  
	<div>
	  <section>
	    <ul>
	      	<li><h3>E muito mais... <a href="casadocodigo/sumario-arquivo">veja o sumário</a>.</h3></li>
	    </ul>
	  </section>
	  
	  <section>
	    <h2>Dados do livro:</h2>
	    <p>Número de páginas: <span>${produtos.paginas}</span></p>
	    <p></p>
	    <p>Data de publicação: <fmt:formatDate pattern="dd/MM/yyyy" value="${produtos.dataLancamento.time}"/> </p>
	  </section>
	</div>
	<h3><a href="/casadocodigo/carrinho">Carrinho ${carrinhoCompras.quantidade} </a></h3>
	</article>	
</body>
</html>