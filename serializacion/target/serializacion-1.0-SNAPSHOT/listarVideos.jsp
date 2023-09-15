<%-- 
    Document   : listarVideo
    Created on : 4 sept 2023, 22:41:09
    Author     : juand
--%>

<%@page import="java.io.ObjectInputStream"%>
<%@page import="java.io.FileInputStream"%>
<%@page import="java.io.File"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.jd.serializacion.Video"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Listar Videos</title>
    <style>
        :root {
            --background-image: url('https://media.giphy.com/media/iCIfArhwFACtO/giphy.gif'); /* Cambia 'fondo.jpg' por la ruta de tu imagen de fondo */
        }

        body {
            font-family: Arial, sans-serif;
            background-image: var(--background-image);
            background-size: cover;
            background-repeat: no-repeat;
            background-attachment: fixed;
            margin: 0;
            padding: 0;
        }

        h1 {
            font-size: 24px;
            text-align: center;
            padding: 20px;
            background-color: rgba(0, 123, 255, 0.8);
            color: #fff;
        }

        .video-container {
            background-color: rgba(255, 255, 255, 0.7);
            padding: 20px;
            margin: 10px auto;
            max-width: 60%; /* Ancho máximo del contenedor reducido */
            border-radius: 5px;
            box-shadow: 0 0 5px rgba(0, 0, 0, 0.3);
            text-align: left;
        }

        .video-item strong {
            color: #007BFF;
        }

        /* Estilos para centrar el texto */
        .video-container p {
            text-align: center;
            margin: 10px 0;
        }
    </style>
</head>
<body>
    <h1>Listar Videos</h1>
    <a href="index.jsp">Volver al Menú</a>
    
    <%
        ArrayList<Video> misVideos = null;
        // Obtener la ruta real del archivo de datos
        String dataPath = application.getRealPath("/data/videos.ser");
        
        // Repetimos el proceso de carga de datos porque:
        // Si invocas directamente la página JSP de listar videos, el request no tiene el atributo que estás buscando
        // Es nulo, de ahí que te dé ese error. @RubioRic (Stack Overflow en español)
        
        File archivo = new File(dataPath);
        if (archivo.exists()) {
            FileInputStream fis = new FileInputStream(dataPath);
            ObjectInputStream ois = new ObjectInputStream(fis);
            misVideos  = (ArrayList<Video>) ois.readObject();
            ois.close();
            System.out.println("Datos de videos cargados exitosamente desde: " + dataPath);
        }
        
        // Obtener array list de la solicitud
        if (misVideos != null) {
            System.out.println("Se cargaron " + misVideos.size() + " videos exitosamente.");
            for (Video v : misVideos) {
    %>
                <div class="video-container">
                    <p><strong>IdVideo:</strong> <%= v.getIdVideo() %></p>
                    <p><strong>Titulo:</strong> <%= v.getTitulo() %></p>
                    <p><strong>Autor:</strong> <%= v.getAutor() %></p>
                    <p><strong>Año:</strong> <%= v.getAnio() %></p>
                    <p><strong>Categoria:</strong> <%= v.getCategoria() %></p>
                    <p><strong>Url:</strong> <%= v.getUrl() %></p>
                    <p><strong>Letra:</strong> <%= v.getLetra() %></p>
                </div>
    <%
            }
        } else {
            out.print("No hay videos disponibles.");
        }
    %>
    
</body>
</html>
