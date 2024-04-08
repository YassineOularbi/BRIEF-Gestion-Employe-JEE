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
                	<option value="">Sélectionner un poste</option>
                    <option value="1">Développeur Front-End</option>
					<option value="2">Développeur Back-End</option>
					<option value="3">Développeur Full Stack</option>
					<option value="4">Ingénieur en Test Logiciel</option>
					<option value="5">Chef de Projet Technique</option>
					<option value="6">Architecte Logiciel</option>
					<option value="7">Spécialiste en Sécurité Informatique</option>
					<option value="8">Analyste en Assurance Qualité</option>
					<option value="9">Administrateur Système et Réseaux</option>
					<option value="10">Analyste en Business Intelligence</option>
                </select>
            </div>
            <div class="form-group">
                <label for="departement">Département</label>
                <select class="form-control" id="departement" name="departement" required>
                	<option value="">Sélectionner un département</option>
                    <option value="1">Développement Logiciel</option>
					<option value="2">Qualité et Tests</option>
					<option value="3">Gestion de Projet</option>
					<option value="4">Architecture et Innovation</option>
					<option value="5">Sécurité des Systèmes</option>
					<option value="6">Infrastructure et Réseaux</option>
					<option value="7">Business Intelligence et Data Science</option>
					<option value="8">Support Technique et Maintenance</option>
					<option value="9">Ressources Humaines</option>
					<option value="10">Finance et Administration</option>
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
