<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="security" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>


<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
        crossorigin="anonymous">
     <c:url value="/" var="contextPath" />
    	<link href="${contextPath}resources/css/estilo.css" rel="stylesheet" type="text/css" media="all" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
	<title>${produto.nome } FastShop</title>
   	<link rel="icon" href="${contextPath}resources/img/favicon.png"/>
</head>
</head>

<body>

<!--NavBar-->
	<nav class="navbar navbar-expand-lg navbar-dark navbar-cor sticky-top">
    <a class="navbar-brand" href="${s:mvcUrl('HC#index').build() }">
    	<img src="<c:url value="/resources/img/logo.png"/>" width="140" height="56" class="d-inline-block align-top"/>
    </a>

    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#barra-navegacao" aria-controls="barra-navegacao"
      aria-expanded="false" aria-label="Toggle navigation">
      <span class="sr-only">Alternar Menu</span>
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="barra-navegacao">
      <div class="container">
        <div class="row">
          <div class="col-md-12">
            <ul class="navbar-nav">
              <li class="nav-item">
                <a class="nav-link" href="pedidos.html">Meus Pedidos
                  <span class="sr-only">Premium</span>
                </a>
              </li>
              <li class="nav-item divisor" role="separator"></li>
              <li class="nav-item">
                <a class="nav-link" href="#">Dúvidas
                  <span class="sr-only">Ajuda</span>
                </a>
              </li>
              <li class="nav-item divisor" role="separator"></li>
              <li class="nav-item">
                <a class="nav-link" href="#">Atendimento
                  <span class="sr-only">Baixar</span>
                </a>
              </li>
              <li class="nav-item divisor" role="separator"></li>
              <li class="nav-item">
                <a class="nav-link" href="#">Unidades
                  <span class="sr-only">Inscrever-se</span>
                </a>
              </li>
<!--               <li class="nav-item ml-auto"> -->
<!--                 <button type="link" class="btn btn-link" data-toggle="modal" data-target="#myModal"> -->
<!--                   <i class="fa fa-sign-in" style="font-size:13px"></i> Realizar Cadastro -->
<!--                 </button> -->
<!--               </li> -->
              <li class="nav-item ml-auto">
              <a href="${s:mvcUrl('UC#form').build() }" rel="nofollow"><button type="link" class="btn btn-link">
                <i class="fa fa-sign-in" style="font-size:13px"></i> Realizar Cadastro
              </button></a>
              </li>
              <li class="nav-item mr-5">
              <a href="${s:mvcUrl('LC#login').build() }" rel="nofollow"><button type="link" class="btn btn-link">
                <i class="fa fa-sign-in" style="font-size:13px"></i> Realizar Login
              </button></a>
              </li>
            </ul>
          </div>
        </div>
        <div class="row">
          <div class="col-md-9">
            <form:form class="form-inline">
              <div class="input-group mb-3 mx-auto">
                <input type="text" class="form-control" id="barra-pesquisa" placeholder="Digite aqui" aria-label="Digite aqui" aria-describedby="basic-addon2">
                <div class="input-group-append">
                  <a href="">
                    <i class="input-group-text fa fa-search" id="search"></i>
                  </a>
                  <!--<button class="btn btn-custom btn-vinho" type="button">Pesquisar</button>-->
                </div>
              </div>
            </form:form>
          </div>
          <div class="col-md-3">
            <a href="${s:mvcUrl('CC#itens').build() }" rel="nofollow">
               <i class="fa fa-opencart mt-3" style="font-size: 20px; color: white; margin-left: -40px!important;"></i>
               <span id="meu-carrinho">Carrinho(${carrinhoCompras.quantidade })</span>
            </a>
			<security:authorize access="hasRole('ROLE_ADMIN')">
	            <a href="${s:mvcUrl('PC#form').build() }" rel="nofollow	">
	              <span id="minha-lista" class="text hidden-sm m">Cadastrar Produto</span>
	            </a>
            </security:authorize>
          </div>
        </div>
      </div>
      <!--/.Container-->
    </div>
    <!--/.Collapse-->
  </nav>
  <!--/.Nav-->


</body>
</html>