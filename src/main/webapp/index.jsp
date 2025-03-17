<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>ConfKey</title>
    <link rel="stylesheet" href="css/styles.css">
</head>
<body>
    <!-- En-tête -->
    <header>
        <div class="logo">
            <img src="images/conKey.png" alt="Logo Plateforme" with="500">
            <h1><span class="conf">Conf</span><span class="key">Key</span></h1>
        </div>
        <nav>
            <ul>
                <li><a href="index.jsp">Accueil</a></li>
                <li><a href="createconf.jsp">Créer une Conférence</a></li>
                <li><a href="login.jsp">Se Connecter</a></li>
                <li><a href="register.jsp">Créer un Compte</a></li>
            </ul>
        </nav>
    </header>

    <!-- Section de Présentation -->
    <section class="intro">
        <h2>Bienvenue sur la Plateforme de Gestion de Manifestations Scientifiques</h2>
        <p>Simplifiez l'organisation de vos conférences grâce à des outils puissants pour la soumission, l'évaluation et la gestion des articles.</p>
        <div class="actions">
            <a href="register.jsp" class="btn">Créer un compte</a>
            <a href="login.jsp" class="btn">Se connecter</a>
        </div>
    </section>

    <!-- Fonctionnalités Principales -->
    <section class="features">
        <h2>Fonctionnalités Principales</h2>
        <div class="feature-list">
            <div class="feature">
                <h3>Création de Conférences</h3>
                <p>Organisez facilement vos conférences en définissant les paramètres, les dates et les comités.</p>
            </div>
            <div class="feature">
                <h3>Soumission d'Articles</h3>
                <p>Soumettez vos articles et suivez leur statut en temps réel.</p>
            </div>
            <div class="feature">
                <h3>Évaluation des Articles</h3>
                <p>Attribuez et évaluez les articles avec un processus transparent et efficace.</p>
            </div>
            <div class="feature">
                <h3>Notifications par Email</h3>
                <p>Recevez des notifications automatiques pour rester informé à chaque étape.</p>
            </div>
        </div>
    </section>


    <!-- Pied de Page -->
    <footer>
        <p>Contact : contact@plateforme-scientifique.com</p>
        <p><a href="#">Mentions légales</a> | <a href="#">Politique de confidentialité</a></p>
        <div class="social">
            <a href="#"><img src="images/FB.png" alt="Facebook"></a>
            <a href="#"><img src="images/link.png" alt="LinkedIn"></a>
            <a href="#"><img src="images/X.png" alt="Twitter"></a>
        </div>
    </footer>
</body>
</html>