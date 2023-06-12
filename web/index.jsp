<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.ArrayList"%>
<!DOCTYPE html>
<html>
    <head>
        <title>IndieTrail</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" crossorigin="anonymous">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css">
        <link rel="stylesheet" type="text/css" href="style/main.css">
    </head>
    <body>
        <%@include file="WEB-INF/jspf/navbar.jspf" %>
        <header class="header">
            <h1>Bem-vindo à IndieTrail,</h1>
            <p>Onde a paixão pelos jogos indie encontra seu caminho!</p>
        </header>

        <section class="games">
            <div class="game">
                <img src="images/stardew-valley-indie-cke.jpg" alt="stardew-valley">
                <h2>Stardew-Valley</h2>
                <div class="rating">
                    <input type="radio" id="star5" name="rating" value="5" />
                    <label for="star5" title="5 stars"></label>
                    <input type="radio" id="star4" name="rating" value="4" />
                    <label for="star4" title="4 stars"></label>
                    <input type="radio" id="star3" name="rating" value="3" />
                    <label for="star3" title="3 stars"></label>
                    <input type="radio" id="star2" name="rating" value="2" />
                    <label for="star2" title="2 stars"></label>
                    <input type="radio" id="star1" name="rating" value="1" />
                    <label for="star1" title="1 star"></label>
                </div>
                <p>Lançamento: 2016</p>
                <p>Plataformas: PC, Xbox One, PS4, Switch e Mobile</p>
                <button class="btn btn-outline-primary" type="submit">Comprar</button>
            </div>
            <div class="game">
                <img src="images/stardew-valley-indie-cke.jpg" alt="stardew-valley">
                <h2>Stardew-Valley</h2>
                <div class="rating">
                    <input type="radio" id="star5" name="rating" value="5" />
                    <label for="star5" title="5 stars"></label>
                    <input type="radio" id="star4" name="rating" value="4" />
                    <label for="star4" title="4 stars"></label>
                    <input type="radio" id="star3" name="rating" value="3" />
                    <label for="star3" title="3 stars"></label>
                    <input type="radio" id="star2" name="rating" value="2" />
                    <label for="star2" title="2 stars"></label>
                    <input type="radio" id="star1" name="rating" value="1" />
                    <label for="star1" title="1 star"></label>
                </div>
                <p>Lançamento: 2016</p>
                <p>Plataformas: PC, Xbox One, PS4, Switch e Mobile</p>
                <button class="btn btn-outline-primary" type="submit">Comprar</button>
            </div>
            <div class="game">
                <img src="images/stardew-valley-indie-cke.jpg" alt="stardew-valley">
                <h2>Stardew-Valley</h2>
                <div class="rating">
                    <input type="radio" id="star5" name="rating" value="5" />
                    <label for="star5" title="5 stars"></label>
                    <input type="radio" id="star4" name="rating" value="4" />
                    <label for="star4" title="4 stars"></label>
                    <input type="radio" id="star3" name="rating" value="3" />
                    <label for="star3" title="3 stars"></label>
                    <input type="radio" id="star2" name="rating" value="2" />
                    <label for="star2" title="2 stars"></label>
                    <input type="radio" id="star1" name="rating" value="1" />
                    <label for="star1" title="1 star"></label>
                </div>
                <p>Lançamento: 2016</p>
                <p>Plataformas: PC, Xbox One, PS4, Switch e Mobile</p>
                <button class="btn btn-outline-primary" type="submit">Comprar</button>
            </div>
        </section>
        <section class="games">
            <div class="game">
                <img src="images/stardew-valley-indie-cke.jpg" alt="stardew-valley">
                <h2>Stardew-Valley</h2>
                <div class="rating">
                    <input type="radio" id="star5" name="rating" value="5" />
                    <label for="star5" title="5 stars"></label>
                    <input type="radio" id="star4" name="rating" value="4" />
                    <label for="star4" title="4 stars"></label>
                    <input type="radio" id="star3" name="rating" value="3" />
                    <label for="star3" title="3 stars"></label>
                    <input type="radio" id="star2" name="rating" value="2" />
                    <label for="star2" title="2 stars"></label>
                    <input type="radio" id="star1" name="rating" value="1" />
                    <label for="star1" title="1 star"></label>
                </div>
                <p>Lançamento: 2016</p>
                <p>Plataformas: PC, Xbox One, PS4, Switch e Mobile</p>
                <button class="btn btn-outline-primary" type="submit">Comprar</button>
            </div>
            <div class="game">
                <img src="images/stardew-valley-indie-cke.jpg" alt="stardew-valley">
                <h2>Stardew-Valley</h2>
                <div class="rating">
                    <input type="radio" id="star5" name="rating" value="5" />
                    <label for="star5" title="5 stars"></label>
                    <input type="radio" id="star4" name="rating" value="4" />
                    <label for="star4" title="4 stars"></label>
                    <input type="radio" id="star3" name="rating" value="3" />
                    <label for="star3" title="3 stars"></label>
                    <input type="radio" id="star2" name="rating" value="2" />
                    <label for="star2" title="2 stars"></label>
                    <input type="radio" id="star1" name="rating" value="1" />
                    <label for="star1" title="1 star"></label>
                </div>
                <p>Lançamento: 2016</p>
                <p>Plataformas: PC, Xbox One, PS4, Switch e Mobile</p>
                <button class="btn btn-outline-primary" type="submit">Comprar</button>
            </div>
            <div class="game">
                <img src="images/stardew-valley-indie-cke.jpg" alt="stardew-valley">
                <h2>Stardew-Valley</h2>
                <div class="rating">
                    <input type="radio" id="star5" name="rating" value="5" />
                    <label for="star5" title="5 stars"></label>
                    <input type="radio" id="star4" name="rating" value="4" />
                    <label for="star4" title="4 stars"></label>
                    <input type="radio" id="star3" name="rating" value="3" />
                    <label for="star3" title="3 stars"></label>
                    <input type="radio" id="star2" name="rating" value="2" />
                    <label for="star2" title="2 stars"></label>
                    <input type="radio" id="star1" name="rating" value="1" />
                    <label for="star1" title="1 star"></label>
                </div>
                <p>Lançamento: 2016</p>
                <p>Plataformas: PC, Xbox One, PS4, Switch e Mobile</p>
                <button class="btn btn-outline-primary" type="submit">Comprar</button>
            </div>
        </section>
            <%@include file="WEB-INF/jspf/footer.jspf" %>      
    </body>   
</html>
