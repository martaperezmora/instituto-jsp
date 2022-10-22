<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Asignatura nueva</title>
</head>
<body>
    <form action="guardarAsignatura.jsp" method="post">
        <label for="codigo">código</label>
        <input type="text" name="codigo" id="codigo">
        <label for="descripcion">descripción</label>
        <input type="text" name="descripcion" id="descripcion">
        <input type="submit" value="guardar">
    </form>
</body>
</html>