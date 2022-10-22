<%@ page language='java' contentType="text/html" %>

<%@page import="com.mpm.instituto.Asignatura"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>

<%@page session="true" %>

<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>asignaturas</title>
</head>
<body>
    <h1>Asignaturas</h1>
    <p>
      <a href="nuevaAsignatura.jsp">Nueva asignatura</a>
    </p>
    <table>
        <tr>
            <th>Código</th>
            <th>Descripción</th>
        </tr>
            <%
                List<Asignatura> asignaturas = (List) session.getAttribute("asignaturas");

                for(Asignatura asignatura: asignaturas) {
                    out.print("<tr>");
                    out.print("<td>" + asignatura.getCodigo() + "</td>");
                    out.print("<td>" + asignatura.getDescripcion() + "</td>");
                    out.print("<td><a href=\"editarAsignatura.jsp?codigo=" + asignatura.getcodigo() + "\">editar</a></td>");
                    out.print("<td><a href=\"asignaturaBaja.jsp?codigo=" + asignatura.getcodigo() + "\">eliminar</a></td>");
                    out.print("</tr>");
                }
            %>
    </table>
</body>
</html>