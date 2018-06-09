<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s"%>
<%@ include file="/WEB-INF/views/cabecalho.jsp"%>



<div class="container">
	<h2 id="titulo">Cadastro de Novo Cliente</h2>
	
	<h4> ${Sucesso} </h4>
   	<form:form action="${s:mvcUrl('UC#cadastrar').build() }" method="POST" commandName="usuario">
		<h5 id="ajuste">Dados Pessoais</h5>
		<div class="form-row">
			<div class="col-md-4 mb-3">
				<label for="validationDefault01">Nome Completo</label> <input
					type="text" name="nome" class="form-control" placeholder="Digite seu Nome"
					required>
			</div>
<!-- 			<div class="col-md-4 mb-3"> -->
<!-- 				<label for="validationDefault02">CPF</label> <input type="text" -->
<!-- 					class="form-control" placeholder="Digite seu CPF" required> -->
<!-- 			</div> -->
<!-- 			<div class="col-md-4 mb-3"> -->
<!-- 				<label for="validationDefault02">Telefone</label> <input type="text" -->
<!-- 					class="form-control" placeholder="Digite seu Telefone" required> -->
<!-- 			</div> -->
		</div>

		<h5 id="ajuste">Dados de Acesso</h5>
		<div class="form-row">
			<div class="col-md-4 mb-3">
				<label for="validationDefault02">Email</label> <input type="email"
					class="form-control" name="email" placeholder="Digite seu Email" required>
			</div>
			<div class="col-md-4 mb-3">
				<label for="validationDefault02">Senha</label> <input type="password"
					class="form-control" name="senha" placeholder="Senha" required>
			</div>
<!-- 			<input type="hidden" value="ROLE_USER" name="roles" > -->
			<form:hidden path="roles[0].nome" value="ROLE_USER"/>
		</div>
		<button class="btn btn-primary btn-dark" type="submit">Cadastrar</button>
	</form:form>
</div>


<!--/.Container-->


<%@ include file="/WEB-INF/views/rodape.jsp"%>


</body>
</html>