<%-- 
    Document   : index
    Created on : 4 sept 2023, 22:36:21
    Author     : juand
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Rocola Virtual</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            text-align: center;
            background-image: url('https://i.pinimg.com/originals/6b/4c/b8/6b4cb8b6ad99f8750f2eda7a9d1218d5.gif'); /* Cambia 'fondo.jpg' por la ruta de tu imagen de fondo */
            background-size: cover;
            background-repeat: no-repeat;
            background-attachment: fixed;
            margin: 0;
            padding: 0;
        }
        h1 {
            font-size: 36px;
            margin-top: 50px;
            color: #007BFF; /* Cambio de color a azul claro */
        }
        .button-container {
            margin-top: 30px;
        }
        .button {
            display: inline-block;
            padding: 10px 20px;
            font-size: 18px;
            background-color: #007BFF;
            color: #fff;
            text-decoration: none;
            margin: 10px;
            border-radius: 5px;
        }
        .content-container {
            background-color: rgba(255, 255, 255, 0.7); /* Fondo opaco */
            padding: 20px;
            border-radius: 5px;
        }
        img {
            max-width: 100%;
            height: auto;
            margin-top: 30px;
        }
        p {
            font-size: 18px;
            color: #666;
            margin: 20px;
        }
    </style>
</head>
<body>
    <h1>Rocola Virtual</h1>
    <div class="button-container">
        <a href="agregarVideo.jsp" class="button">Agregar un nuevo video</a>
        <a href="listarVideos.jsp" class="button">Ver lista de videos</a>
    </div>
    <div class="content-container">
        <img src="https://www.eltiempo.com/files/image_640_428/uploads/2018/10/30/5bd8b8f587e4c.jpeg" alt="Imagen de ejemplo">
        <p>Bienvenido a Rocola Virtual, tu reproductor de videos personalizado. Aquí puedes agregar, organizar y disfrutar de tus videos favoritos en un entorno único y atractivo. Simplemente haz clic en los botones de arriba para comenzar a construir tu lista de reproducción o explorar tus videos.</p>
        <p>Con Rocola Virtual, la diversión nunca termina. ¡Disfruta de tu música y videos en cualquier momento y en cualquier lugar!</p>
    </div>
</body>
</html>