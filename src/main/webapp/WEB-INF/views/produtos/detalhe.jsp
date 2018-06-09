<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="security" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<%@ include file="/WEB-INF/views/cabecalho.jsp" %>



<article id="${produto.id }" itemscope>
	<div class="container">
        <div class="row">
            <div class="col-md-6">
           	<img src="${contextPath}resources/img/god.png" width="300" height="400" class="mt-4"/>
            </div>
            <div class="col-md-6">
                <h3 class="mt-4">${produto.nome }</h3>
                <form:form servletRelativeAction="/carrinho/add" method="POST">
                	<ul class="mt-4 mr-5" id="cor" style="list-style:none; background-color: #f2f0ee; padding: 0 5%;">
                		<input type="hidden" value="${produto.id }" name="produtoId" >
                    	<c:forEach items="${produto.precos }" var="preco">
	                    	<li>
                            	<input type="radio" name="tipoPreco" id="tipo" value="${preco.tipo }"/>
	                        	<label class="aumentarLetra" style="font-size: 150%;"> ${produto.nome }
	                            	<small>${preco.tipo }</small>
	                            	<p>
	                                	<small>
	                                   		<del>R$ 39,90</del> por </small> ${preco.valor }
	                            	</p>
	                        	</label>
	                    	</li>
                    	</c:forEach>
                 	</ul>
              		<button style="float: right; background: #6f0306; color: #fbfaf8; border: none;" type="submit" class="btn btn-primary botao-descricao" title="Compre agora '${produto.nome }'!">Comprar</button>
            	</form:form>
            </div>
        </div>
        
        <h3 class="descricaoJogo mt-4">Descrição</h3>
        <p class="AjustarTesto" style="text-align: justify;"> ${produto.descricao } </p>

        <h3 class="descricaoJogo mt-3">Dados do Produto</h3>
        <div class="dados">
            <p>
                <Strong>Categoria</Strong>: ${produto.categoria }.</p>
            <p>
                <Strong>Fornecedor</Strong>: ${produto.fornecedor }.</p>
            <p>
                <Strong>Data de Lançamento</Strong>: <fmt:formatDate pattern="dd/MM/yyyy" value="${produto.dataLancamento.time }"/></p>
        </div>
    </div>
</article>

 <%@ include file="/WEB-INF/views/rodape.jsp" %>


</body>
</html>