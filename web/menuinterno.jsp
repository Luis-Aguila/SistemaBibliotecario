<%-- 
    Document   : menuinterno
    Created on : 11-may-2018, 20:42:56
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
            <!--Menu interno de opciones y redirecciones de página-->
            <div class="container-fluid seccion-menu">
                <div class="row">
                    <div class="col-12 menu-colapse">
                        <div class="pos-f-t">
                            <nav class="navbar navbar-dark menu">
                                <div class="logo-interno">
                                    <a href="index.jsp">
                                        <img src="images/logo.png">
                                    </a>
                                </div>

                                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#contenido-menu" aria-controls="contenido-menu" aria-expanded="false" aria-label="Toggle navigation">
                                <span class="navbar-toggler-icon"></span>
                            </button>
                            </nav>
                        </div>
                    </div>
                    <div class="col-12 collapse" id="contenido-menu">
                        <div class="sub-menu p-4">
                            <div class="row">
                                <div class="col-6">
                                    <div class="row">
                                        <h5>Menu</h5>
                                    </div>
                                    <div class="row">
                                        <div class="col-4">
                                            <ul>
                                                <li><a href="home.jsp?pag=libros"><i class="fas fa-book"></i>Libros</a></li>
                                                <li><a href="home.jsp?pag=estudiantes"><i class="fas fa-graduation-cap"></i>Estudiantes</a></li>
                                                <li><a href="home.jsp?pag=docentes"><i class="fas fa-angle-double-up"></i>Docentes</a></li>
                                                <li><a href="home.jsp?pag=estadodevoluciones"><i class="fas fa-server"></i>Estado de Solicitudes</a></li>
                                            </ul>
                                        </div>
                                        <div class="col-4">
                                            <ul>
                                                <li><a href="home.jsp?pag=ingresolibro"><i class="fas fa-sign-in-alt"></i>Ingreso de Libros</a></li>
                                                <li><a href="home.jsp?pag=nuevosolicitante"><i class="fas fa-plus-circle"></i>Nuevo Solicitante</a></li>
                                                <li><a href="home.jsp?pag=solicitudprestamo"><i class="fab fa-accusoft"></i>Solicitud de Prestamo</a></li>
                                            </ul>
                                        </div>
                                        <div class="col-4">
                                            <ul>
                                                <li><a href="home.jsp?pag=perfil"><i class="far fa-address-card"></i>Mi Perfil</a></li>
                                                <li><a href="login.jsp?cerrar=true"><i class="fas fa-power-off"></i>Salir</a></li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-3">
                                    <div class="row">
                                        <h5>Nosotros</h5>
                                    </div>
                                    <div class="row">
                                        <ul>
                                            <li><a href="index.jsp#secciones"><i class="far fa-newspaper"></i>Secciones</a></li>
                                            <li><a href="index.jsp#noticias"><i class="fas fa-ticket-alt"></i>Noticias</a></li>
                                        </ul>
                                    </div>
                                </div>
                                <div class="col-3">
                                    <div class="row">
                                        <h5>Siganos</h5>
                                    </div>
                                    <div class="row">
                                        <ul>
                                            <li><a href="#"><i class="fab fa-facebook-f" aria-hidden="true"></i> Facebook</a></li>
                                            <li><a href="#"><i class="fab fa-twitter" aria-hidden="true"></i> Twitter</a></li>
                                            <li><a href="#"><i class="fab fa-youtube" aria-hidden="true"></i> YouTube</a></li>
                                        </ul>
                                    </div>

                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <div class="buscador-internas container">
                <div class="formulario-interno">
                    <form action="ingresolibrocontroller.do" method="post" class="form-inline">
                        <input type="text" class="form-control" name="busquedalibro" placeholder="Busqueda por titulo, Autor o Editorial..." required="">
                        <button type="submit" name="btn_busquedalibro"><span><i class="fab fa-sistrix"></i></span></button>
                    </form>
                </div>
            </div>




        </body>

        </html>