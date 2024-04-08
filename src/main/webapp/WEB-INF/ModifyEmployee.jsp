<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Modifier un Employé</title>
    <!-- Include Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
</head>
<body>
    <div class="container">
        <h1>Modifier un Employé</h1>
        
        <!-- Formulaire de modification d'un employé existant -->
        <form action="modifierEmploye?id=${emp.getId()}" method="POST" class="mt-3">
            <div class="form-group">
                <label for="id">Identifiant de l'employé</label>
                <input type="text" class="form-control" id="id" name="id" required readonly value="${${emp.getId()}}">
            </div>
            <div class="form-group">
                <label for="nom">Nom</label>
                <input type="text" class="form-control" id="nom" name="nom" value="${${emp.getName()}}">
            </div>
            <div class="form-group">
                <label for="poste">Poste</label>
                <select class="form-control" id="poste" name="poste">
                    <option value="1" ${poste eq '1' ? 'selected' : ''}>Développeur Front-End</option>
					<option value="2" ${poste eq '2' ? 'selected' : ''}>Développeur Back-End</option>
					<option value="3" ${poste eq '3' ? 'selected' : ''}>Développeur Full Stack</option>
					<option value="4" ${poste eq '4' ? 'selected' : ''}>Ingénieur en Test Logiciel</option>
					<option value="5" ${poste eq '5' ? 'selected' : ''}>Chef de Projet Technique</option>
					<option value="6" ${poste eq '6' ? 'selected' : ''}>Architecte Logiciel</option>
					<option value="7" ${poste eq '7' ? 'selected' : ''}>Spécialiste en Sécurité Informatique</option>
					<option value="8" ${poste eq '8' ? 'selected' : ''}>Analyste en Assurance Qualité</option>
					<option value="9" ${poste eq '9' ? 'selected' : ''}>Administrateur Système et Réseaux</option>
					<option value="10" ${poste eq '10' ? 'selected' : ''}>Analyste en Business Intelligence</option>
                </select>
            </div>
            <div class="form-group">
                <label for="departement">Département</label>
                <select class="form-control" id="departement" name="departement">
                    <option value="1" ${departement eq '1' ? 'selected' : ''}>Développement Logiciel</option>
					<option value="2" ${departement eq '2' ? 'selected' : ''}>Qualité et Tests</option>
					<option value="3" ${departement eq '3' ? 'selected' : ''}>Gestion de Projet</option>
					<option value="4" ${departement eq '4' ? 'selected' : ''}>Architecture et Innovation</option>
					<option value="5" ${departement eq '5' ? 'selected' : ''}>Sécurité des Systèmes</option>
					<option value="6" ${departement eq '6' ? 'selected' : ''}>Infrastructure et Réseaux</option>
					<option value="7" ${departement eq '7' ? 'selected' : ''}>Business Intelligence et Data Science</option>
					<option value="8" ${departement eq '8' ? 'selected' : ''}>Support Technique et Maintenance</option>
					<option value="9" ${departement eq '9' ? 'selected' : ''}>Ressources Humaines</option>
					<option value="10" ${departement eq '10' ? 'selected' : ''}>Finance et Administration</option>
                </select>
            </div>
            <div class="form-group">
                <label for="telephone">Numéro de téléphone</label>
                <input type="text" class="form-control" id="telephone" name="telephone" value="${emp.getNumber()}">
            </div>
            <div class="form-group">
                <label for="email">Adresse e-mail</label>
                <input type="email" class="form-control" id="email" name="email" value="${emp.getEmail()}">
            </div>
            <button type="submit" class="btn btn-primary">Modifier</button>
        </form>
    </div>

    <!-- Include Bootstrap JS -->
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
