<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s"%>
<%@ include file="/WEB-INF/views/cabecalho.jsp" %>



  <div class="container">
    <div class="row">
      <form:form servletRelativeAction="/login" method="POST" cssClass="mx-auto mt-5">
        <h6 class="mb-2">
          <strong>Acesse com seu email</strong>
        </h6>
        <div class="form-group mt-3">
          <label for="email">Email:</label>
          <a href="#" title="Esqueci meu e-mail" class="pr-3" id="lnkEsqueciMeuEmail" tabindex="5">Esqueci meu e-mail</a>
          <a href="#" title="Meu e-mail mudou" id="lnkEmailMudou" tabindex="6">Meu e-mail mudou</a>
          <input style="width: 550px" type="text" size="150" class="form-control" name="username" placeholder="Digite o seu e-mail">
        </div>
        <div class="form-group mt-3">
          <label for="senha">Senha:</label>
          <a href="#" title="Esqueci meu e-mail" id="lnkEsqueciMinhaSenha">Esqueci minha senha</a>
          <input style="width: 550px" type="password" class="form-control" name="password" placeholder="Digite a sua senha">
        </div>
        <div class="form-group form-check">
          <input type="checkbox" class="form-check-input" id="dropdownCheck">
          <label class="form-check-label" for="dropdownCheck">
            Lembre-se de mim
          </label>
        </div>
        <button type="submit" class="btn btn-primary btn-dark float-right" title="Login">Logar</button>
      </form:form>
    </div>
  </div>

 <%@ include file="/WEB-INF/views/rodape.jsp" %>


</body>
</html>