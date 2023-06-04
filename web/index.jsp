<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
        <h1>Welcome to My Website</h1>
        <p>A place where you can find amazing things!</p>
    </header>
    <section class="features">
        <div class="feature">
            <img src="images/feature1.jpg" alt="Feature 1">
            <h2>Feature 1</h2>
            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
        </div>
        <div class="feature">
            <img src="images/feature2.jpg" alt="Feature 2">
            <h2>Feature 2</h2>
            <p>Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
        </div>
        <div class="feature">
            <img src="images/feature3.jpg" alt="Feature 3">
            <h2>Feature 3</h2>
            <p>Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>
        </div>
    </section>
 <footer>
      <%@include file="WEB-INF/jspf/footer.jspf" %>
 </footer>
</body>   
</html>
