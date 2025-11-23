<%@ page contentType="text/html;charset=UTF-8" %>
<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Connexion - AutoMarket</title>
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            font-family: 'Arial', sans-serif;
            background: linear-gradient(135deg, #1a1a2e 0%, #16213e 100%);
            min-height: 100vh;
            display: flex;
            overflow: hidden;
        }

        /* Split design - left side with car */
        .left-panel {
            flex: 1;
            background: linear-gradient(135deg, #0f0f23 0%, #1a1a2e 100%);
            display: flex;
            flex-direction: column;
            justify-content: center;
            align-items: center;
            padding: 60px;
            position: relative;
            overflow: hidden;
        }

        /* Animated road effect */
        .road-lines {
            position: absolute;
            width: 100%;
            height: 100%;
            top: 0;
            left: 0;
            overflow: hidden;
        }

        .road-line {
            position: absolute;
            width: 4px;
            height: 80px;
            background: rgba(255, 215, 0, 0.3);
            left: 50%;
            animation: roadMove 2s linear infinite;
        }

        .road-line:nth-child(1) { animation-delay: 0s; }
        .road-line:nth-child(2) { animation-delay: 0.4s; }
        .road-line:nth-child(3) { animation-delay: 0.8s; }
        .road-line:nth-child(4) { animation-delay: 1.2s; }
        .road-line:nth-child(5) { animation-delay: 1.6s; }

        @keyframes roadMove {
            0% {
                top: -100px;
                opacity: 0;
            }
            20% {
                opacity: 0.6;
            }
            80% {
                opacity: 0.6;
            }
            100% {
                top: 100%;
                opacity: 0;
            }
        }

        .car-display {
            position: relative;
            z-index: 5;
            text-align: center;
        }

        .mega-car {
            font-size: 18rem;
            animation: carHover 3s ease-in-out infinite;
            filter: drop-shadow(0 30px 60px rgba(255, 215, 0, 0.4));
        }

        @keyframes carHover {
            0%, 100% {
                transform: translateY(0) scale(1);
            }
            50% {
                transform: translateY(-20px) scale(1.05);
            }
        }

        .car-glow {
            position: absolute;
            top: 50%;
            left: 50%;
            transform: translate(-50%, -50%);
            width: 500px;
            height: 500px;
            background: radial-gradient(circle, rgba(255, 215, 0, 0.3), transparent 70%);
            animation: pulse 2s ease-in-out infinite;
        }

        @keyframes pulse {
            0%, 100% {
                transform: translate(-50%, -50%) scale(1);
                opacity: 0.5;
            }
            50% {
                transform: translate(-50%, -50%) scale(1.2);
                opacity: 0.8;
            }
        }

        .welcome-text {
            margin-top: 40px;
            text-align: center;
            position: relative;
            z-index: 5;
        }

        .welcome-title {
            font-size: 3rem;
            font-weight: 900;
            color: #ffd700;
            margin-bottom: 15px;
            text-shadow: 0 5px 20px rgba(255, 215, 0, 0.5);
        }

        .welcome-subtitle {
            font-size: 1.2rem;
            color: rgba(255, 255, 255, 0.8);
            line-height: 1.6;
            max-width: 500px;
        }

        .features-list {
            margin-top: 50px;
            display: flex;
            gap: 30px;
            position: relative;
            z-index: 5;
        }

        .feature-item {
            text-align: center;
        }

        .feature-icon {
            font-size: 2.5rem;
            margin-bottom: 10px;
        }

        .feature-label {
            font-size: 0.9rem;
            color: rgba(255, 255, 255, 0.7);
            font-weight: 600;
        }

        /* Right panel - login form */
        .right-panel {
            flex: 1;
            background: white;
            display: flex;
            justify-content: center;
            align-items: center;
            padding: 60px;
        }

        .login-box {
            width: 100%;
            max-width: 450px;
        }

        .logo-section {
            text-align: center;
            margin-bottom: 50px;
        }

        .logo {
            display: inline-flex;
            align-items: center;
            gap: 12px;
            font-size: 2rem;
            font-weight: 900;
            color: #1a1a2e;
            margin-bottom: 10px;
        }

        .logo-icon {
            font-size: 2.5rem;
        }

        .page-title {
            font-size: 2.5rem;
            font-weight: 900;
            color: #1a1a2e;
            margin-bottom: 10px;
        }

        .page-subtitle {
            font-size: 1rem;
            color: #666;
        }

        /* Error message */
        .error-box {
            background: #fee;
            border-left: 4px solid #e33;
            color: #c00;
            padding: 15px 20px;
            border-radius: 8px;
            margin-bottom: 30px;
            font-weight: 600;
            display: flex;
            align-items: center;
            gap: 10px;
            animation: slideInRight 0.5s ease;
        }

        @keyframes slideInRight {
            from {
                transform: translateX(20px);
                opacity: 0;
            }
            to {
                transform: translateX(0);
                opacity: 1;
            }
        }

        /* Form elements */
        .form-group {
            margin-bottom: 25px;
        }

        .form-label {
            display: block;
            color: #333;
            font-weight: 700;
            margin-bottom: 10px;
            font-size: 0.95rem;
        }

        .input-container {
            position: relative;
        }

        .input-icon {
            position: absolute;
            left: 18px;
            top: 50%;
            transform: translateY(-50%);
            font-size: 1.3rem;
            color: #999;
        }

        input[type="email"],
        input[type="password"] {
            width: 100%;
            padding: 16px 20px 16px 55px;
            border: 2px solid #e0e0e0;
            border-radius: 12px;
            font-size: 1rem;
            transition: all 0.3s ease;
            background: #f8f9fa;
        }

        input[type="email"]:focus,
        input[type="password"]:focus {
            outline: none;
            border-color: #ffd700;
            background: white;
            box-shadow: 0 5px 20px rgba(255, 215, 0, 0.2);
        }

        .form-footer {
            display: flex;
            justify-content: space-between;
            align-items: center;
            margin-top: 12px;
        }

        .remember-me {
            display: flex;
            align-items: center;
            gap: 8px;
            font-size: 0.9rem;
            color: #666;
        }

        .remember-me input[type="checkbox"] {
            width: 18px;
            height: 18px;
            cursor: pointer;
        }

        .forgot-link {
            color: #ffd700;
            text-decoration: none;
            font-weight: 600;
            font-size: 0.9rem;
            transition: color 0.3s;
        }

        .forgot-link:hover {
            color: #ffed4e;
        }

        .submit-btn {
            width: 100%;
            padding: 18px;
            background: linear-gradient(135deg, #1a1a2e 0%, #16213e 100%);
            border: none;
            border-radius: 12px;
            color: white;
            font-size: 1.1rem;
            font-weight: 800;
            cursor: pointer;
            transition: all 0.3s ease;
            text-transform: uppercase;
            letter-spacing: 1px;
            margin-top: 20px;
            box-shadow: 0 10px 30px rgba(26, 26, 46, 0.3);
        }

        .submit-btn:hover {
            transform: translateY(-3px);
            box-shadow: 0 15px 40px rgba(26, 26, 46, 0.4);
        }

        .submit-btn:active {
            transform: translateY(-1px);
        }

        /* Divider */
        .divider {
            display: flex;
            align-items: center;
            gap: 15px;
            margin: 35px 0;
            color: #999;
            font-size: 0.9rem;
        }

        .divider::before,
        .divider::after {
            content: '';
            flex: 1;
            height: 1px;
            background: #e0e0e0;
        }

        /* Social buttons */
        .social-login {
            display: grid;
            grid-template-columns: repeat(3, 1fr);
            gap: 15px;
            margin-bottom: 35px;
        }

        .social-btn {
            padding: 14px;
            border: 2px solid #e0e0e0;
            border-radius: 12px;
            background: white;
            cursor: pointer;
            transition: all 0.3s ease;
            font-size: 1.5rem;
            display: flex;
            align-items: center;
            justify-content: center;
        }

        .social-btn:hover {
            border-color: #ffd700;
            background: #fffbf0;
            transform: translateY(-2px);
            box-shadow: 0 5px 15px rgba(0, 0, 0, 0.1);
        }

        /* Bottom links */
        .bottom-links {
            text-align: center;
            margin-top: 30px;
            padding-top: 30px;
            border-top: 1px solid #e0e0e0;
        }

        .signup-text {
            color: #666;
            font-size: 0.95rem;
        }

        .signup-link {
            color: #1a1a2e;
            font-weight: 700;
            text-decoration: none;
            transition: color 0.3s;
        }

        .signup-link:hover {
            color: #ffd700;
        }

        .home-link {
            display: inline-block;
            margin-top: 15px;
            color: #999;
            text-decoration: none;
            font-size: 0.9rem;
            transition: color 0.3s;
        }

        .home-link:hover {
            color: #1a1a2e;
        }

        @media (max-width: 968px) {
            body {
                flex-direction: column;
            }

            .left-panel {
                min-height: 40vh;
                padding: 40px 20px;
            }

            .mega-car {
                font-size: 10rem;
            }

            .welcome-title {
                font-size: 2rem;
            }

            .welcome-subtitle {
                font-size: 1rem;
            }

            .features-list {
                gap: 20px;
            }

            .right-panel {
                padding: 40px 20px;
            }

            .page-title {
                font-size: 2rem;
            }
        }
    </style>
</head>
<body>
    <div class="left-panel">
        <div class="road-lines">
            <div class="road-line"></div>
            <div class="road-line"></div>
            <div class="road-line"></div>
            <div class="road-line"></div>
            <div class="road-line"></div>
        </div>
        
        <div class="car-glow"></div>
        
        <div class="car-display">
            <div class="mega-car">🚗</div>
        </div>

        <div class="welcome-text">
            <h1 class="welcome-title">AutoMarket</h1>
            <p class="welcome-subtitle">
                Rejoignez la plateforme automobile la plus exclusive. 
                Connectez-vous pour découvrir des milliers de véhicules premium.
            </p>
        </div>

        <div class="features-list">
            <div class="feature-item">
                <div class="feature-icon">⚡</div>
                <div class="feature-label">Rapide</div>
            </div>
            <div class="feature-item">
                <div class="feature-icon">🔒</div>
                <div class="feature-label">Sécurisé</div>
            </div>
            <div class="feature-item">
                <div class="feature-icon">✨</div>
                <div class="feature-label">Premium</div>
            </div>
        </div>
    </div>

    <div class="right-panel">
        <div class="login-box">
            <div class="logo-section">
                <div class="logo">
                    <span class="logo-icon">🏁</span>
                    <span>AutoMarket</span>
                </div>
            </div>

            <h2 class="page-title">Connexion</h2>
            <p class="page-subtitle">Accédez à votre espace personnel</p>

            <% 
                String error = request.getParameter("error");
                if ("1".equals(error)) {
            %>
                <div class="error-box" style="margin-top: 30px;">
                    <span>⚠️</span>
                    <span>Email ou mot de passe incorrect</span>
                </div>
            <% 
                } 
            %>

            <form action="login" method="post" style="margin-top: 40px;">
                <div class="form-group">
                    <label class="form-label">Adresse email</label>
                    <div class="input-container">
                        <span class="input-icon">📧</span>
                        <input type="email" name="email" placeholder="votre@email.com" required>
                    </div>
                </div>

                <div class="form-group">
                    <label class="form-label">Mot de passe</label>
                    <div class="input-container">
                        <span class="input-icon">🔒</span>
                        <input type="password" name="password" placeholder="Votre mot de passe" required>
                    </div>
                    <div class="form-footer">
                        <label class="remember-me">
                            <input type="checkbox" name="remember">
                            <span>Se souvenir de moi</span>
                        </label>
                        <a href="#" class="forgot-link">Mot de passe oublié ?</a>
                    </div>
                </div>

                <button type="submit" class="submit-btn">Se connecter</button>
            </form>

            <div class="divider">ou continuer avec</div>

            <div class="social-login">
                <button class="social-btn" type="button">📱</button>
                <button class="social-btn" type="button">📘</button>
                <button class="social-btn" type="button">🍎</button>
            </div>

            <div class="bottom-links">
                <p class="signup-text">
                    Nouveau sur AutoMarket ? 
                    <a href="register.jsp" class="signup-link">Créer un compte</a>
                </p>
                <a href="index.jsp" class="home-link">← Retour à l'accueil</a>
            </div>
        </div>
    </div>
</body>
</html> 
