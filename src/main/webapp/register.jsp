<!DOCTYPE html>
<html lang="fr">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Cr�er un compte</title>
    <link rel="stylesheet" href="css/crt.css">
 
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
                <li><a href="createconf.jsp">Cr�er une Conf�rence</a></li>
                <li><a href="login.jsp">Se Connecter</a></li>
                <li><a href="register.jsp">Cr�er un Compte</a></li>
            </ul>
        </nav>
    </header>
    <div class="container">
        <h1>Cr�er un compte</h1>
        <form action="registerServlet" method="post">
            <label for="fullname">Nom complet :</label>
            <input type="text" id="fullname" name="fullname" placeholder="Entrez votre nom complet" required>

            <label for="email">Adresse Email :</label>
            <input type="text" id="email" name="email" placeholder="Entrez votre email" required>

            <label for="password">Mot de passe :</label>
            <input type="password" id="password" name="password" placeholder="Cr�ez un mot de passe" required>

            <label for="confirmPassword">Confirmer le mot de passe :</label>
            <input type="password" id="confirmPassword" name="confirmPassword" placeholder="Confirmez le mot de passe" required>

            <button type="submit">Cr�er un compte</button>
        </form>

        <p style="text-align:center; margin-top:15px;">D�j� inscrit ? <a href="login.jsp" style="color:#00bfff;">Se connecter</a></p>
    </div>
</body>
 <!-- Pied de Page -->
    <footer>
        <p>Contact : contact@plateforme-scientifique.com</p>
        <p><a href="#">Mentions l�gales</a> | <a href="#">Politique de confidentialit�</a></p>
        <div class="social">
            <a href="#"><img src="images/FB.png" alt="Facebook"></a>
            <a href="#"><img src="images/link.png" alt="LinkedIn"></a>
            <a href="#"><img src="images/X.png" alt="Twitter"></a>
        </div>
    </footer>

</html>