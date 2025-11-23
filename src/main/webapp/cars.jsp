<%@ page contentType="text/html;charset=UTF-8" %>
<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <title>Annonces - AutoMarket</title>

    <style>
        body {
            background: #f5f5f5;
            font-family: Arial, sans-serif;
            padding: 40px;
        }

        h1 {
            text-align: center;
            font-size: 3rem;
            font-weight: 900;
            color: #16213e;
            margin-bottom: 40px;
        }

        .car-grid {
            display: grid;
            grid-template-columns: repeat(3, 1fr);
            gap: 30px;
        }

        .car-card {
            background: white;
            padding: 20px;
            border-radius: 15px;
            box-shadow: 0 10px 30px rgba(0,0,0,0.1);
            transition: 0.3s;
        }

        .car-card:hover {
            transform: translateY(-5px);
        }

        .car-img {
            font-size: 5rem;
            text-align: center;
        }

        .car-title {
            font-weight: bold;
            font-size: 1.3rem;
            margin-top: 15px;
        }

        .car-price {
            color: #16213e;
            margin-top: 10px;
            font-size: 1.2rem;
            font-weight: bold;
        }

        .back-link {
            display: block;
            text-align: center;
            margin-top: 40px;
            font-weight: bold;
            color: #16213e;
            text-decoration: none;
            font-size: 1.1rem;
        }

        .back-link:hover {
            color: #ffd700;
        }
    </style>

</head>
<body>

<h1>🚗 Nos véhicules disponibles</h1>

<div class="car-grid">

    <div class="car-card">
        <div class="car-img">🚘</div>
        <div class="car-title">BMW M4</div>
        <div class="car-price">220 000 TND</div>
    </div>

    <div class="car-card">
        <div class="car-img">🏎️</div>
        <div class="car-title">Porsche 911</div>
        <div class="car-price">550 000 TND</div>
    </div>

    <div class="car-card">
        <div class="car-img">🚙</div>
        <div class="car-title">Range Rover Sport</div>
        <div class="car-price">390 000 TND</div>
    </div>

    <div class="car-card">
        <div class="car-img">🛵</div>
        <div class="car-title">Vespa Primavera</div>
        <div class="car-price">12 000 TND</div>
    </div>

    <div class="car-card">
        <div class="car-img">🏍️</div>
        <div class="car-title">Yamaha R6</div>
        <div class="car-price">35 000 TND</div>
    </div>

    <div class="car-card">
        <div class="car-img">🚗</div>
        <div class="car-title">Mercedes Classe C</div>
        <div class="car-price">180 000 TND</div>
    </div>

</div>

<a href="index.jsp" class="back-link">← Retour à l'accueil</a>

</body>
</html>
