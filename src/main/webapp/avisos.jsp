<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page import="java.util.List"%>
<%@page import="com.emergentes.modelo.Aviso"%>
<%
    List<Aviso> avisos = (List<Aviso>)request.getAttribute("avisos");
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    </head>
    <body>
        <div class="container">
        <h1>Listado de avisos</h1>
        <p><a class="btn btn-outline-primary btn-lg" href="AvisoController?action=add">Nuevo</a></p>
        <table class="table table-striped table-hover">
             <thead class="table-dark">
            <tr>
                <th>Id</th>
                <th>Titulo</th>
                <th>Contenido</th>
                <th></th>
                <th></th>
            </tr>
            </thead>
            <c:forEach var="item" items="${avisos}">
              <tr>
                <td>${item.id}</td>
                <td>${item.titulo}</td>
                <td>${item.contenido}</td>
                <td><a class="btn btn-warning" href="AvisoController?action=edit&id=${item.id}">Editar</a></td>
                <td><a class="btn btn-danger" href="AvisoController?action=delete&id=${item.id}">Eliminar</a></td>
            </tr>              
            </c:forEach>
        </table>
          <a class="btn btn-secondary btn-lg" href="index.jsp">Volver</a>
          </div>
        <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js" integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js" integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13" crossorigin="anonymous"></script>
      
    </body>
</html>
