<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="fr">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/crt.css">
    <title>Connexion</title>
</head>

<body>
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
    <div class="container">
        <h1>Connexion</h1>
        <form action="loginServlet" method="post">
            <label for="email">Adresse Email :</label>
            <input type="text" id="email" name="email" placeholder="Entrez votre email" required>

            <label for="password">Mot de passe :</label>
            <input type="password" id="password" name="password" placeholder="Entrez votre mot de passe" required>

            <button type="submit">Se connecter</button>
        </form>

        <p style="text-align:center; margin-top:15px;">Pas encore de compte ? <a href="register.jsp" style="color:#00bfff;">Créer un compte</a></p>
    </div>
</body>
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

</html>