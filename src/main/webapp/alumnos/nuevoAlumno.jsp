<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Alumno nuevo</title>
</head>
<body>
    <form action="guardarAlumno.jsp" method="post">
        <label for="dni">dni</label>
        <input type="text" name="dni" id="dni">
        <label for="nombre">Nombre</label>
        <input type="text" name="nombre" id="nombre">
        <label for="apellidos">Apellidos</label>
        <input type="text" name="apellidos" id="apellidos">
        <label for="direccion">Dirección</label>
        <input type="text" name="direccion" id="direccion">
        <label for="email">Email</label>
        <input type="text" name="email" id="email">
        <input type="submit" value="guardar">
    </form>
</body>
</html>