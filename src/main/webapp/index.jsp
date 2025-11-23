<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page session="true" %>
<!DOCTYPE html>
<html>
<head>
    <title>Dashboard des Voitures</title>
    <link rel="stylesheet" type="text/css" href="css/style.css">
</head>
<body>

<%
    String user = (String) session.getAttribute("user");
    boolean loggedIn = (user != null);
%>

<% if (!loggedIn) { %>
    <!-- Page de connexion -->
    <div class="login-container">
        <h2>Connexion</h2>
        <form action="login" method="post">
            <input type="text" name="username" placeholder="Identifiant" required><br>
            <input type="password" name="password" placeholder="Mot de passe" required><br>
            <button type="submit">Se connecter</button>
        </form>
        <p>Pas encore inscrit ? <a href="register.jsp">Inscrivez-vous</a></p>
    </div>
<% } else { %>
    <!-- Dashboard -->
    <div class="dashboard">
        <div class="header">
            <img src="images/logo.png" alt="Logo" class="logo">
            <h1>Bienvenue <%= user %> dans le Dashboard des Voitures !</h1>
        </div>

        <div class="cars">
            <img src="images/car1.jpg" alt="Car 1" class="car">
            <img src="images/car2.jpg" alt="Car 2" class="car">
            <img src="images/car3.jpg" alt="Car 3" class="car">
        </div>
    </div>
<% } %>

</body>
</html>

