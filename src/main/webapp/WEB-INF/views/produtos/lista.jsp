<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s"%>
<%@ include file="/WEB-INF/views/cabecalho.jsp" %>


  <div class="container" style="margin-top: 30px;">
      <h3>Lista de Produtos</h3>
      <p> ${sucesso} </p>
      <table>
      	<tr>
      		<td>Nome</td>
      		<td>Descrição</td>
      		<td>Categoria</td>
      		<td>Path</td>
      	</tr>
   		<c:forEach items="${produtos }" var="produto">
			<tr>
				<td>
					<a href="${s:mvcUrl('PC#detalhe').arg(0,produto.id).build() }">${produto.nome }</a>
				</td>
				<td>${produto.descricao }</td>
				<td>${produto.categoria }</td>
				<td>${produto.arquivoPath }</td>
			</tr>
		</c:forEach>
      </table>
  </div>
  <!--/.Container-->

 <%@ include file="/WEB-INF/views/rodape.jsp" %>

</body>
</html>