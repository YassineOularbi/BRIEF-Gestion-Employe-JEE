<%@ page pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Affichage des données</title>
    <!-- Inclure les fichiers CSS de Bootstrap -->
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
    <div class="container">
        <h2>Données du formulaire</h2>
        <div class="row">
            <div class="col-md-6">
                <table class="table table-bordered">
                    <thead>
                        <tr>
                            <th>Id</th>
                            <th>Name</th>
                            <th>Email</th>
                            <th>Phone Number</th>
                            <th>Departement</th>
                            <th>Poste</th>

                        </tr>
                    </thead>
                    <tbody>
                  <c:forEach var="employee" items="${emp}">
                    <tr>
                       <td>${employee.getId()}</td>
                        <td>${employee.getName()}</td>
                        <td>${employee.getEmail()}</td>
                        <td>${employee.getNumber()}</td>
                        <td>${employee.getDepartement()}</td>
                        <td>${employee.getPoste()}</td>
                        <td>
                            <a href="modifier?id=${employee.getId()}" class="btn btn-primary btn-sm">Modifier</a>
                            <a href="afficher?id=${employee.getId()}" class="btn btn-danger btn-sm">Supprimer</a>
                        </td>
                    </tr>
                </c:forEach>
                    </tbody>
                </table>
                <a href="ajouter" class="btn btn-danger btn-sm">Ajouter</a>
            </div>
        </div>
    </div>

    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

</body>
</html>
