<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Inscription réussie - AutoMarket</title>
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
            justify-content: center;
            align-items: center;
            padding: 20px;
            position: relative;
            overflow: hidden;
        }

        /* Animated background elements */
        .bg-circle {
            position: absolute;
            border-radius: 50%;
            background: rgba(255, 215, 0, 0.1);
            animation: float 6s ease-in-out infinite;
        }

        .bg-circle:nth-child(1) {
            width: 300px;
            height: 300px;
            top: -100px;
            left: -100px;
            animation-delay: 0s;
        }

        .bg-circle:nth-child(2) {
            width: 200px;
            height: 200px;
            bottom: -80px;
            right: -80px;
            animation-delay: 2s;
        }

        @keyframes float {
            0%, 100% {
                transform: translate(0, 0) scale(1);
            }
            50% {
                transform: translate(20px, -20px) scale(1.1);
            }
        }

        .success-container {
            position: relative;
            z-index: 1;
            background: rgba(255, 255, 255, 0.1);
            backdrop-filter: blur(20px);
            border: 1px solid rgba(255, 255, 255, 0.2);
            border-radius: 30px;
            padding: 60px 50px;
            max-width: 600px;
            width: 100%;
            text-align: center;
            box-shadow: 0 30px 80px rgba(0, 0, 0, 0.5);
            animation: scaleIn 0.6s cubic-bezier(0.68, -0.55, 0.265, 1.55);
        }

        @keyframes scaleIn {
            from {
                opacity: 0;
                transform: scale(0.8);
            }
            to {
                opacity: 1;
                transform: scale(1);
            }
        }

        /* Success checkmark animation */
        .success-icon {
            width: 120px;
            height: 120px;
            margin: 0 auto 30px;
            background: linear-gradient(135deg, #10b981, #34d399);
            border-radius: 50%;
            display: flex;
            align-items: center;
            justify-content: center;
            font-size: 4rem;
            box-shadow: 0 20px 40px rgba(16, 185, 129, 0.4);
            animation: checkmarkBounce 0.8s ease-out;
        }

        @keyframes checkmarkBounce {
            0% {
                transform: scale(0) rotate(-180deg);
                opacity: 0;
            }
            60% {
                transform: scale(1.2) rotate(10deg);
            }
            100% {
                transform: scale(1) rotate(0deg);
                opacity: 1;
            }
        }

        .success-title {
            font-size: 2.8rem;
            font-weight: 900;
            color: white;
            margin-bottom: 15px;
            animation: fadeInUp 0.8s ease-out 0.2s both;
        }

        .success-message {
            font-size: 1.2rem;
            color: rgba(255, 255, 255, 0.8);
            margin-bottom: 40px;
            line-height: 1.6;
            animation: fadeInUp 0.8s ease-out 0.4s both;
        }

        @keyframes fadeInUp {
            from {
                opacity: 0;
                transform: translateY(20px);
            }
            to {
                opacity: 1;
                transform: translateY(0);
            }
        }

        /* Credentials box */
        .credentials-box {
            background: rgba(255, 255, 255, 0.08);
            border: 2px solid rgba(255, 215, 0, 0.3);
            border-radius: 20px;
            padding: 30px;
            margin-bottom: 40px;
            animation: fadeInUp 0.8s ease-out 0.6s both;
        }

        .credentials-title {
            font-size: 1.1rem;
            color: #ffd700;
            margin-bottom: 20px;
            font-weight: 700;
            text-transform: uppercase;
            letter-spacing: 1px;
        }

        .credential-item {
            display: flex;
            justify-content: space-between;
            align-items: center;
            padding: 15px 20px;
            background: rgba(255, 255, 255, 0.05);
            border-radius: 12px;
            margin-bottom: 15px;
            transition: all 0.3s ease;
        }

        .credential-item:last-child {
            margin-bottom: 0;
        }

        .credential-item:hover {
            background: rgba(255, 215, 0, 0.1);
            transform: translateX(5px);
        }

        .credential-label {
            font-size: 1rem;
            color: rgba(255, 255, 255, 0.7);
            font-weight: 600;
        }

        .credential-value {
            font-size: 1.1rem;
            color: white;
            font-weight: 800;
            font-family: 'Courier New', monospace;
            display: flex;
            align-items: center;
            gap: 10px;
        }

        .copy-btn {
            background: rgba(255, 215, 0, 0.2);
            border: 1px solid rgba(255, 215, 0, 0.4);
            color: #ffd700;
            padding: 5px 12px;
            border-radius: 8px;
            cursor: pointer;
            font-size: 0.85rem;
            transition: all 0.3s ease;
            font-weight: 600;
        }

        .copy-btn:hover {
            background: rgba(255, 215, 0, 0.3);
            transform: scale(1.05);
        }

        /* Action buttons */
        .action-buttons {
            display: flex;
            gap: 20px;
            justify-content: center;
            flex-wrap: wrap;
            animation: fadeInUp 0.8s ease-out 0.8s both;
        }

        .btn {
            padding: 18px 45px;
            font-size: 1.1rem;
            font-weight: 700;
            text-decoration: none;
            border-radius: 15px;
            transition: all 0.3s ease;
            display: inline-block;
            cursor: pointer;
            text-transform: uppercase;
            letter-spacing: 1px;
        }

        .btn-primary {
            background: linear-gradient(135deg, #ffd700, #ffed4e);
            color: #1a1a2e;
            box-shadow: 0 10px 30px rgba(255, 215, 0, 0.4);
        }

        .btn-primary:hover {
            transform: translateY(-3px);
            box-shadow: 0 15px 40px rgba(255, 215, 0, 0.6);
        }

        .btn-secondary {
            background: transparent;
            color: white;
            border: 2px solid rgba(255, 255, 255, 0.3);
        }

        .btn-secondary:hover {
            background: rgba(255, 255, 255, 0.1);
            border-color: white;
            transform: translateY(-3px);
        }

        /* Security notice */
        .security-notice {
            margin-top: 30px;
            padding: 20px;
            background: rgba(255, 107, 107, 0.1);
            border: 1px solid rgba(255, 107, 107, 0.3);
            border-radius: 12px;
            animation: fadeInUp 0.8s ease-out 1s both;
        }

        .security-notice-icon {
            font-size: 1.5rem;
            margin-bottom: 10px;
        }

        .security-notice-text {
            font-size: 0.9rem;
            color: rgba(255, 255, 255, 0.8);
            line-height: 1.6;
        }

        @media (max-width: 576px) {
            .success-container {
                padding: 40px 30px;
            }

            .success-title {
                font-size: 2rem;
            }

            .success-message {
                font-size: 1rem;
            }

            .credential-item {
                flex-direction: column;
                gap: 10px;
                text-align: center;
            }

            .action-buttons {
                flex-direction: column;
            }

            .btn {
                width: 100%;
            }
        }
    </style>
</head>
<body>
    <div class="bg-circle"></div>
    <div class="bg-circle"></div>

    <div class="success-container">
        <div class="success-icon">✓</div>
        
        <h1 class="success-title">Inscription Réussie !</h1>
        <p class="success-message">
            Félicitations ! Votre compte AutoMarket a été créé avec succès. 
            Vous pouvez maintenant accéder à toutes les fonctionnalités de la plateforme.
        </p>

        <div class="credentials-box">
            <div class="credentials-title">🔑 Vos identifiants de connexion</div>
            
            
                <div class="credential-item">
    <span class="credential-label">Email</span>
    <div class="credential-value">
        <span><%= request.getAttribute("email") %></span>
        <button class="copy-btn" onclick="copyToClipboard('<%= request.getAttribute("email") %>')">📋 Copier</button>
    </div>
</div>

            <div class="credential-item">
                <span class="credential-label">Mot de passe</span>
                <div class="credential-value">
                   <span><%= request.getAttribute("password") %></span>
        <button class="copy-btn" onclick="copyToClipboard('<%= request.getAttribute("password") %>')">📋 Copier</button>
    </div>
</div>

        <div class="action-buttons">
            <a href="login.jsp" class="btn btn-primary">Se connecter maintenant</a>
            <a href="index.jsp" class="btn btn-secondary">Retour à l'accueil</a>
        </div>

        <div class="security-notice">
            <div class="security-notice-icon">🔒</div>
            <p class="security-notice-text">
                <strong>Important :</strong> Pour votre sécurité, nous vous recommandons de changer 
                votre mot de passe lors de votre première connexion.
            </p>
        </div>
    </div>

    <script>
        function copyToClipboard(text) {
            if (navigator.clipboard && navigator.clipboard.writeText) {
                navigator.clipboard.writeText(text).then(function() {
                    // Show feedback
                    const btn = event.target;
                    const originalText = btn.textContent;
                    btn.textContent = '✓ Copié !';
                    btn.style.background = 'rgba(16, 185, 129, 0.3)';
                    btn.style.borderColor = 'rgba(16, 185, 129, 0.5)';
                    btn.style.color = '#10b981';
                    
                    setTimeout(() => {
                        btn.textContent = originalText;
                        btn.style.background = '';
                        btn.style.borderColor = '';
                        btn.style.color = '';
                    }, 2000);
                }).catch(function(err) {
                    console.error('Erreur de copie:', err);
                });
            } else {
                // Fallback for older browsers
                const textarea = document.createElement('textarea');
                textarea.value = text;
                textarea.style.position = 'fixed';
                textarea.style.opacity = '0';
                document.body.appendChild(textarea);
                textarea.select();
                try {
                    document.execCommand('copy');
                    alert('Copié : ' + text);
                } catch (err) {
                    console.error('Erreur de copie:', err);
                }
                document.body.removeChild(textarea);
            }
        }
    </script>
</body>
</html>
