<%@ page contentType="text/html;charset=UTF-8" %>
<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>AutoMarket - Votre Plateforme Auto & Moto</title>
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            font-family: 'Arial', sans-serif;
            background: #ffffff;
            overflow-x: hidden;
        }

        /* Full-screen car showcase */
        .hero-section {
            position: relative;
            height: 100vh;
            background: linear-gradient(135deg, #1a1a2e 0%, #16213e 100%);
            overflow: hidden;
        }

        /* Animated road lines */
        .road {
            position: absolute;
            bottom: 0;
            left: 0;
            width: 100%;
            height: 300px;
            background: linear-gradient(to top, rgba(255,255,255,0.1) 0%, transparent 100%);
        }

        .road-line {
            position: absolute;
            width: 10px;
            height: 100px;
            background: white;
            opacity: 0.3;
            animation: roadMove 2s linear infinite;
        }

        .road-line:nth-child(1) { left: 20%; animation-delay: 0s; }
        .road-line:nth-child(2) { left: 40%; animation-delay: 0.4s; }
        .road-line:nth-child(3) { left: 60%; animation-delay: 0.8s; }
        .road-line:nth-child(4) { left: 80%; animation-delay: 1.2s; }

        @keyframes roadMove {
            0% {
                bottom: 100%;
                opacity: 0;
            }
            50% {
                opacity: 0.3;
            }
            100% {
                bottom: -100px;
                opacity: 0;
            }
        }

        /* Giant BMW car */
        .car-showcase {
            position: absolute;
            top: 50%;
            left: 50%;
            transform: translate(-50%, -50%);
            font-size: 25rem;
            animation: carFloat 4s ease-in-out infinite;
            filter: drop-shadow(0 30px 60px rgba(0, 0, 0, 0.5));
            z-index: 5;
        }

        @keyframes carFloat {
            0%, 100% {
                transform: translate(-50%, -50%) translateY(0px);
            }
            50% {
                transform: translate(-50%, -50%) translateY(-20px);
            }
        }

        /* Headlight effect */
        .headlights {
            position: absolute;
            top: 50%;
            left: 50%;
            transform: translate(-50%, -50%);
            width: 800px;
            height: 800px;
            background: radial-gradient(circle, rgba(255, 215, 0, 0.3) 0%, transparent 70%);
            animation: pulse 2s ease-in-out infinite;
            z-index: 4;
        }

        @keyframes pulse {
            0%, 100% {
                opacity: 0.5;
                transform: translate(-50%, -50%) scale(1);
            }
            50% {
                opacity: 0.8;
                transform: translate(-50%, -50%) scale(1.1);
            }
        }

        /* Navigation */
        .navbar {
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            padding: 30px 60px;
            display: flex;
            justify-content: space-between;
            align-items: center;
            z-index: 100;
            background: rgba(0, 0, 0, 0.3);
            backdrop-filter: blur(10px);
        }

        .brand {
            display: flex;
            align-items: center;
            gap: 15px;
            color: white;
            font-size: 1.8rem;
            font-weight: 900;
        }

        .brand-icon {
            font-size: 2.5rem;
        }

        .nav-links {
            display: flex;
            gap: 40px;
            list-style: none;
        }

        .nav-links a {
            color: white;
            text-decoration: none;
            font-weight: 600;
            font-size: 1.1rem;
            transition: all 0.3s;
            position: relative;
        }

        .nav-links a::before {
            content: '';
            position: absolute;
            bottom: -5px;
            left: 50%;
            width: 0;
            height: 3px;
            background: #ffd700;
            transform: translateX(-50%);
            transition: width 0.3s;
        }

        .nav-links a:hover::before {
            width: 100%;
        }

        /* Content overlay */
        .hero-content {
            position: absolute;
            bottom: 100px;
            left: 0;
            width: 100%;
            text-align: center;
            z-index: 10;
            padding: 0 20px;
        }

        .hero-title {
            font-size: 4.5rem;
            font-weight: 900;
            color: white;
            margin-bottom: 20px;
            text-shadow: 0 10px 30px rgba(0, 0, 0, 0.5);
            letter-spacing: -2px;
        }

        .hero-subtitle {
            font-size: 1.8rem;
            color: rgba(255, 255, 255, 0.9);
            margin-bottom: 50px;
            font-weight: 300;
        }

        .cta-buttons {
            display: flex;
            gap: 25px;
            justify-content: center;
            flex-wrap: wrap;
        }

        .btn {
            padding: 20px 50px;
            font-size: 1.2rem;
            font-weight: 700;
            text-decoration: none;
            border-radius: 50px;
            transition: all 0.4s ease;
            display: inline-block;
            text-transform: uppercase;
            letter-spacing: 1px;
        }

        .btn-gold {
            background: linear-gradient(135deg, #ffd700, #ffed4e);
            color: #1a1a2e;
            box-shadow: 0 15px 40px rgba(255, 215, 0, 0.4);
        }

        .btn-gold:hover {
            transform: translateY(-5px);
            box-shadow: 0 20px 50px rgba(255, 215, 0, 0.6);
        }

        .btn-outline {
            background: transparent;
            color: white;
            border: 3px solid white;
        }

        .btn-outline:hover {
            background: white;
            color: #1a1a2e;
            transform: translateY(-5px);
        }

        /* Features Section */
        .features-section {
            padding: 100px 60px;
            background: #f8f9fa;
        }

        .section-title {
            text-align: center;
            font-size: 3.5rem;
            font-weight: 900;
            color: #1a1a2e;
            margin-bottom: 80px;
        }

        .features-grid {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(300px, 1fr));
            gap: 40px;
            max-width: 1400px;
            margin: 0 auto;
        }

        .feature-box {
            background: white;
            padding: 50px 40px;
            border-radius: 20px;
            box-shadow: 0 20px 60px rgba(0, 0, 0, 0.1);
            transition: all 0.4s ease;
            text-align: center;
            position: relative;
            overflow: hidden;
        }

        .feature-box::before {
            content: '';
            position: absolute;
            top: 0;
            left: -100%;
            width: 100%;
            height: 100%;
            background: linear-gradient(90deg, transparent, rgba(255, 215, 0, 0.2), transparent);
            transition: left 0.6s;
        }

        .feature-box:hover::before {
            left: 100%;
        }

        .feature-box:hover {
            transform: translateY(-15px);
            box-shadow: 0 30px 80px rgba(0, 0, 0, 0.15);
        }

        .feature-icon {
            font-size: 5rem;
            margin-bottom: 25px;
            display: inline-block;
        }

        .feature-title {
            font-size: 1.8rem;
            font-weight: 800;
            color: #1a1a2e;
            margin-bottom: 15px;
        }

        .feature-desc {
            font-size: 1.1rem;
            color: #666;
            line-height: 1.7;
        }

        /* Luxury Stats */
        .stats-section {
            padding: 80px 60px;
            background: linear-gradient(135deg, #1a1a2e 0%, #16213e 100%);
            text-align: center;
        }

        .stats-grid {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(250px, 1fr));
            gap: 50px;
            max-width: 1200px;
            margin: 0 auto;
        }

        .stat-box {
            padding: 40px;
            border: 2px solid rgba(255, 215, 0, 0.3);
            border-radius: 20px;
            transition: all 0.4s ease;
        }

        .stat-box:hover {
            border-color: #ffd700;
            transform: scale(1.05);
            background: rgba(255, 215, 0, 0.1);
        }

        .stat-number {
            font-size: 4rem;
            font-weight: 900;
            color: #ffd700;
            margin-bottom: 10px;
        }

        .stat-label {
            font-size: 1.2rem;
            color: white;
            text-transform: uppercase;
            letter-spacing: 2px;
        }

        /* Car models showcase */
        .models-section {
            padding: 100px 60px;
            background: white;
        }

        .models-grid {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(350px, 1fr));
            gap: 40px;
            max-width: 1400px;
            margin: 0 auto;
        }

        .model-card {
            background: linear-gradient(135deg, #1a1a2e 0%, #16213e 100%);
            border-radius: 25px;
            padding: 60px 40px;
            text-align: center;
            transition: all 0.4s ease;
            position: relative;
            overflow: hidden;
        }

        .model-card::after {
            content: '';
            position: absolute;
            top: -50%;
            right: -50%;
            width: 200%;
            height: 200%;
            background: radial-gradient(circle, rgba(255, 215, 0, 0.1) 0%, transparent 70%);
            animation: rotate 10s linear infinite;
        }

        @keyframes rotate {
            from { transform: rotate(0deg); }
            to { transform: rotate(360deg); }
        }

        .model-card:hover {
            transform: translateY(-10px);
            box-shadow: 0 30px 60px rgba(0, 0, 0, 0.3);
        }

        .model-icon {
            font-size: 6rem;
            margin-bottom: 20px;
            position: relative;
            z-index: 1;
        }

        .model-name {
            font-size: 2rem;
            font-weight: 900;
            color: white;
            margin-bottom: 15px;
            position: relative;
            z-index: 1;
        }

        .model-desc {
            font-size: 1.1rem;
            color: rgba(255, 255, 255, 0.8);
            margin-bottom: 30px;
            position: relative;
            z-index: 1;
        }

        .model-price {
            font-size: 2.5rem;
            font-weight: 900;
            color: #ffd700;
            position: relative;
            z-index: 1;
        }

        @media (max-width: 968px) {
            .navbar {
                flex-direction: column;
                gap: 20px;
                padding: 20px;
            }

            .nav-links {
                flex-direction: column;
                gap: 15px;
                text-align: center;
            }

            .car-showcase {
                font-size: 12rem;
            }

            .hero-title {
                font-size: 2.5rem;
            }

            .hero-subtitle {
                font-size: 1.2rem;
            }

            .section-title {
                font-size: 2.5rem;
            }

            .features-section,
            .stats-section,
            .models-section {
                padding: 60px 30px;
            }

            .features-grid,
            .models-grid {
                grid-template-columns: 1fr;
            }
        }
    </style>
</head>
<body>
    <section class="hero-section">
        <div class="road">
            <div class="road-line"></div>
            <div class="road-line"></div>
            <div class="road-line"></div>
            <div class="road-line"></div>
        </div>

        <div class="headlights"></div>
        <div class="car-showcase">🚗</div>

        <nav class="navbar">
            <div class="brand">
                <span class="brand-icon">🏁</span>
                <span>AutoMarket</span>
            </div>
            <ul class="nav-links">
                <li><a href="#vehicules">Véhicules</a></li>
                <li><a href="#services">Services</a></li>
                <li><a href="#contact">Contact</a></li>
            </ul>
        </nav>

        <div class="hero-content">
            <h1 class="hero-title">Conduisez l'Excellence</h1>
            <p class="hero-subtitle">Découvrez les véhicules les plus prestigieux du marché</p>
            <div class="cta-buttons">
                <a href="login.jsp" class="btn btn-gold">Connexion</a>
                <a href="register.jsp" class="btn btn-outline">Inscription</a>
            </div>
        </div>
    </section>

    <section class="features-section">
        <h2 class="section-title">Pourquoi AutoMarket ?</h2>
        <div class="features-grid">
            <div class="feature-box">
                <div class="feature-icon">🏎️</div>
                <h3 class="feature-title">Collection Exclusive</h3>
                <p class="feature-desc">Des véhicules premium soigneusement sélectionnés pour vous</p>
            </div>
            <div class="feature-box">
                <div class="feature-icon">✨</div>
                <h3 class="feature-title">Qualité Garantie</h3>
                <p class="feature-desc">Chaque véhicule est inspecté et certifié par nos experts</p>
            </div>
            <div class="feature-box">
                <div class="feature-icon">🔒</div>
                <h3 class="feature-title">Sécurité Maximale</h3>
                <p class="feature-desc">Transactions sécurisées et protection complète de vos données</p>
            </div>
        </div>
    </section>

    <section class="stats-section">
        <div class="stats-grid">
            <div class="stat-box">
                <div class="stat-number">25K+</div>
                <div class="stat-label">Véhicules</div>
            </div>
            <div class="stat-box">
                <div class="stat-number">15K+</div>
                <div class="stat-label">Clients Satisfaits</div>
            </div>
            <div class="stat-box">
                <div class="stat-number">500+</div>
                <div class="stat-label">Concessionnaires</div>
            </div>
            <div class="stat-box">
                <div class="stat-number">24/7</div>
                <div class="stat-label">Support Premium</div>
            </div>
        </div>
    </section>

    <section class="models-section">
        <h2 class="section-title">Nos Collections</h2>
        <div class="models-grid">
            <div class="model-card">
                <div class="model-icon">🚘</div>
                <h3 class="model-name">Berlines de Luxe</h3>
                <p class="model-desc">Élégance et performance réunies</p>
                <div class="model-price">À partir de 45K€</div>
            </div>
            <div class="model-card">
                <div class="model-icon">🏍️</div>
                <h3 class="model-name">Motos Sportives</h3>
                <p class="model-desc">Puissance et sensations garanties</p>
                <div class="model-price">À partir de 12K€</div>
            </div>
            <div class="model-card">
                <div class="model-icon">🚙</div>
                <h3 class="model-name">SUV Premium</h3>
                <p class="model-desc">Confort et robustesse exceptionnels</p>
                <div class="model-price">À partir de 55K€</div>
            </div>
        </div>
    </section>
</body>
</html>
