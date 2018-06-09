<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="security" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<%@ include file="/WEB-INF/views/cabecalho.jsp" %>


<div class="container mt-4">
        <h2>Meu Carrinho</h2>
        <div class="row my-auto mx-auto">
            <table class="table table-bordered table-hover table-md">
                <thead class="thead-dark">
                    <tr>
                        <th>Item</th>
                        <th>Preço</th>
                        <th>Qtd</th>
                        <th>Total</th>
                        <th> </th>
                    </tr>
                </thead>
                <tbody>
                	<c:forEach items="${carrinhoCompras.itens }" var="item">
	                    <tr>
	                        <td width="650px;">
	                            <img src="img/cell.png" class="float-left">
	                            <h2 class="textoCarrinho"> ${item.produto.nome } </h2>
	                        </td>
	                        <td align="center"> ${item.preco } </td>
	                        <td width="70px">
	                            <input width="50px;" type="number" min="0" id="quantidade" name="quantidade" value="${carrinhoCompras.getQuantidade(item) }"></input>
	                        </td>
	                        <td class="center" align="center">${carrinhoCompras.getTotal(item) }</td>
	                        <td width="80px;">
    							<form:form action="${s:mvcUrl('CC#remover').arg(0, item.produto.id).arg(1,item.tipoPreco).build() }" method="post">
	                            	<input type="image" width="20px"
	                            	src="http:////cdn.shopify.com/s/files/1/0155/7645/t/232/assets/trash.png?15620826580163684070" alt="excluir" title="Remover"> 
	                         	</form:form>
                         	</td>
	                    </tr>
                    </c:forEach>
                    <tr class="thead-dark">
                        <td colspan="2"></td>
                        <td>
                        </td>
                        <td align="center"> ${carrinhoCompras.total } </td>
                        <td></td>
                    </tr>
                </tbody>
            </table>
        </div>
   </div>
   
   <div class="container">
	   <div class="row">
	        <div class="col-md-6">
	            <button type="button" class="btn btn-lg float-left btn-custom btn-cinza mb-4 mt-3">Comprar Mais Produtos</button>
	        </div>
	        <div class="col-md-6">
		        <form:form action="${s:mvcUrl('PC#finalizar').build() }" method="POST">
		            <input type="submit" value="Finalizar Compra" name="checkout" class="btn btn-lg float-right btn-custom btn-vinho mt-3"/>
		        </form:form>
	        </div>
	    </div>
    </div>
    
 <%@ include file="/WEB-INF/views/rodape.jsp" %>

</body>
</html>