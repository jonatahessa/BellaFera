
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

                <div class="col-md-3 col-sm-4 col-xs-12 single_portfolio_text back-pacoca galeria">
                    <div class="portfolio_images_overlay text-center align-self-center">
                        <h6 class="clrd-font">Paçoquita</h6>
                        <p class="clrd-font product_price">R<i class="fa fa-usd clrd-font" aria-hidden="true"></i> 45,90</p>
                        <a href="cardapio" class="btn btn-primary">Cardápio</a>
                    </div>
                </div>

                <div class="col-md-3 col-sm-4 col-xs-12 single_portfolio_text back-doritos galeria">
                    <div class="portfolio_images_overlay text-center align-self-center">
                        <h6 class="clrd-font">Doritos</h6>
                        <p class="clrd-font product_price">R<i class="fa fa-usd clrd-font" aria-hidden="true"></i> 45,90</p>
                        <a href="cardapio" class="btn btn-primary">Cardápio</a>
                    </div>
                </div>

                <div class="col-md-3 col-sm-4 col-xs-12 single_portfolio_text back-brocolis galeria">
                    <div class="portfolio_images_overlay text-center">
                        <h6 class="clrd-font">Brócolis e Quatro Queijos</h6>
                        <p class="clrd-font product_price">R<i class="fa fa-usd clrd-font" aria-hidden="true"></i> 43,90</p>
                        <a href="cardapio" class="btn btn-primary">Cardápio</a>
                    </div>
                </div>

                <div class="col-md-3 col-sm-4 col-xs-12 single_portfolio_text back-portuguesa galeria">
                    <div class="portfolio_images_overlay text-center">
                        <h6 class="clrd-font">Portuguesa</h6>
                        <p class="clrd-font product_price">R<i class="fa fa-usd clrd-font" aria-hidden="true"></i> 38,90</p>
                        <a href="cardapio" class="btn btn-primary">Cardápio</a>
                    </div>
                </div>

                <div class="col-md-3 col-sm-4 col-xs-12 single_portfolio_text back-rucula galeria">
                    <div class="portfolio_images_overlay text-center">
                        <h6 class="clrd-font">Rúcula</h6>
                        <p class="clrd-font product_price">R<i class="fa fa-usd clrd-font" aria-hidden="true"></i> 45,90</p>
                        <a href="cardapio" class="btn btn-primary">Cardápio</a>
                    </div>
                </div>

                <div class="col-md-3 col-sm-4 col-xs-12 single_portfolio_text back-maguerita galeria">
                    <div class="portfolio_images_overlay text-center">
                        <h6 class="clrd-font">Marguerita da Casa e Frango com Catupiry</h6>
                        <p class="clrd-font product_price">R<i class="fa fa-usd clrd-font" aria-hidden="true"></i> 45,90</p>
                        <a href="cardapio" class="btn btn-primary">Cardápio</a>
                    </div>
                </div>

                <div class="col-md-3 col-sm-4 col-xs-12 single_portfolio_text back-bella galeria">
                    <div class="portfolio_images_overlay text-center">
                        <h6 class="clrd-font">À Moda da Bella</h6>
                        <p class="clrd-font product_price">R<i class="fa fa-usd clrd-font" aria-hidden="true"></i> 49,90</p>
                        <a href="cardapio" class="btn btn-primary">Cardápio</a>
                    </div>
                </div>
            </div>
            <%@ include file = "footer.jsp" %>
        </div>
    </body>
</html>
