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
		<title>Carrinho - Casa do Código</title>
</head>
<body>
	<h1> Carrinho de Compras</h1>
	<div>
	<table>
		<tr>
			<td>Item</td>
			<td>Preço</td>
			<td>Quantidade</td>
		</tr>
		</br>
		<c:forEach items="${carrinhoCompras.itens}" var="item">
	    <tr>
	        <td>${item.produtos.titulo}</td>
	        <td>${item.preco}</td>
	        <td>
	            <input type="number" value="${carrinhoCompras.getQuantidade(item)}" />
	        </td>
	        <td>
	            <form action="${s:mvcUrl('CCC#remover').arg(0, item.produtos.id).arg(1,item.tipoPreco).build() }" method="POST">
	        		<input type="image" alt="Excluir" title="Excluir" />
	   		    </form>
	        </td>
	    </tr>
		</c:forEach>
	</table>
	</div>
	
	<tfoot>
    <tr>
        <td>Total: R$ ${carrinhoCompras.total}</td>
        </br>
        <form action="/casadocodigo/pagamento/finalizar" method="post">
    		<input type="submit" class="checkout" name="checkout" value="Finalizar compra" />
		</form>
    </tr>
	</tfoot>

</body>
</html>