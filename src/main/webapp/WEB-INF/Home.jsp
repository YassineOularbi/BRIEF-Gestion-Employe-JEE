<%@ page pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Liste des Employés</title>
    <!-- Include Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
</head>
<body>
<c:if test="${not empty requestScope.duplicateId}">
    <script type="text/javascript">
        alert("L'ID de l'employé existe déjà.");
    </script>
</c:if>
    <div class="container">
        <h1>Liste des Employés</h1>
        <!-- Bouton pour ajouter un nouvel employé -->
        <a href="ajouterEmploye" class="btn btn-primary mb-3">Ajouter un employé</a>
        
        <!-- Formulaire de recherche et de filtrage -->
        <form action="rechercherEmployes" method="POST" class="mb-3">
            <div class="form-row">
                <div class="col-md-4 mb-3">
                    <label for="inputDept">Département</label>
                    <select class="form-control" id="inputDept" name="dept">
                        <!-- Options pour les départements -->
                        <option value="">Tous les départements</option>
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
                <div class="col-md-4 mb-3">
                    <label for="inputPoste">Poste</label>
                    <select class="form-control" id="inputPoste" name="poste">
                        <!-- Options pour les postes -->
                        <option value="">Tous les postes</option>
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
                <div class="col-md-4 mb-3">
                    <label for="inputSearch">Rechercher par nom</label>
                    <input type="text" class="form-control" id="inputSearch" name="search">
                </div>
            </div>
            <button type="submit" class="btn btn-primary">Rechercher</button>
        </form>

        <!-- Tableau pour afficher la liste des employés -->
        <table class="table">
            <thead>
                <tr>
                	<th scope="col">Id</th>
                    <th scope="col">Nom</th>
                    <th scope="col">Poste</th>
                    <th scope="col">Département</th>
                    <th scope="col">Numéro de téléphone</th>
                    <th scope="col">Adresse e-mail</th>
                </tr>
            </thead>
            <tbody>
                <!-- Code JSP pour afficher la liste des employés -->
                <c:forEach var="employee" items="${emp}">
                    <tr>
                       <td>${employee.getId()}</td>
                        <td>${employee.getName()}</td>
                        <td>${employee.getJob()}</td>
                        <td>${employee.getDepartment()}</td>
                        <td>${employee.getNumber()}</td>
                        <td>${employee.getEmail()}</td>
                        <td>
                        	<a href="modifierEmploye?id=${employee.getId()}" class="btn btn-info btn-sm">Modifier</a>
                       		<a href="supprimerEmploye?id=${employee.getId()}" class="btn btn-danger btn-sm">Supprimer</a>
                    	</td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
    </div>

    <!-- Include Bootstrap JS -->
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
