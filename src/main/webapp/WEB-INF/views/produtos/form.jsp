<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s"%>
<%@ include file="/WEB-INF/views/cabecalho.jsp" %>


    <div class="container" style="margin-top: 30px;">
    	<form:form action="${s:mvcUrl('PC#gravar').build() }" method="POST" commandName="produto" enctype="multipart/form-data">
            <div class="form-row">
                <div class="col-md-4 mb-3">
                    <label>Nome</label>
                    <form:input path="nome" class="form-control" placeholder="Digite o Nome"/>
                    <form:errors path="nome"/>
                </div>
                 <div class="col-md-4 mb-3">
                    <label>Fornecedor</label>
                    <form:input path="fornecedor" class="form-control" placeholder="Digite o fornecedor"/>
                    <form:errors path="fornecedor"/>
                </div>
                <div class="col-md-4">
                    <label>Categoria</label>
                    <form:select class="custom-select form-control" path="categoria">
                        <option selected>Selecione Categoria</option>
                        <option value="Aventura">Aventura</option>
                        <option value="Acao">Ação</option>
                        <option value="RPG">RPG</option>
                    </form:select>
                    <form:errors path="categoria"/>
                </div>
                <c:forEach items="${tipos }" var="tipoPreco" varStatus="status">
	                <div class="col-md-4 mb-3">
	                    <label>${tipoPreco }</label>
	                    <form:input path="precos[${status.index}].valor" class="form-control" placeholder="Digite o Preço"/>
	                	<form:hidden path="precos[${status.index }].tipo" value="${tipoPreco }"/>
	                </div>
                </c:forEach>
       		</div>
            <div class="form-row">
                <div class="col-md-4 mb-3">
                    <label>Descrição</label>
                    <form:textarea path="descricao" class="form-control" rows="3"/>
                    <form:errors path="descricao"/>
                </div>
                
                <div class="col-md-2 mb-3">
                    <label>Data de Lançamento</label>
                    <form:input path="dataLancamento" class="form-control" placeholder="Digite a data"/>
                    <form:errors path="dataLancamento"/>
                </div>
               
                <div class="col-md-2 mb-3">
                    <label>Quantidade</label>
                    <form:input path="quantidade" class="form-control" placeholder="Digite a quantidade"/>
                    <form:errors path="quantidade"/>
                </div>
                <div class="col-md-4 mb-3">
                    <label>Arquivo</label>
                    <input name="imagem" class="form-control-file" type="file"/>
                </div>
            </div>
            <button class="btn btn-primary btn-dark" type="submit">Cadastrar</button>
        </form:form>
    </div>
    <!--/.Container-->


 <%@ include file="/WEB-INF/views/rodape.jsp" %>


</body>
</html>