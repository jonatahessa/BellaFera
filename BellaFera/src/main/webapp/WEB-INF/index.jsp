<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <link rel="stylesheet" href="./_resources/estiloPaginaInicial.css">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/css/bootstrap.min.css" integrity="sha384-PsH8R72JQ3SOdhVi3uxftmaW6Vc51MKb0q5P2rRUpPvrszuE4W1povHYgTpBfshb" crossorigin="anonymous">
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.3/umd/popper.min.js" integrity="sha384-vFJXuSJphROIrBnz7yo7oB41mKfc8JzQZiCq4NCceLEaO4IHwicKwpJf9c9IpFgh" crossorigin="anonymous"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/js/bootstrap.min.js" integrity="sha384-alpBpkh1PFOepccYVYDB4do5UnbKysX5WZXm3XxPqe5iKTfUKjNkCk9SaVuEZflJ" crossorigin="anonymous"></script>
        <link rel="shortcut icon" href="./_imagens/favicon1.ico" />
        <script type="text/javascript" src="./_resources/domPaginaInicial.js"></script>
        <script src='//production-assets.codepen.io/assets/common/stopExecutionOnTimeout-b2a7b3fe212eaa732349046d8416e00a9dec26eb7fd347590fbced3ab38af52e.js'></script>
        <link href="https://fonts.googleapis.com/css?family=Acme|Lobster|Permanent+Marker|Roboto" rel="stylesheet">
        <title>Bella & Fera</title>
    </head>
    <body>
        <header class="static-header">
            <div class="inside-header">
              <nav>
                    <a class="text-dark" href="#section1"><strong>Home</strong></a>
                    <a class="text-dark" href="#section2"><strong>Promoções</strong></a>
                    <a class="text-dark" href="#section3"><strong>Cardápio</strong></a>
                    <a class="text-dark" href="#section4"><strong>Localização</strong></a>
                    <a class="text-dark" href="#section5"><strong>Contato</strong></a>
                </nav>
            </div>
        </header>

        <header class="fixed-header">
            <div class="fheader__container">
              <nav>
                    <a class="text-dark" href="#section1"><strong>Home</strong></a>
                    <a class="text-dark" href="#section2"><strong>Promoções</strong></a>
                    <a class="text-dark" href="#section3"><strong>Cardápio</strong></a>
                    <a class="text-dark" href="#section4"><strong>Localização</strong></a>
                    <a class="text-dark" href="#section5"><strong>Contato</strong></a>
                </nav>
            </div>
        </header>
        <div class="container-fluid">
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

            <div class="row justify-content-center">
                <div id="section3" class="col-xs-12 col-sm-12 col-md-10 col-lg-8 backgrounded section3 sessoes">
                    <h1 class="fonte-lobster text-warning contorno">Cardápio</h1>
                    <hr/>
                    <div class="row justify-content-center">
                        <div class="col-xs-12 col-sm-12 col-lg-8">
                            <button type="button" class="col-12 botoes-menu" data-toggle="modal" data-target="#modal-pizzas">
                                <img class="col-5" src="./_imagens/pizzasalgada.png" alt="Foto de uma pizza salgada"><h3 class="text-warning contorno">Clique para abrir as Pizzas Salgadas</h3>
                            </button>
                        </div>
                    </div>

                    <div class="row justify-content-center">
                        <div class="col-xs-12 col-sm-12 col-lg-8">
                            <button type="button" class="col-12 botoes-menu" data-toggle="modal" data-target="#modal-doces">
                                <img class="col-5" src="./_imagens/pizzadoce.png" alt="Foto de uma pizza doce"><h3 class="text-warning contorno">Clique para abrir as Pizzas Doces</h3>
                            </button>
                        </div>
                    </div>
                </div>
            </div>

            <div class="row justify-content-center">
                <div id="section4" class="col-xs-12 col-sm-12 col-md-10 col-lg-8 backgrounded section4 sessoes">
                    <h1 class="fonte-lobster text-warning contorno">Localização</h1>
                    <hr/>
                    <h3 class="text-center">Avenida Santa Catarina, 260 - Vila Alexandria, São Paulo - SP</h3>
                    <iframe class="col-12" src="https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d3654.9638801473006!2d-46.66903293881654!3d-23.641464547188292!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0xc48cc370249e3675!2sBELLA+%26+FERA+PIZZARIA+DELIVERY!5e0!3m2!1spt-BR!2sbr!4v1522335492014" height="500" allowfullscreen></iframe>
                </div>
            </div>

            <div class="row justify-content-center">
                <div id="section5" class="col-xs-12 col-sm-12 col-md-10 col-lg-8 backgrounded section5 sessoes">
                    <h1 class="fonte-lobster text-warning contorno">Contato</h1>
                    <hr/>
                    <div class="row justify-content-center">
                        <div class="col-12">
                            <h2 class="text-center display-4">
                                <a class="text-dark" href="tel:01150311592"><strong>5031-1592</strong></a><br/>
                                <a class="text-dark" href="tel:01150311394"><strong>5031-1394</strong></a><br/>
                                <a class="text-dark" href="tel:011982087503"><strong>98208-7503</strong></a>
                                <img class="col-1" src="./_imagens/whatsapp.png" alt="whatsapp">
                            </h2>
                            <h3 class="text-center">Horário de funcionamento</h3>
                            <h4 class="text-center">De Terça a Quinta e Domingos das 18h às 23:30h</h4>
                            <h4 class="text-center">Sextas e Sábados das 18h à 0h</h4>
                            <p class="text-center">Copyright (c) Pizzaria Bella & Fera Copyright Holder All Rights Reserved.</p>
                            <p class="text-center">Developed by Jonata Hessa</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div class="modal fade" id="modal-pizzas" tabindex="-1" role="dialog" aria-labelledby="exampleModalLongTitle" aria-hidden="true">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="exampleModalLongTitle">Pizzas</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="modal-body">
                        <ul class="col-12 cardapios">
                          <p class="grande-broto">Grande</p>
                          <p class="grande-broto">Broto</p>
                            <c:forEach var="pizza" items="${pizzas}">
                                <li class="menu-category titulopreco">
                                    <div class="fonte-roboto">
                                        <p class="titulo">${pizza.codigo} - ${pizza.nome}</p>
                                        <p class="preco">${pizza.preco}</p>
                                        <p class="preco">${pizza.broto}</p>
                                        <p class="descricao">${pizza.descricao}</p>
                                    </div>
                                </li>
                            </c:forEach>
                        </ul>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-dismiss="modal">Fechar Cardapio</button>
                    </div>
                </div>
            </div>
        </div>

        <div class="modal fade" id="modal-doces" tabindex="-1" role="dialog" aria-labelledby="exampleModalLongTitle" aria-hidden="true">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="exampleModalLongTitle">Pizzas Doces</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="modal-body">
                        <ul class="col-12 cardapios">
                          <p class="grande-broto">Grande</p>
                          <p class="grande-broto">Broto</p>
                            <c:forEach var="doce" items="${doces}">
                                <li class="menu-category titulopreco">
                                    <div class="fonte-roboto">
                                        <p class="titulo">${doce.codigo} - ${doce.nome}</p>
                                        <p class="preco">${doce.preco}</p>
                                        <p class="preco">${doce.broto}</p>
                                        <p class="descricao">${doce.descricao}</p>
                                    </div>
                                </li>
                            </c:forEach>
                        </ul>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-dismiss="modal">Fechar Cardapio</button>
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>
