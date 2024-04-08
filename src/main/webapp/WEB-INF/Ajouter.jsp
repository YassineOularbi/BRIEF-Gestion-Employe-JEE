<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
 <form method="post" action="afficher">
    <label for="id">Id : </label>
    <input type="text" name="id" id="id" required/>
    
    <label for="name">Name : </label>
    <input type="text" name="name" id="name" required/>
    
    <label for="email">Email : </label>
    <input type="email" name="email" id="email" required/>
    
    <label for="number">Phone Number : </label>
    <input type="text" name="number" id="number" required/>
    
    <label for="departement">Departement : </label>
    <input type="text" name="departement" id="departement" required/>
    
    <label for="poste">Poste : </label>
    <input type="text" name="poste" id="poste" required/>
    
    <input type="submit" />
</form>

</body>
</html>