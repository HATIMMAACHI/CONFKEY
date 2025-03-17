<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.ArrayList" %>
<%
    // Initialiser ou récupérer la liste des membres depuis la session
    ArrayList<String> members = (ArrayList<String>) session.getAttribute("members");
    if (members == null) {
        members = new ArrayList<>();
        session.setAttribute("members", members);
    }

    // Ajouter un membre
    String newMember = request.getParameter("memberName");
    if (newMember != null && !newMember.trim().isEmpty()) {
        members.add(newMember);
        session.setAttribute("members", members);
    }

    // Supprimer un membre
    String removeIndexStr = request.getParameter("removeIndex");
    if (removeIndexStr != null) {
        try {
            int index = Integer.parseInt(removeIndexStr);
            if (index >= 0 && index < members.size()) {
                members.remove(index);
                session.setAttribute("members", members);
            }
        } catch (NumberFormatException e) {
            // Gestion d'erreur si removeIndex n'est pas valide
        }
    }
%>

<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <title>Créer une Conférence</title>
    <link rel="stylesheet" href="css/crt.css"> <!-- Assurez-vous que le fichier CSS est bien lié -->
</head>
<body>

    <header>
        <div class="logo">
            <img src="images/conKey.png" alt="ConfKey"> <!-- Remplace avec ton image -->
            <h1><span class="conf">Conf</span><span class="key">Key</span></h1>
        </div>
        <nav>
            <ul>
                <li><a href="index.jsp">Accueil</a></li>
                <li><a href="creer-conference.jsp">Créer une Conférence</a></li>
                <li><a href="login.jsp">Se Connecter</a></li>
                <li><a href="register.jsp">Créer un Compte</a></li>
            </ul>
        </nav>
    </header>

    <div class="container">
        <h2>Créer une conférence</h2>

        <!-- Formulaire de création de conférence -->
        <form action="CreateConferenceServlet" method="post">
            <label>Nom complet :</label>
            <input type="text" name="fullName" required>

            <label>Acronyme :</label>
            <input type="text" name="acronym" required>

            <label>Site Web :</label>
            <input type="url" name="website" required>

            <label>Type :</label>
            <select name="type" required>
                <option value="Physique">Physique</option>
                <option value="Virtuelle">Virtuelle</option>
                <option value="Hybride">Hybride</option>
            </select>

            <label>Lieu :</label>
            <input type="text" name="location" required>

            <label>Date de début :</label>
            <input type="date" name="startDate" required>

            <label>Date de fin :</label>
            <input type="date" name="endDate" required>

            <label>Thématique :</label>
            <textarea name="theme" required></textarea>

            <label>Topics et sous-topics :</label>
            <textarea name="topics" required></textarea>

            <label>Dates de soumission de pepier :</label>
            <input type="date" name="submissionDate" required>
            

            <button type="submit">Créer la conférence</button>
        </form>

        <hr>

        <h3>Comité de pilotage</h3>

        <!-- Liste des membres -->
        <div class="members">
            <% if (members.isEmpty()) { %>
                <p>Aucun membre ajouté.</p>
            <% } else { %>
                <% for (int i = 0; i < members.size(); i++) { %>
                    <div class="member-item">
                        <span><%= members.get(i) %></span>
                        <form method="post" style="display:inline;">
                            <input type="hidden" name="removeIndex" value="<%= i %>">
                            <button type="submit">Supprimer</button>
                        </form>
                    </div>
                <% } %>
            <% } %>
        </div>

        <!-- Formulaire d'ajout de membre -->
        <h3>Ajouter un membre</h3>
        <form method="post">
            <input type="text" name="memberName" placeholder="Nom du membre" required>
            <button type="submit">Ajouter</button>
        </form>
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
