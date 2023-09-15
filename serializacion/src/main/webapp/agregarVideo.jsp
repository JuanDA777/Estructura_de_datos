<%-- 
    Document   : agregarVideo
    Created on : 4 sept 2023, 22:40:58
    Author     : juand
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Sistema Reproductor de Videos</title>
    <style>
        body {
            background-image: url('https://i.pinimg.com/originals/26/ed/fe/26edfe7476f61c0afa0ad92574065225.gif'); /* Cambia 'fondo.jpg' por la ruta de tu imagen de fondo */
            background-size: cover;
            background-repeat: no-repeat;
            background-attachment: fixed;
            font-family: Arial, sans-serif;
            text-align: center;
            margin: 0;
            padding: 0;
        }
        h1 {
            font-size: 36px;
            color: #007BFF;
            margin-top: 50px;
        }
        form {
            background-color: rgba(255, 255, 255, 0.9); /* Fondo semitransparente */
            max-width: 500px;
            margin: 0 auto;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.3);
            text-align: left; /* Alinea el texto a la izquierda */
        }
        label {
            display: block;
            font-weight: bold;
            margin-top: 10px;
        }
        input[type="text"],
        textarea {
            width: 100%;
            padding: 10px;
            margin-top: 5px;
            border: 1px solid #ccc;
            border-radius: 5px;
            box-sizing: border-box; /* Evita que el borde afecte el ancho total */
        }
        input[type="submit"] {
            display: block;
            margin: 20px auto;
            padding: 10px 20px;
            background-color: #007BFF;
            color: #fff;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }
        a {
            display: block;
            text-decoration: none;
            color: #007BFF;
            margin-top: 10px;
        }
    </style>
</head>
<body>
    <h1>Sistema Reproductor de Videos</h1>
    <form action="SvVideo" method="POST">
        <label for="idVideo">ID del Video:</label>
        <input type="text" name="idVideo"><br>
        
        <label for="titulo">Título:</label>
        <input type="text" name="titulo"><br>
        
        <label for="autor">Autor:</label>
        <input type="text" name="autor"><br>
        
        <label for="anio">Año:</label>
        <input type="text" name="anio"><br>
        
        <label for="url">URL del Video:</label>
        <input type="text" name="url"><br>
        
        <label for="categoria">Categoría:</label>
        <input type="text" name="categoria"><br>
        
        <label for="letra">Letra:</label>
        <textarea id="letra" name="letra" rows="4" cols="50"></textarea>
        
        <input type="submit" value="Agregar Video" class="button">
    </form>  
    <a href="index.jsp">Volver al Menú</a>
</body>
</html>
