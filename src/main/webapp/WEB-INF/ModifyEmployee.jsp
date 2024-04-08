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
                <input type="text" class="form-control" id="id" name="id" required readonly value="${emp.getId()}">
            </div>
            <div class="form-group">
                <label for="nom">Nom</label>
                <input type="text" class="form-control" id="nom" name="nom" value="${emp.getName()}">
            </div>
            <div class="form-group">
			    <label for="poste">Poste</label>
			    <select class="form-control" id="poste" name="poste">
			        <option value="Developpeur Front-End" ${emp.getJob() eq 'Developpeur Front-End' ? 'selected' : ''}>Developpeur Front-End</option>
			        <option value="Developpeur Back-End" ${emp.getJob() eq 'Developpeur Back-End' ? 'selected' : ''}>Developpeur Back-End</option>
			        <option value="Developpeur Full Stack" ${emp.getJob() eq 'Developpeur Full Stack' ? 'selected' : ''}>Developpeur Full Stack</option>
			        <option value="Ingenieur en Test Logiciel" ${emp.getJob() eq 'Ingenieur en Test Logiciel' ? 'selected' : ''}>Ingenieur en Test Logiciel</option>
			        <option value="Chef de Projet Technique" ${emp.getJob() eq 'Chef de Projet Technique' ? 'selected' : ''}>Chef de Projet Technique</option>
			        <option value="Architecte Logiciel" ${emp.getJob() eq 'Architecte Logiciel' ? 'selected' : ''}>Architecte Logiciel</option>
			        <option value="Specialiste en Securite Informatique" ${emp.getJob() eq 'Specialiste en Securite Informatique' ? 'selected' : ''}>Specialiste en Securite Informatique</option>
			        <option value="Analyste en Assurance Qualite" ${emp.getJob() eq 'Analyste en Assurance Qualite' ? 'selected' : ''}>Analyste en Assurance Qualite</option>
			        <option value="Administrateur Systeme et Reseaux" ${emp.getJob() eq 'Administrateur Systeme et Reseaux' ? 'selected' : ''}>Administrateur Systeme et Reseaux</option>
			        <option value="Analyste en Business Intelligence" ${emp.getJob() eq 'Analyste en Business Intelligence' ? 'selected' : ''}>Analyste en Business Intelligence</option>
			    </select>
			</div>
			<div class="form-group">
			    <label for="departement">Département</label>
			    <select class="form-control" id="departement" name="departement">
			        <option value="Developpement Logiciel" ${emp.getDepartment() eq 'Developpement Logiciel' ? 'selected' : ''}>Developpement Logiciel</option>
			        <option value="Qualite et Tests" ${emp.getDepartment() eq 'Qualite et Tests' ? 'selected' : ''}>Qualite et Tests</option>
			        <option value="Gestion de Projet" ${emp.getDepartment() eq 'Gestion de Projet' ? 'selected' : ''}>Gestion de Projet</option>
			        <option value="Architecture et Innovation" ${emp.getDepartment() eq 'Architecture et Innovation' ? 'selected' : ''}>Architecture et Innovation</option>
			        <option value="Securite des Systemes" ${emp.getDepartment() eq 'Securite des Systemes' ? 'selected' : ''}>Securite des Systemes</option>
			        <option value="Infrastructure et Reseaux" ${emp.getDepartment() eq 'Infrastructure et Reseaux' ? 'selected' : ''}>Infrastructure et Reseaux</option>
			        <option value="Business Intelligence et Data Science" ${emp.getDepartment() eq 'Business Intelligence et Data Science' ? 'selected' : ''}>Business Intelligence et Data Science</option>
			        <option value="Support Technique et Maintenance" ${emp.getDepartment() eq 'Support Technique et Maintenance' ? 'selected' : ''}>Support Technique et Maintenance</option>
			        <option value="Ressources Humaines" ${emp.getDepartment() eq 'Ressources Humaines' ? 'selected' : ''}>Ressources Humaines</option>
			        <option value="Finance et Administration" ${emp.getDepartment() eq 'Finance et Administration' ? 'selected' : ''}>Finance et Administration</option>
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
