<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <%@ include file = "headGeral.jsp" %>
    </head>
    <body>
        <%@ include file = "header.jsp" %>

        <div class="container-fluid">
          <div class="row justify-content-center">
                <div id="section2" class="col-xs-12 col-sm-12 col-md-10 col-lg-8 backgrounded section2 sessoes">
                    <h1 class="fonte-lobster text-warning contorno">Promoções</h1>
                    <hr/>
                    <c:forEach var="promocao" items="${promocoes}">
                        <div class="row justify-content-center">
                            <div class="paineis col-xs-12 col-sm-12 col-md-8 col-lg-6 border border-dark text-center">
                                <h2 class="text-warning fonte-acme contorno">${promocao.nome}</h2>
                                <h3 class="fonte-acme">${promocao.descricao}</h3>
                                <h1 class="text-warning fonte-acme contorno">${promocao.preco}</h1>
                            </div>
                        </div>
                    </c:forEach>
                </div>
            </div>

            <%@ include file = "footer.jsp" %>

        </div>
    </body>
</html>
