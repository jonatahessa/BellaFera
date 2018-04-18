<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <%@ include file = "headGeral.jsp" %>
        <link href="./_resources/estiloCardapio.css" rel="stylesheet" type="text/css"/>
        <script src="./_resources/domCardapio.js" type="text/javascript"></script>
    </head>
    <body>
        <%@ include file = "header.jsp" %>

        <div class="container-fluid">
            <div class="row justify-content-center">
                <div id="section3" class="col-xs-12 col-sm-12 col-md-10 col-lg-8 backgrounded section3 sessoes">
                    <h1 class="fonte-lobster text-warning contorno">Cardápio</h1>
                    <hr/>
                    <div class="row justify-content-center">

                        <ul class="nav nav-pills" id="pills-tab" role="tablist">
                            <li class="nav-item">
                                <a class="nav-link active" id="pills-home-tab" data-toggle="pill" href="#pills-home" role="tab" aria-controls="pills-home" aria-selected="true">Pizzas Salgadas</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" id="pills-profile-tab" data-toggle="pill" href="#pills-profile" role="tab" aria-controls="pills-profile" aria-selected="false">Pizzas Doces</a>
                            </li>
                        </ul>
                        <div class="tab-content" id="pills-tabContent">
                            <div class="tab-pane fade show active" id="pills-home" role="tabpanel" aria-labelledby="pills-home-tab">

                                <div class="row salgadas">
                                    <div class="col-12">
                                      <div class="row">
                                        <c:forEach var="pizza" items="${pizzas}">
                                            <div class="col-xs-12 col-sm-12 col-md-6 col-lg-6">
                                              <div class="col-6 codigo-nome fonte-roboto">
                                                <h5 class="text-danger">${pizza.codigo}. ${pizza.nome}</h5>
                                              </div>
                                              <div class="col-6 grande-broto fonte-roboto">
                                                <h5 class="text-success text-right">Broto: ${pizza.broto}</h5>
                                                <h5 class="text-success text-right">Grande: ${pizza.preco}</h5>
                                              </div>
                                              <div class="col-12 descricao fonte-roboto">
                                                <p>${pizza.descricao}</p>
                                              </div>
                                              <hr/>
                                            </div>
                                        </c:forEach>
                                      </div>
                                    </div>
                                </div>
                            </div>

                            <div class="tab-pane fade" id="pills-profile" role="tabpanel" aria-labelledby="pills-profile-tab">
                              <div class="row salgadas">
                                  <div class="col-12">
                                    <div class="row">
                                      <c:forEach var="doce" items="${doces}">
                                          <div class="col-xs-12 col-sm-12 col-md-6 col-lg-6">
                                            <div class="col-6 codigo-nome fonte-roboto">
                                              <h5 class="text-danger">${doce.codigo} - ${doce.nome}</h5>
                                            </div>
                                            <div class="col-6 grande-broto fonte-roboto">
                                              <h5 class="text-success text-right">Broto: ${doce.broto}</h5>
                                              <h5 class="text-success text-right">Grande: ${doce.preco}</h5>
                                            </div>
                                            <div class="col-12 descricao fonte-roboto">
                                              <p>${doce.descricao}</p>
                                            </div>
                                            <hr/>
                                          </div>
                                      </c:forEach>
                                    </div>
                                  </div>
                              </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <%@ include file = "footer.jsp" %>
        </div>
    </body>
</html>
