<%@ page language='java' contentType="text/html" %>

<%@page import="com.mpm.instituto.Alumno"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>

<%@page session="true" %>

<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>alumnos</title>
</head>
<body>
    <h1>Alumnos</h1>
    <p>
      <a href="nuevoAlumno.jsp">Nuevo alumno</a>
    </p>
    <table>
        <tr>
            <th>Nombre</th>
            <th>Apellidos</th>
            <th>DNI</th>
            <th>Dirección</th>
            <th>Email</th>
        </tr>
            <%
                List<Alumno> alumnos = (List) session.getAttribute("alumnos");

                for(Alumno alumno: alumnos) {
                    out.print("<tr>");
                    out.print("<td>" + alumno.getNombre() + "</td>");
                    out.print("<td>" + alumno.getApellidos() + "</td>");
                    out.print("<td>" + alumno.getDni() + "</td>");
                    out.print("<td>" + alumno.getDireccion() + "</td>");
                    out.print("<td>" + alumno.getEmail() + "</td>");
                    out.print("<td><a href=\"editarAlumno.jsp?dni=" + alumno.getDni() + "\">editar</a></td>");
                    out.print("<td><a href=\"alumnoBaja.jsp?dni=" + alumno.getDni() + "\">eliminar</a></td>");
                    out.print("</tr>");
                }
            %>
    </table>
</body>
</html>