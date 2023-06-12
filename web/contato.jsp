<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Contato</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" crossorigin="anonymous">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css">
        <link rel="stylesheet" type="text/css" href="style/contato.css">
    </head>

    <body>
        <%@include file="WEB-INF/jspf/navbar.jspf" %>
        <br>
        <div class="container">
            <h1>Fale Conosco</h1>
            <form>
                <div class="form-group">
                    <label for="name">Nome:</label>
                    <input type="text" id="name" name="name" placeholder="Digite seu Nome:">
                </div>
                <div class="form-group">
                    <label for="email">Email:</label>
                    <input type="email" id="email" name="email" placeholder="Digite seu Email:">
                </div>
                <div class="form-group">
                    <label for="message">Texto:</label>
                    <textarea id="message" name="message" rows="5" placeholder="Digite sua Mensagem"></textarea>
                </div>
                <button onclick="MensagemEnviada()" type="submit">Enviar</button>
            </form>
        </div>
        <script>
            function MensagemEnviada() {
                alert("Mensagem enviada com sucesso!");
            }
        </script>
    </body>
    <main></main>
        <%@include file="WEB-INF/jspf/footer.jspf" %>
</html>
