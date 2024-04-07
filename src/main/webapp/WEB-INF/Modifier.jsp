<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Modifier</title>
</head>
<body>
 	<form method="post" action="modifier?id=${emp.getId()}">

            <label for="name">Name : </label>
            <input type="text" name="name" id="name" placeholder="${emp.getId()}"/>
            
            <label for="email">Email : </label>
            <input type="email" name="email" id="email" placeholder="${emp.getId()}"/>
            
            <label for="number">Phone Number : </label>
            <input type="text" name="number" id="number" placeholder="${emp.getId()}"/>
            
            <label for="departement">Departement : </label>
            <input type="text" name="departement" id="departement" placeholder="${emp.getId()}"/>
            
            <label for="poste">Poste : </label>
            <input type="text" name="poste" id="poste" placeholder="${emp.getId()}"/>
          
            
            <input type="submit" />
   	 </form>

</body>
</html>