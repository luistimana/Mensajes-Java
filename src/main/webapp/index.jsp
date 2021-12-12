<%-- 
    Document   : index
    Created on : 12 dic. 2021, 18:34:54
    Author     : Luis Timana
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
    </head>
    <body>
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title">Crear Mensaje</h5>
                </div>
                <div class="modal-body">
                    <form>
                        <div class="form-group">
                            <label>Ingrese el mensaje</label>
                            <textarea class="form-control" name = "mensaje" rows="3"></textarea>
                        </div>
                        <div class="form-group">
                            <label>Autor</label>
                            <input type="text" class="form-control">
                        </div>

                    </form>
                </div>
                <div class="modal-footer">

                    <button type="button" class="btn btn-primary" name="enviar">Enviar</button>
                </div>
            </div>
        </div>

        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title">Todos los mensajes</h5>
                </div>
                <div class="modal-body">
                    <div class="card">
                        <div class="card-body">
                            <h5 class="card-title">Luis Timaná</h5>
                            
                            <p class="card-text">Mensaje corto.</p>
                            <p class="blockquote-footer"><cite>12/12/2021</cite></p>
                            <a href="#" class="card-link">Editar</a>
                            <a href="#" class="card-link">Eliminar</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>



    </body>
</html>
