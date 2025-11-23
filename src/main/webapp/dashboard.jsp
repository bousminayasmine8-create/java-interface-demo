<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page session="true" %>
<%
    String username = (String) session.getAttribute("username");
    if(username == null) {
        response.sendRedirect("index.jsp");
        return;
    }
%>
<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <title>Dashboard</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>
<div class="container">
    <h1>Bienvenue, <%= username %> !</h1>
    <h2>Liste des voitures</h2>
    <table>
        <tr>
            <th>Image</th>
            <th>Nom</th>
            <th>Marque</th>
            <th>Année</th>
        </tr>
        <tr>
            <td><img src="images/car1.jpg" alt="Voiture 1" class="car"></td>
            <td>Model S</td>
            <td>Tesla</td>
            <td>2022</td>
        </tr>
        <tr>
            <td><img src="images/car2.jpg" alt="Voiture 2" class="car"></td>
            <td>Mustang</td>
            <td>Ford</td>
            <td>2021</td>
        </tr>
        <tr>
            <td><img src="images/car3.jpg" alt="Voiture 3" class="car"></td>
            <td>Civic</td>
            <td>Honda</td>
            <td>2020</td>
        </tr>
    </table>
</div>
</body>
</html>

