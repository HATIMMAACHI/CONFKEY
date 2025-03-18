<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <title>ConfKey - Soumission Complète</title>
    <link rel="stylesheet" href="css/crt1.css">

</head>
<body>
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

    <main class="main-form">
        <form id="submissionForm">
            <!-- Sélection de conférence -->
            <div class="form-section">
                <label>Conférence *</label>
                <select required>
                    <option value="">Sélectionnez une conférence</option>
                    <option value="ICML2025">ICML 2025</option>
                    <option value="NeurIPS2025">NeurIPS 2025</option>
                    <option value="CVPR2025">CVPR 2025</option>
                </select>
            </div>

            <!-- Auteurs -->
            <div class="form-section">
                <label>Auteurs</label>
                <div class="author-box">
                    <span class="correspondant-badge">Correspondant principal</span>
                    <input type="text" placeholder="Prénom *" required>
                    <input type="text" placeholder="Nom *" required>
                    <input type="email" placeholder="Email institutionnel *" required>
                    <input type="text" placeholder="Affiliation *" required>
                </div>
                
                <div id="additionalAuthors"></div>
                
                <button type="button" class="submit-btn" onclick="addAuthor()">
                    ➕ Ajouter un auteur
                </button>
            </div>

            <!-- Détails de l'article -->
            <div class="form-section">
                <label>Titre de l'article *</label>
                <input type="text" required placeholder="Titre scientifique complet">
                
                <label>Mots-clés *</label>
                <div class="keywords-input">
                    <input type="text" id="keywordInput" placeholder="Ajouter un mot-clé (Entrée pour valider)">
                </div>
                
                <label>Résumé *</label>
                <textarea rows="6" required placeholder="Résumé structuré (objectifs, méthodes, résultats)"></textarea>
            </div>

            <!-- Fichier -->
            <div class="form-section">
                <label>Soumission de document *</label>
                <div class="file-upload">
                    <input type="file" accept=".pdf,.docx,.tex" required>
                    <p>Formats acceptés : PDF, DOCX, LaTeX</p>
                    <p>Taille maximale : 10MB</p>
                </div>
            </div>

            <button type="submit" class="submit-btn">
                🚀 Soumettre l'article
            </button>
        </form>
    </main>

    <footer>
        <p>ConfKey Scientific Publishing Platform © 2025</p>
        <p>Certifié ISO 9001:2025 | ISSN 1234-5678</p>
    </footer>

    <script>
        // Gestion des auteurs
        let authorCount = 1;

        function addAuthor() {
            const newAuthor = document.createElement('div');
            newAuthor.className = 'author-box';
            newAuthor.innerHTML = `
                <button class="remove-btn" onclick="this.parentElement.remove()">×</button>
                <input type="text" placeholder="Prénom *" required>
                <input type="text" placeholder="Nom *" required>
                <input type="email" placeholder="Email *" required>
                <input type="text" placeholder="Affiliation *" required>
            `;
            document.getElementById('additionalAuthors').appendChild(newAuthor);
            authorCount++;
        }

        // Gestion des mots-clés
        const keywordInput = document.getElementById('keywordInput');
        keywordInput.addEventListener('keypress', (e) => {
            if(e.key === 'Enter') {
                e.preventDefault();
                const keyword = keywordInput.value.trim();
                if(keyword) {
                    const tag = document.createElement('span');
                    tag.className = 'keyword-tag';
                    tag.innerHTML = `
                        ${keyword}
                        <span style="cursor:pointer" onclick="this.parentElement.remove()">×</span>
                    `;
                    keywordInput.before(tag);
                    keywordInput.value = '';
                }
            }
        });

        // Validation de formulaire
        document.getElementById('submissionForm').addEventListener('submit', (e) => {
            e.preventDefault();
            // Logique de soumission...
            alert('Soumission réussie ! Vérifiez votre email pour la confirmation.');
        });
    </script>
</body>
</html>