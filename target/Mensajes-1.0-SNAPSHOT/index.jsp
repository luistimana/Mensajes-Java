<%-- 
    Document   : index
    Created on : 12 dic. 2021, 18:34:54
    Author     : Luis Timana
--%>

<%@page import="com.mycompany.mensajes.Mensaje"%>
<%@page import="java.util.*"%>
<%@page import="com.mycompany.mensajes.MensajesDao"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Mensajes</title>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
    </head>
    <body>
        <div class="modal-dialog">
            <div class="modal-content">
                <form action="index.jsp" method = "POST">
                    <div class="modal-header">
                        <h5 class="modal-title">Crear Mensaje</h5>
                    </div>
                    <div class="modal-body">

                        <div class="form-group">
                            <label>Ingrese el mensaje</label>
                            <textarea class="form-control" name = "mensaje" rows="3"></textarea>
                        </div>
                        <div class="form-group">
                            <label>Autor</label>
                            <input type="text" class="form-control" name = "autor">
                        </div>

                    </div>
                    <div class="modal-footer">
                        <button type="submit" class="btn btn-primary" name="enviar">Enviar</button>
                    </div>
                </form>
            </div>
        </div>
        <%
            MensajesDao mensajeDao = new MensajesDao();
            
            if(request.getParameter("enviar") != null){
                 Mensaje mensaje = new Mensaje(
                    request.getParameter("mensaje"), 
                    request.getParameter("autor")
                );
                
                mensajeDao.insertar(mensaje);
            }
        %>
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title">Todos los mensajes</h5>
                </div>
                <%
                    //MensajesDao mensajeDao = new MensajesDao();
                    List<Mensaje> mensajes = mensajeDao.seleccionar();
                    
                    Collections.reverse(mensajes);
                    
                    for (Mensaje mensaje : mensajes){
                            
                 %>
                <div class="modal-body">
                    <div class="card">
                        <div class="card-body">
                            <h5 class="card-title"><%=mensaje.getAutor()%></h5>

                            <p class="card-text"><%=mensaje.getMensaje()%></p>
                            <p class="blockquote-footer"><cite><%=mensaje.getFecha()%></cite></p>
                            <a href="editar.jsp?id=
                               <%=mensaje.getId()%>
                               &&mensaje=<%=mensaje.getMensaje()%>
                               &&autor=<%=mensaje.getAutor()%>" 
                               class="card-link">Editar</a>
                            <a href="eliminar.jsp?id=<%=mensaje.getId()%>" class="card-link">Eliminar</a>
                        </div>
                    </div>
                </div>
                <%}%>
            </div>
        </div>
    </body>
</html>
