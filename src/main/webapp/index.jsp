<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <title>Connexion</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>
<div class="container">
    <!-- Logo en haut de la page -->
    <img src="images/logo.png" alt="Logo" style="width:100px; margin-bottom:20px;">

    <h1>Connexion</h1>
    <form action="login" method="post">
        <input type="text" name="username" placeholder="Nom d'utilisateur" required>
        <input type="password" name="password" placeholder="Mot de passe" required>
        <button type="submit">Se connecter</button>
        <% if (request.getParameter("error") != null) { %>
            <p class="error">Identifiant ou mot de passe incorrect</p>
        <% } %>
    </form>

    <p>Pas encore inscrit ? <a href="signup.html">Inscrivez-vous</a></p>
</div>
</body>
</html>

