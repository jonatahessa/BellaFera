<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <%@ include file = "headGeral.jsp" %>
    </head>
    <body>

        <%@ include file = "header.jsp" %>

        <div class="container-fluid">

            <div class="row">
                <div class="col-12">
                    <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#modal-cadastro">Cadastrar</button>
                </div>
            </div>

            <c:if test="${sessionScope.message == null}">
                <div class="alert alert-success" role="alert">
                    <h1>Cadastro Realizado com Sucesso!</h1>
                </div>
            </c:if>

            <div class="row justify-content-center">
                <div id="section1" class="col-xs-12 col-sm-12 col-md-10 col-lg-8 backgrounded section1 sessoes">
                    <h1 class="fonte-lobster text-warning contorno">Home</h1>
                    <hr/>
                    <div class="row">
                        <div class="col-xs-12 col-sm-12 col-md-5 col-lg-5">
                            <img class="img-fluid" src="./_imagens/LogoBella.png" alt="imagem de uma pizza">
                        </div>
                        <div class="col-xs-12 col-sm-12 col-md-7 col-lg-7 align-self-center">
                            <p>A <strong>BELLA & FERA</strong> é uma pizzaria familiar, onde somos apaixonados por uma boa pizza! Sentimos prazer em atender aos desejos de nossos clientes. Sempre com qualidade, rapidez e respeito a você.</p>
                            <p>Os nossos serviços são sempre prestados a todos com muito carinho e amor.</p>
                            <p>Venha conhecer um pouco mais da <strong>BELLA & FERA</strong> e se apaixonar pelos nossos sabores de dar água na boca!</p>
                        </div>
                    </div>
                </div>
            </div>

            <%@ include file = "footer.jsp" %>

        </div>

        <div class="modal" tabindex="-1" role="dialog" id="modal-cadastro">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <form action="email" method="post">
                        <div class="modal-header">
                            <h5 class="modal-title">Cadastro</h5>
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                <span aria-hidden="true">&times;</span>
                            </button>
                        </div>
                        <div class="modal-body">


                            <div class="form-group">
                                <label>Nome Completo</label>
                                <input class="form-control" type="text" name="nome" placeholder="Entre o nome completo."/>
                            </div>

                            <div class="form-group">
                                <label>E-mail</label>
                                <input class="form-control" type="email" name="email" placeholder="Entre o e-mail."/>
                            </div>

                            <div class="form-group">
                                <label>CEP</label>
                                <input class="form-control" type="text" name="cep" placeholder="Entre o CEP."/>
                            </div>

                            <div class="form-group">
                                <label>Endereço</label>
                                <input class="form-control" type="text" name="endereco" placeholder="Entre o endereço."/>
                            </div>

                            <div class="form-row">
                                <div class="form-group">
                                    <label>Número</label>
                                    <input class="form-control" type="text" name="numero" placeholder="Número.">
                                </div>

                                <div class="form-group">
                                    <label>Complemento</label>
                                    <input class="form-control" type="text" name="complemento" placeholder="Complemento.">
                                </div>

                                <div class="form-group">
                                    <label>Telefone</label>
                                    <input class="form-control" type="text" name="telefone" placeholder="Telefone.">
                                </div>
                            </div>
                        </div>
                        <div class="modal-footer">
                            <button type="submit" class="btn btn-primary">Enviar</button>
                            <button type="button" class="btn btn-secondary" data-dismiss="modal">Cancelar</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </body>
</html>
