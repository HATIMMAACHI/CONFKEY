<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <title>ConfKey - Création des Comités SC et PC</title>
    <link rel="stylesheet" href="css/styles.css">
</head>
<body>
    <!-- Header -->
    <header class="header">
        <div class="logo">
            <img src="images/conKey.png" alt="ConfKey"> <!-- Remplace avec ton image -->
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

    <!-- Main Content -->
    <main class="main-form">
        <h2>Gestion des Comités Scientifique (SC) et de Programme (PC)</h2>

        <!-- Formulaire pour ajouter un membre -->
        <form id="memberForm">
            <h3>Ajouter un Membre</h3>

            <!-- Informations Personnelles -->
            <label>Nom et Prénom :</label>
            <input type="text" id="name" name="name" required>

            <label>Adresse e-mail :</label>
            <input type="email" id="email" name="email" required>

            <label>Institution :</label>
            <input type="text" id="institution" name="institution" required>

            <label>Pays :</label>
            <input type="text" id="country" name="country" required>

            <!-- Informations Académiques et Professionnelles -->
            <label>Titre :</label>
            <input type="text" id="title" name="title" required>

            <label>Domaine(s) d'expertise :</label>
            <input type="text" id="expertise" name="expertise" required>

            <!-- Attribution au Comité -->
            <label>Comité :</label>
            <select id="committee" name="committee" required>
                <option value="sc">Comité Scientifique (SC)</option>
                <option value="pc">Comité de Programme (PC)</option>
            </select>

            <button type="submit">Ajouter</button>
        </form>

        <!-- Liste des Membres du Comité Scientifique (SC) -->
        <h3>Membres du Comité Scientifique (SC)</h3>
        <table id="scTable">
            <thead>
                <tr>
                    <th>Nom et Prénom</th>
                    <th>Email</th>
                    <th>Institution</th>
                    <th>Pays</th>
                    <th>Titre</th>
                    <th>Domaine(s) d'expertise</th>
                    <th>Action</th>
                </tr>
            </thead>
            <tbody id="sc-members">
                <!-- Les membres seront ajoutés ici dynamiquement -->
            </tbody>
        </table>

        <!-- Liste des Membres du Comité de Programme (PC) -->
        <h3>Membres du Comité de Programme (PC)</h3>
        <table id="pcTable">
            <thead>
                <tr>
                    <th>Nom et Prénom</th>
                    <th>Email</th>
                    <th>Institution</th>
                    <th>Pays</th>
                    <th>Titre</th>
                    <th>Domaine(s) d'expertise</th>
                    <th>Action</th>
                </tr>
            </thead>
            <tbody id="pc-members">
                <!-- Les membres seront ajoutés ici dynamiquement -->
            </tbody>
        </table>
    </main>

    <!-- Footer -->
    <footer>
        <p>ConfKey Scientific Publishing Platform © 2025</p>
        <p>Certifié ISO 9001:2025 | ISSN 1234-5678</p>
    </footer>

    <!-- Script JavaScript -->
    <script>
        // Gestion de l'ajout de membres
        document.getElementById('memberForm').addEventListener('submit', function (e) {
            e.preventDefault();

            // Récupération des valeurs des champs
            const name = document.getElementById('name').value.trim();
            const email = document.getElementById('email').value.trim();
            const institution = document.getElementById('institution').value.trim();
            const country = document.getElementById('country').value.trim();
            const title = document.getElementById('title').value.trim();
            const expertise = document.getElementById('expertise').value.trim();
            const committee = document.getElementById('committee').value;

            // Validation des champs
            if (!name || !email || !institution || !country || !title || !expertise) {
                alert("Veuillez remplir tous les champs.");
                return;
            }

            // Création d'une nouvelle ligne dans le tableau correspondant
            const newRow = document.createElement('tr');
            newRow.innerHTML = `
                <td>${name}</td>
                <td>${email}</td>
                <td>${institution}</td>
                <td>${country}</td>
                <td>${title}</td>
                <td>${expertise}</td>
                <td><button class="remove-btn" onclick="this.parentElement.parentElement.remove()">Supprimer</button></td>
            `;

            if (committee === 'sc') {
                document.getElementById('sc-members').appendChild(newRow);
            } else if (committee === 'pc') {
                document.getElementById('pc-members').appendChild(newRow);
            }

            // Réinitialisation du formulaire
            document.getElementById('memberForm').reset();
        });
    </script>
</body>
</html>