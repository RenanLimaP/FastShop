<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="security" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<%@ include file="/WEB-INF/views/cabecalho.jsp" %>


<div id="pagamento" class="container">
			<div class="row colunas">
				<div class="col">
					<i class="fas fa-credit-card"></i>
					<i style="display: block;">Cartão de crédito</i>
				</div>
				<div class="col">
					<i class="fas fa-barcode"></i>
					<i style="display: block;">Boleto</i>
				</div>
				<div class="col">
					<i class="fas fa-money-check-alt"></i>
					<i style="display: block;"> Debito</i>
				</div>
				<div class="col">
					<i class="fab fa-cc-paypal"></i>
					<i style="display: block;">PayPal</i>
				</div>
			</div>
		</div>
		<div class="container formulario" style="background-color: lightgrey" >
			<form>
				<div class="form-group">
					<label for="nome">Numero do cartao</label>
					<input type="text" class="form-control" id="nomeCliente">
					<ul style="display: block;" class="cartoes">
						<i class="fab fa-cc-mastercard"></i>
						<i class="fab fa-cc-amex"></i>
						<i class="fab fa-cc-visa"></i>
					</ul>
				</div>
				<div class="form-group">
					<label for="nome">Nome impresso no cartão</label>
					<input type="text" class="form-control" id="nomeCliente">
				</div>
				<div class="form-row">
					    <div class="form-group col-md-4">
								<label for="inputState"></label>
								<select id="inputState" class="form-control">
								  <option selected>Mês</option>
								  <option>1</option>
								  <option>2</option>
								  <option>3</option>
								  <option>4</option>
								  <option>5</option>
								  <option>6</option>
								  <option>7</option>
								  <option>8</option>
								  <option>9</option>
								  <option>10</option>
								  <option>11</option>
								  <option>12</option>
								</select>
						</div>
						<div class="form-group col-md-4">
								<label for="inputState"></label>
								<select id="inputState" class="form-control">
								  <option selected>Ano</option>
								  <option>2018</option>
								  <option>2019</option>
								  <option>2020</option>
								  <option>2021</option>
								  <option>2022</option>
								  <option>2023</option>
								  <option>2024</option>
								  <option>2025</option>
								  <option>2026</option>
								  <option>2027</option>
								  <option>2028</option>
								  <option>2029</option>
								  <option>2030</option>
								</select>
						</div>
				</div>
				<div class="row">
					<div class="col-md-4">
						<label for="inputAddress2">Codigo de validação</label>
						<input type="text" class="form-control" id="inputAddress2">
					</div>
				</div>
				<div class="form-row">
					<div class="form-group col-md-4">
						<label for="inputState">Numero de parcelas</label>
						<select id="inputState" class="form-control">
							<option selected>0</option>
							<option>1</option>
							<option>2</option>
							<option>3</option>
							<option>4</option>
							<option>5</option>
							<option>6</option>
							<option>7</option>
							<option>8</option>
							<option>9</option>
							<option>10</option>
						</select>
					</div>
				</div>
				<button  style="background-color: green"  type="submit" class="btn btn-success">Pagar com cartão</button>
			</form>
		</div>
    
 <%@ include file="/WEB-INF/views/rodape.jsp" %>

</body>
</html>