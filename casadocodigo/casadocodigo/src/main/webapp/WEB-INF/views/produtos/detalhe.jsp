<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
	<c:url value="/" var="contextPath" />
	  <meta charset="utf-8"/>
		  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"/>
		  <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1"/>
		<link rel="icon"
			href="//cdn.shopify.com/s/files/1/0155/7645/t/177/assets/favicon.ico?11981592617154272979"
			type="image/ico" />
		<link href="https://plus.googlecom/108540024862647200608"
			rel="publisher"/>
		<title>${produtos.titulo} - Casa do Código</title>
		<link href="${contextPath}resources/css/cssbase-min.css"
			rel="stylesheet" type="text/css" media="all" />
		<link href='http://fonts.googleapis.com/css?family=Droid+Sans:400,700'
			rel='stylesheet'/>
		<link href="${contextPath}resources/css/fonts.css"
			rel="stylesheet" type="text/css" media="all" />
		<link href="${contextPath}resources/css/fontello-ie7.css"
			rel="stylesheet" type="text/css" media="all" />
		<link href="${contextPath}resources/css/fontello-embedded.css"
			rel="stylesheet" type="text/css" media="all" />
		<link href="${contextPath}resources/css/fontello.css"
			rel="stylesheet" type="text/css" media="all" />
		<link href="${contextPath}resources/css/style.css"
			rel="stylesheet" type="text/css" media="all" />
		<link href="${contextPath}resources/css/layout-colors.css"
			rel="stylesheet" type="text/css" media="all" />
		<link href="${contextPath}resources/css/responsive-style.css"
			rel="stylesheet" type="text/css" media="all" />
		<link href="${contextPath}resources/css/guia-do-programador-style.css" 
			rel="stylesheet" type="text/css"  media="all"  />
	    <link href="${contextPath}resources/css/produtos.css" 
	    	rel="stylesheet" type="text/css"  media="all"  />
		<link rel="canonical" href="http://www.casadocodigo.com.br/" />	
