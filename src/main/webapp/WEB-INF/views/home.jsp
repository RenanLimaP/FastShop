<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="security" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ include file="/WEB-INF/views/cabecalho.jsp" %>
	

  <!--Carousel-->
  <div class="container back-carousel mt-3 mb-5">
    <div id="Mycarousel" class="carousel slide" data-ride="carousel">
      <ol class="carousel-indicators">
        <li data-target="#Mycarousel" data-slide-to="0" class="active"></li>
        <li data-target="#Mycarousel" data-slide-to="1"></li>
      </ol>
      <div class="carousel-inner">
        <div class="carousel-item active">
          <img src="${contextPath}resources/img/slide1.png " class="d-block w-100" height="400px" alt="Imagem 1">
          <div class="carousel-caption">
          </div>
        </div>
        <div class="carousel-item">
          <img src="${contextPath}resources/img/slide3.png" class="d-block w-100" height="400px" alt="Imagem 2">
          <div class="carousel-caption">
          </div>
        </div>

      </div>
      <a class="carousel-control-prev" href="#Mycarousel" role="button" data-slide="prev">
        <span class="carousel-control-prev-icon" aria-hidden="true"></span>
        <span class="sr-only">Previous</span>
      </a>
      <a class="carousel-control-next" href="#Mycarousel" role="button" data-slide="next">
        <span class="carousel-control-next-icon" aria-hidden="true"></span>
        <span class="sr-only">Next</span>
      </a>
    </div>
  </div>
  
<!--   <div class="container"> -->
<!--     <h2>Produtos em Destaque</h2> -->
<!--     <div class="row mx-auto mt-4"> -->
<!--       <ul> -->
<%--        <c:forEach items="${produtos }" var="produto"> --%>
<!--         <li> -->
<%--           <a href="${s:mvcUrl('PC#detalhe').arg(0, produto.id).build() }"> --%>
<%--             <img src="${contextPath}resources/img/god.png" class="w-75 ml-4" style="width: 200px!important;"> --%>
<%--             <small style="display: block;">${produto.nome }</small> --%>
<!--           </a> -->
<!--         </li> -->
<%--         </c:forEach> --%>
<!--       </ul> -->
<!--     </div> -->
<!--   </div> -->

  <div class="container">
    <h2>Produtos em Destaque</h2>

    <div class="row mt-4">
    <c:forEach items="${produtos }" var="produto">
      <div class="col-md-3">
        <a href="${s:mvcUrl('PC#detalhe').arg(0, produto.id).build() }">
          <img src="${contextPath}resources/img/god.png" class= "mt-3" style="width: 200px;">
          <strong style="display: block;">${produto.nome }</strong>
        </a>
      </div>
    </c:forEach>
    </div>
  </div>

 <%@ include file="/WEB-INF/views/rodape.jsp" %>
 
  
  
</body>
</html>