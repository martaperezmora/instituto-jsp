<%@ page language='java' contentType="text/html" %>

<%@page import="com.mpm.instituto.Alumno"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>


<%@page session="true" %>

<%
    String nombre = request.getParameter("nombre");
    String apellidos = request.getParameter("apellidos");
    String dni = request.getParameter("dni");
    String direccion = request.getParameter("direccion");
    String email = request.getParameter("email");

    Alumno alumno = new Alumno();
    alumno.setNombre(nombre);
    alumno.setApellidos(apellidos);
    alumno.setDni(dni);
    alumno.setDireccion(direccion);
    alumno.setEmail(email);

    List<Alumno> alumnos = (List) session.getAttribute("alumnos");

    alumnos.remove(alumno);
    alumnos.add(alumno);

    session.setAttribute("alumnos", alumnos);

    response.sendRedirect("alumnos.jsp");

%>
