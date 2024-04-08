<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Ajouter un Employé</title>
    <!-- Include Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
</head>
<body>
    <div class="container">
        <h1>Ajouter un Employé</h1>
        
        <!-- Formulaire d'ajout d'un nouvel employé -->
        <form action="gestionEmploye" method="POST" class="mt-3">
        	<div class="form-group">
                <label for="id">Id</label>
                <input type="text" class="form-control" id="id" name="id" required>
            </div>
            <div class="form-group">
                <label for="nom">Nom</label>
                <input type="text" class="form-control" id="nom" name="nom" required>
            </div>
            <div class="form-group">
                <label for="poste">Poste</label>
                <select class="form-control" id="poste" name="poste" required>
				    <option value="">Selectionner un poste</option>
				    <option value="Developpeur Front-End">Developpeur Front-End</option>
				    <option value="Developpeur Back-End">Developpeur Back-End</option>
				    <option value="Developpeur Full Stack">Developpeur Full Stack</option>
				    <option value="Ingenieur en Test Logiciel">Ingenieur en Test Logiciel</option>
				    <option value="Chef de Projet Technique">Chef de Projet Technique</option>
				    <option value="Architecte Logiciel">Architecte Logiciel</option>
				    <option value="Specialiste en Securite Informatique">Specialiste en Securite Informatique</option>
				    <option value="Analyste en Assurance Qualite">Analyste en Assurance Qualite</option>
				    <option value="Administrateur Systeme et Reseaux">Administrateur Systeme et Reseaux</option>
				    <option value="Analyste en Business Intelligence">Analyste en Business Intelligence</option>
				</select>
				</div>
				<div class="form-group">
				    <label for="departement">Departement</label>
				    <select class="form-control" id="departement" name="departement" required>
				        <option value="">Selectionner un departement</option>
				        <option value="Developpement Logiciel">Developpement Logiciel</option>
				        <option value="Qualite et Tests">Qualite et Tests</option>
				        <option value="Gestion de Projet">Gestion de Projet</option>
				        <option value="Architecture et Innovation">Architecture et Innovation</option>
				        <option value="Securite des Systemes">Securite des Systemes</option>
				        <option value="Infrastructure et Reseaux">Infrastructure et Reseaux</option>
				        <option value="Business Intelligence et Data Science">Business Intelligence et Data Science</option>
				        <option value="Support Technique et Maintenance">Support Technique et Maintenance</option>
				        <option value="Ressources Humaines">Ressources Humaines</option>
				        <option value="Finance et Administration">Finance et Administration</option>
				    </select>
           	 </div>
            <div class="form-group">
                <label for="telephone">Numéro de téléphone</label>
                <input type="text" class="form-control" id="telephone" name="telephone" required>
            </div>
            <div class="form-group">
                <label for="email">Adresse e-mail</label>
                <input type="email" class="form-control" id="email" name="email" required>
            </div>
            <button type="submit" class="btn btn-primary">Ajouter</button>
        </form>
    </div>

    <!-- Include Bootstrap JS -->
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
