<%@ page contentType="text/html;charset=UTF-8" %>
<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <title>Inscription - AutoMarket</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background: linear-gradient(135deg, #16213e 0%, #1a1a2e 100%);
            min-height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
            padding: 40px;
            color: white;
        }

        .register-box {
            background: #fff;
            color: #1a1a2e;
            padding: 40px;
            border-radius: 20px;
            width: 450px;
            box-shadow: 0 10px 40px rgba(0,0,0,0.4);
        }

        h2 {
            text-align: center;
            font-size: 2.2rem;
            margin-bottom: 25px;
            color: #16213e;
        }

        .form-group {
            margin-bottom: 20px;
        }

        label {
            font-weight: bold;
            display: block;
            margin-bottom: 8px;
        }

        input {
            width: 100%;
            padding: 14px;
            border: 2px solid #ddd;
            border-radius: 10px;
            font-size: 1rem;
            background: #f8f9fa;
        }

        input:focus {
            border-color: #ffd700;
            background: white;
            outline: none;
        }

        .submit-btn {
            margin-top: 20px;
            width: 100%;
            background: linear-gradient(135deg, #16213e, #1a1a2e);
            padding: 15px;
            border-radius: 12px;
            border: none;
            color: white;
            font-size: 1.1rem;
            font-weight: 800;
            cursor: pointer;
            transition: 0.3s;
        }

        .submit-btn:hover {
            transform: translateY(-3px);
        }

        .bottom-links {
            text-align: center;
            margin-top: 20px;
        }

        a {
            color: #16213e;
            font-weight: bold;
            text-decoration: none;
        }

        a:hover {
            color: #ffd700;
        }
    </style>
</head>
<body>

    <div class="register-box">
        <h2>Créer un compte</h2>

        <form action="RegisterServlet" method="post">
            <div class="form-group">
                <label>Nom complet</label>
                <input type="text" name="fullname" required>
            </div>

            <div class="form-group">
                <label>Adresse email</label>
                <input type="email" name="email" required>
            </div>

            <div class="form-group">
                <label>Mot de passe</label>
                <input type="password" name="password" required>
            </div>

            <button class="submit-btn" type="submit">Créer mon compte</button>
        </form>

        <div class="bottom-links">
            <p>Déjà un compte ? <a href="login.jsp">Se connecter</a></p>
            <p><a href="index.jsp">← Retour à l'accueil</a></p>
        </div>
    </div>

</body>
</html>
