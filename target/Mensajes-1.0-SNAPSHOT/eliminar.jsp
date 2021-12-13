<%-- 
    Document   : eliminar
    Created on : 12 dic. 2021, 20:50:23
    Author     : Luis Timana
--%>

<%@page import="com.mycompany.mensajes.Mensaje"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="com.mycompany.mensajes.MensajesDao"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            String id = request.getParameter("id");
            Mensaje mensaje = new Mensaje(Integer.valueOf(id));
            MensajesDao mensajeDao = new MensajesDao();
            mensajeDao.eliminar(mensaje);
            request.getRequestDispatcher("index.jsp").forward(request, response);
        %>
    </body>
</html>