</head>
<body>

  <header id="layout-header">
		<div class="clearfix container">
			<a href="/" id="logo">
			</a>
			<div id="header-content">
				<nav id="main-nav">
					
					<ul class="clearfix">
						<li><a href="/cart" rel="nofollow">Carrinho</a></li>

						<li><a href="/pages/sobre-a-casa-do-codigo" rel="nofollow">Sobre Nós</a></li>

						<li><a href="/pages/perguntas-frequentes" rel="nofollow">Perguntas Frequentes</a></li>
					</ul>
				</nav>
			</div>
		</div>
	</header>
	<nav class="categories-nav">
		<ul class="container">
			<li class="category"><a href="http://www.casadocodigo.com.br">Home</a></li>
			<li class="category"><a href="/collections/livros-de-agile">
					Agile </a></li>
			<li class="category"><a href="/collections/livros-de-front-end">
					Front End </a></li>
			<li class="category"><a href="/collections/livros-de-games">
					Games </a></li>
			<li class="category"><a href="/collections/livros-de-java">
					Java </a></li>
			<li class="category"><a href="/collections/livros-de-mobile">
					Mobile </a></li>
			<li class="category"><a
				href="/collections/livros-desenvolvimento-web"> Web </a></li>
			<li class="category"><a href="/collections/outros"> Outros </a></li>
		</ul>
	</nav>

	<article id="livro-css-eficiente">
		  <header id="product-highlight" class="clearfix">
		    <div id="product-overview" class="container">
		      <img width="280px" height="395px" src="http://cdn.shopify.com/s/files/1/0155/7645/products/css-eficiente-featured_large.png?v=1435245145" class="product-featured-image" />
		      <h1 class="product-title">AQUI COLOQUE O TÍTULO</h1>
		      <p class="product-author">
		        <span class="product-author-link">
		          
		        </span>
		      </p>	
			
		    <p class="book-description">
		    	AQUI COLOQUE A DESCRIÇÃO
		    </p>
		    </div>
		  </header>
	
	  
	  <section class="buy-options clearfix">  
	  <form action="/cart/add" method="post" class="container">
	    <ul id="variants" class="clearfix">
	    	  <li class="buy-option">
	            <input type="radio" name="id" class="variant-radio" id="product-variant-9720393823" value="9720393823"  checked="checked"  />
	            <label  class="variant-label" for="product-variant-9720393823">
	              E-book + Impresso 
	            </label>
	            <small class="compare-at-price">R$ 39,90</small>
	            <p class="variant-price">R$ 29,90</p>
	          </li>           
	    </ul>
	    <button type="submit" class="submit-image icon-basket-alt" alt="Compre Agora" title="Compre Agora"></button>
	    
	  </form>
	  
	</section>
	  
	<div class="container">
	  <section class="summary">
	    <ul>
	      	<li><h3>E muito mais... <a href='/pages/sumario-java8'>veja o sumário</a>.</h3></li>
	    </ul>
	  </section>
	  
	  <section class="data product-detail">
	    <h2 class="section-title">Dados do livro:</h2>
	    <p>Número de páginas: <span>AQUI O NÚMERO DE PÁGINAS</span></p>
	    <p></p>
	    <p>Data de publicação: AQUI A DATA DE PUBLICAÇÃO </p>
	    <p>Encontrou um erro? <a href='/submissao-errata' target='_blank'>Submeta uma errata</a></p>
	  </section>
	</div>
	
	</article>	

	<footer id="layout-footer">
		<div class="clearfix container">




			<div id="collections-footer">
				<!-- cdc-footer -->
				<p class="footer-title">Coleções de Programação</p>
				<ul class="footer-text-links">
					<li><a href="/collections/livros-de-java">Java</a></li>
					<li><a href="/collections/livros-desenvolvimento-web">Desenvolvimento
							Web</a></li>
					<li><a href="/collections/livros-de-mobile">Mobile</a></li>
					<li><a href="/collections/games">Games</a></li>
					<li><a href="/collections/livros-de-front-end">Front End</a></li>
				</ul>
				<p class="footer-title">Outros Assuntos</p>
				<ul class="footer-text-links">
					<li><a href="/collections/livros-de-agile">Agile</a></li>
					<li><a href="/collections/outros">e outros...</a></li>
				</ul>
			</div>
			<div id="social-footer">
				<!-- books-footer -->
				<p class="footer-title">Links da Casa do Código</p>
				<ul class="footer-text-links">
					<li><a href="http://livros.casadocodigo.com.br" rel="nofollow">Meus
							E-books</a></li>
					<li><a href="/pages/sobre-a-casa-do-codigo">Sobre a Casa
							do Código</a></li>
					<li><a href="/pages/perguntas-frequentes">Perguntas
							Frequentes</a></li>
					<li><a href="https://www.caelum.com.br">Caelum - Ensino e
							Inovação</a></li>
					<li><a href="http://www.codecrushing.com/" rel="nofollow">Code
							Crushing</a></li>
					<li><a
						href="http://www.casadocodigo.com.br/pages/politica-de-privacidade"
						rel="nofollow">Política de Privacidade</a></li>
				</ul>
				<p class="footer-title">Redes Sociais</p>
				<ul>
					<li class="social-links"><a
						href="http://www.twitter.com/casadocodigo" target="_blank"
						id="twitter" rel="nofollow">Facebook</a> <a
						href="http://www.facebook.com/casadocodigo" target="_blank"
						id="facebook" rel="nofollow">Twitter</a></li>
				</ul>
			</div>
			<div id="newsletter-footer">
				<!-- social-footer -->
				<p class="footer-title">Receba as Novidades e Lançamentos</p>
				<div id="form-newsletter">
					<form
						action=""
						method="POST" id="ss-form" class="form-newsletter">
						<ul>
							<li><input type="hidden" name="pageNumber" value="0"/><input
								type="hidden" name="backupCache" value=""/><input
								type="email" name="entry.0.single" value="" class="ss-q-short"
								id="entry_0" placeholder="seu@email.com"/></li>
							<li><input type="submit" name="submit"
								value="Quero Receber!" id="submit-newsletter"/></li>
						</ul>
					</form>
					<ul>
						<li class="ie8"><a
							href=""
							rel="nofollow">Receba as Novidades e Lançamentos</a></li>
					</ul>
				</div>
				<ul class="footer-payments">
					<li></li>
					<li></li>
				</ul>
			</div>
		</div>
	</footer>
</body>
</html>