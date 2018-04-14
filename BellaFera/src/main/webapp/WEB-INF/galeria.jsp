
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <%@ include file = "headGeral.jsp" %>
        <link href="./_resources/estiloGaleria.css" rel="stylesheet" type="text/css"/>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/fancybox/3.2.5/jquery.fancybox.min.css"/>
	<link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN" crossorigin="anonymous">
	<script src="https://cdnjs.cloudflare.com/ajax/libs/fancybox/3.2.5/jquery.fancybox.min.js"></script>
        <script src="./_resources/domGaleria.js" type="text/javascript"></script>
    </head>
    <body>

        <%@ include file = "header.jsp" %>

        <div class="container-fluid">
            <div class="row">

                <div class="col-md-3 col-sm-4 col-xs-12 single_portfolio_text">
                    <img class="img-fluid galeria" src="./_imagens/pizzaPacoca.jpeg" alt="" />
                    <div class="portfolio_images_overlay text-center align-self-center">
                        <h6 class="clrd-font">Paçoquita</h6>
                        <p class="clrd-font product_price">R<i class="fa fa-usd clrd-font" aria-hidden="true"></i> 45,90</p>
                        <a href="cardapio" class="btn btn-primary">Cardápio</a>
                    </div>
                </div>

                <div class="col-md-3 col-sm-4 col-xs-12 single_portfolio_text">
                    <img class="img-fluid galeria" src="./_imagens/pizzaDoritos.jpeg" alt="" />
                    <div class="portfolio_images_overlay text-center align-self-center">
                        <h6 class="clrd-font">Doritos</h6>
                        <p class="clrd-font product_price">R<i class="fa fa-usd clrd-font" aria-hidden="true"></i> 45,90</p>
                        <a href="cardapio" class="btn btn-primary">Cardápio</a>
                    </div>
                </div>

                <div class="col-md-3 col-sm-4 col-xs-12 single_portfolio_text">
                    <img class="img-fluid galeria" src="./_imagens/pizzaMeiaBrocolisGratinada.jpeg" alt="" />
                    <div class="portfolio_images_overlay text-center">
                        <h6 class="clrd-font">Meia Brócolis Meia Gratinada</h6>
                        <p class="clrd-font product_price">R<i class="fa fa-usd clrd-font" aria-hidden="true"></i> 43,90</p>
                        <a href="cardapio" class="btn btn-primary">Cardápio</a>
                    </div>
                </div>

                <div class="col-md-3 col-sm-4 col-xs-12 single_portfolio_text">
                    <img class="img-fluid galeria" src="./_imagens/pizzaPortuguesa.jpeg" alt="" />
                    <div class="portfolio_images_overlay text-center">
                        <h6 class="clrd-font">Portuguesa</h6>
                        <p class="clrd-font product_price">R<i class="fa fa-usd clrd-font" aria-hidden="true"></i> 38,90</p>
                        <a href="cardapio" class="btn btn-primary">Cardápio</a>
                    </div>
                </div>

                <div class="col-md-3 col-sm-4 col-xs-12 single_portfolio_text">
                    <img class="img-fluid galeria" src="./_imagens/pizzaRucula.jpeg" alt="" />
                    <div class="portfolio_images_overlay text-center">
                        <h6 class="clrd-font">Rúcula</h6>
                        <p class="clrd-font product_price">R<i class="fa fa-usd clrd-font" aria-hidden="true"></i> 45,90</p>
                        <a href="cardapio" class="btn btn-primary">Cardápio</a>
                    </div>
                </div>

                <div class="col-md-3 col-sm-4 col-xs-12 single_portfolio_text">
                    <img src="http://i.imgur.com/ymwlLln.png" alt="" />
                    <div class="portfolio_images_overlay text-center">
                        <h6 class="clrd-font">Italian Source Mushroom</h6>
                        <p class="clrd-font product_price"> <i class="fa fa-usd clrd-font" aria-hidden="true"></i> 12</p>
                        <a href="#" class="btn btn-primary">Click here</a>
                    </div>
                    <a class="fancybox" rel="ligthbox" href="http://i.imgur.com/ymwlLln.png">
                        <div class="zoom"></div>
                    </a>
                </div>
                <div class="col-md-3 col-sm-4 col-xs-12 single_portfolio_text">
                    <img src="http://i.imgur.com/PUeaHfC.png" alt="" />
                    <div class="portfolio_images_overlay text-center">
                        <h6 class="clrd-font">Italian Source Mushroom</h6>
                        <p class="clrd-font product_price"> <i class="fa fa-usd clrd-font" aria-hidden="true"></i> 12</p>
                        <a href="#" class="btn btn-primary">Click here</a>
                    </div>
                    <a class="fancybox" rel="ligthbox" href="http://i.imgur.com/PUeaHfC.png">
                        <div class="zoom"></div>
                    </a>
                </div>
                <div class="col-md-3 col-sm-4 col-xs-12 single_portfolio_text">
                    <img src="http://i.imgur.com/A8FRrbS.png" alt="" />
                    <div class="portfolio_images_overlay text-center">
                        <h6 class="clrd-font">Italian Source Mushroom</h6>
                        <p class="clrd-font product_price"> <i class="fa fa-usd clrd-font" aria-hidden="true"></i> 12</p>
                        <a href="#" class="btn btn-primary">Click here</a>
                    </div>
                    <a class="fancybox" rel="ligthbox" href="http://i.imgur.com/A8FRrbS.png">
                        <div class="zoom"></div>
                    </a>
                </div>

            </div>
        </div>

        <%@ include file = "footer.jsp" %>

    </body>
</html>
