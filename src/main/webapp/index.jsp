<%@ page language='java' contentType="text/html" %>


<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.mpm.instituto.Alumno"%>
<%@page import="com.mpm.instituto.Asignatura"%>


<%@page session="true" %>

<%
List<Alumno> alumnos = new ArrayList<Alumno>();
session.setAttribute("alumnos", alumnos);

List<Asignatura> asignaturas = new ArrayList<Asignatura>();
session.setAttribute("asignaturas", asignaturas);

%>

<!DOCTYPE html>
<html lang="es">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>instituto</title>
</head>
<body>
    <h1>instituto</h1>
    <a href="alumnos/alumnos.jsp">alumnos</a>
    <br>
    <a href="asignaturas/asignaturas.jsp">asignaturas</a>
</body>
</html>