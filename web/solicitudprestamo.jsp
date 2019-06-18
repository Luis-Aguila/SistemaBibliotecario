<%-- 
    Document   : solicitudprestamo
    Created on : 15-may-2018, 12:04:41
    Author     : boy-l
--%>

    <%@page contentType="text/html" pageEncoding="UTF-8"%>
        <!DOCTYPE html>
        <html>

        <head>
            <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
            <title>JSP Page</title>
        </head>

        <body>
            <!--Titulo de Página-->
            <div class="container-fluid">
                <div class="row titulo-interno d-flex justify-content-center">
                    <div class="row">
                        <div class="col-12">
                            <h2><i class="fab fa-accusoft"></i>Solicitud de Prestamos de Libros</h2>
                        </div>
                    </div>

                </div>
            </div>



            <!--Formulario de solicitud de prestamo-->
            <div class="container-fluid cuerpo-solicitudprestamo">
                <div class="container subcuerpo-solicitudprestamo">

                    <div class="row">
                        <div class="col-8 offset-2" id="formulario-solicitudprestamo">
                            <h3>Solicitud de Prestamos</h3>
                            <div class="formulariosinternosingreso">
                                <form action="prestamocontroller.do" method="post">
                                    <div class="form-group">
                                        <label for="idsolicitante">Rut Solicitante</label>
                                        <input type="text" class="form-control" id="idsolicitante" name="rutsolicitante" placeholder="Rut Solicitante" required="">
                                        <small id="emailHelp" class="form-text text-muted">Asegrese de Escribir de manera correcta el rut del solicitante</small>
                                    </div>
                                    <div class="form-group">
                                        <label for="descripcionprestamo">Descripción del prestamo</label>
                                        <input type="text" class="form-control" id="descripcionprestamo" name="observacionsolicitud" placeholder="Observaciones..." required="">
                                    </div>
                                    <button type="submit" class="btn btn-primary" name="btn_enviarsolicitud">Enviar Solicitud</button>
                                </form>
                            </div>
                        </div>
                    </div>




                </div>
            </div>
















        </body>

        </html>