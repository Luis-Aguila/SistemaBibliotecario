
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
    <head>
        
        
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        
        
        <!--Cargando Iconos-->
        <link rel="stylesheet" href="css/fontawesome-all.css"  type="text/css">
        
        <!--Carga de archivos css-->
        <link rel="stylesheet" href="css/bootstrap.css">
        <link rel="stylesheet" href="css/estilos.css">
        <link rel="stylesheet" href="css/responsiveslides.css">
        
        
        
    </head>
    <body>
        <div class="container-fluid index">
            <main class="cabezera slider-wrap">
                <ul class="rslides">
		    <li><img src="images/index-01.jpg" alt=""></li>
                    <li><img src="images/index-02.jpg" alt=""></li>
                    <li><img src="images/index-03.png" alt=""></li>
                    <li><img src="images/index-04.jpg" alt=""></li>
                    <li><img src="images/index-05.jpg" alt=""></li>
                    <li><img src="images/index-06.jpg" alt=""></li>
                    <li><img src="images/index-07.jpg" alt=""></li>
                    <li><img src="images/index-08.jpg" alt=""></li>
		</ul>
                <div class="slider-container">
                    <div class="row">
                        <div class="col-11">
                            <div class="acerca">
                                <div class="dropdown menu-acerca-portada">
                                    <button class="btn btn-link dropdown-toggle po-btn-acerca" type="button" id="menu_acerca_portada" data-toggle="dropdown" aria-haspopup="true" aria-expanded="true">
                                        <span class="logo font-weight-bold">Acerca de Nosotros</span>
                                        <span class="caret"></span>
                                    </button>
                                    <ul class="dropdown-menu" aria-labelledby="menu_acerca_portada">
                                        <li><a href="#secciones">Secciones</a></li>
                                        <li><a href="#noticias">Noticias</a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                        <div class="col-1">
                            <div class="siganos">
                                <div class="dropdown pull-right menu-siganos-portada">
                                    <button class="btn btn-link dropdown-toggle" type="button" id="menu_siganos_portada" data-toggle="dropdown" aria-haspopup="true" aria-expanded="true">
                                        <span class="sr-only">Compartir</span><span class="fa fa-share-alt-square fa-3x"></span>
                                    </button>
                                    <ul class="dropdown-menu" aria-labelledby="menu_siganos_portada">
                                        <li><a href="#"><i class="fab fa-facebook-f" aria-hidden="true"></i> Facebook</a></li>
                                        <li><a href="#"><i class="fab fa-twitter" aria-hidden="true"></i> Twitter</a></li>
                                        <li><a href="#"><i class="fab fa-youtube" aria-hidden="true"></i> YouTube</a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="titulo-index">
                        <h4 class="text-center">B i b l i o t e c a     U n i v e r s i t a r i a</h4>
                    </div>
                    <div class="row titulo">
                        <div class="logo-portada">
                            <a href="index.jsp">
                                <img src="images/logo.png" >
                            </a>
                        </div>
                    </div>
                    <div class="buscador-horizontal container">
                        <div class="formulario">
                            <form action="ingresolibrocontroller.do" method="post" class="form-inline" name="form">
                                <input type="text" class="form-control" name="busquedalibro" placeholder="Busqueda por titulo, Autor o Editorial..." required="">
                                <button type="submit" name="btn_busquedalibro"><span><i class="fab fa-sistrix"></i></span></button>
                            </form>
                        </div>
                    </div>
                </div>
                
            </main>
            
            
            
            
            
            
            <div class="menu-index">
                <ul class="item-menu">
                    <li>
                        <a href="home.jsp?pag=ingresolibro">
                            <span class="icono">
                                <i class="fas fa-sign-in-alt"></i>
                            </span>
                            <p>Ingreso de Libros</p>
                        </a>
                    </li>
                    <li>
                        <a href="home.jsp?pag=libros">
                            <span class="icono">
                                <i class="fas fa-book"></i>
                                <br>
                                <p>Libros</p>
                            </span>
                            
                        </a>
                    </li>
                    <li>
                        <a href="home.jsp?pag=nuevosolicitante">
                            <span class="icono">
                                <i class="fas fa-plus-circle"></i>
                            </span>
                            <p>Nuevo Solicitante</p>
                        </a>
                    </li>
                    <li>
                        <a href="home.jsp?pag=estudiantes">
                            <span class="icono">
                                <i class="fas fa-graduation-cap"></i>
                            </span>
                            <p>Estudiantes</p>
                        </a>
                    </li>
                    <li>
                        <a href="home.jsp?pag=docentes">
                            <span class="icono">
                                <i class="fas fa-angle-double-up"></i>
                            </span>
                            <p>Docentes</p>
                        </a>
                    </li>
                    <li>
                        <a href="home.jsp?pag=solicitudprestamo">
                            <span class="icono">
                                <i class="fab fa-accusoft"></i>
                            </span>
                            <p>Solicitud de Prestamo</p>
                        </a>
                    </li>
                    <li>
                        <a href="home.jsp?pag=estadodevoluciones">
                            <span class="icono">
                                <i class="fas fa-server"></i>
                            </span>
                            <p>Estado de Solicitudes</p>
                        </a>
                    </li>
                    <li>
                        <a href="home.jsp?pag=perfil">
                            <span class="icono">
                                <i class="far fa-address-card"></i>
                            </span>
                            <p>Mi Perfil</p>
                        </a>
                    </li>
                    <li>
                        <a href="login.jsp?cerrar=true">
                            <span class="icono">
                                <i class="fas fa-power-off"></i>
                            </span>
                            <p>Salir</p>
                        </a>
                    </li>
                </ul>
            </div>
            
            <div class="container targetas" id="secciones">
                <div class="row">
                    <div class="col-3">
                        <div class="card-deck">
                            <div class="card">
                                <img class="card-img-top" src="images/memoriachilena.jpg" alt="Card image cap">
                                <div class="card-body">
                                    <h5 class="card-title">Memoria Chilena</h5>
                                    <a href="#" class="card-text">Pedro Aguirre Cerda (1879-1941)</a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-3">
                        <div class="card-deck">
                            <div class="card">
                                <img class="card-img-top" src="images/fondosycolecciones.jpg" alt="Card image cap">
                                <div class="card-body">
                                    <h5 class="card-title">Fondos y Colecciones</h5>
                                    <a href="#" class="card-text">Sala Medina</a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-3">
                        <div class="card-deck">
                            <div class="card">
                                <img class="card-img-top" src="images/bibliotecasterritoriales.jpg" alt="Card image cap">
                                <div class="card-body">
                                    <h5 class="card-title">Bibliotecas Territoriales</h5>
                                    <a href="#" class="card-text">Recoleta</a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-3">
                        <div class="card-deck">
                            <div class="card">
                                <img class="card-img-top" src="images/archivodelawebchilena.jpg" alt="Card image cap">
                                <div class="card-body">
                                    <h5 class="card-title">Archivo de la Web chilena</h5>
                                    <a href="#" class="card-text">Sitios Web Dibam</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                
                <div class="row">
                    <div class="col-3">
                        <div class="card-deck">
                            <div class="card">
                                <img class="card-img-top" src="images/visitasvirtuales.jpg" alt="Card image cap">
                                <div class="card-body">
                                    <h5 class="card-title">Visitas virtuales</h5>
                                    <a href="#" class="card-text">Depósito circular, Periódicos</a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-3">
                        <div class="card-deck">
                            <div class="card">
                                <img class="card-img-top" src="images/chileparaniños.jpg" alt="Card image cap">
                                <div class="card-body">
                                    <h5 class="card-title">Chile para Niños</h5>
                                    <a href="#" class="card-text">Actividades</a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-3">
                        <div class="card-deck">
                            <div class="card">
                                <img class="card-img-top" src="images/presidentesdechile.jpg" alt="Card image cap">
                                <div class="card-body">
                                    <h5 class="card-title">Historia</h5>
                                    <a href="#" class="card-text">Presidentes de Chile del Siglo XX</a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-3">
                        <div class="card-deck">
                            <div class="card">
                                <img class="card-img-top" src="images/bibliotecarioenlinea.jpg" alt="Card image cap">
                                <div class="card-body">
                                    <h5 class="card-title">Bibliotecario en Línea</h5>
                                    <a href="#" class="card-text">Chat y solicitudes en linea</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="noticias" id="noticias">
                <div class="container">
                    <div class="card">
                        <h4>Noticias</h4>
                        <div class="row ficha-noticia">
                            <div class="fecha-noticia col-2">
                                <p><strong>06/05/2018</strong></p>
                            </div>
                            <div class="card-body col-10">
                                <p class="text-justify">
                                    Temas de cine, fotografía, museos, literatura, historia y ciencias sociales, entre otras, están entre las nuevas investigaciones. En total, la Biblioteca Nacional digitalizará 135 mil páginas este año: 60 mil de ellas serán difundidas en minisitios y cápsulas de Memoria Chilena y 75 mil en la Biblioteca Nacional Digital.
                                </p>
                            </div>
                        </div>
                        <div class="row ficha-noticia">
                            <div class="fecha-noticia col-2">
                                <p><strong>06/05/2018</strong></p>
                            </div>
                            <div class="card-body col-10">
                                <p class="text-justify">
                                    Temas de cine, fotografía, museos, literatura, historia y ciencias sociales, entre otras, están entre las nuevas investigaciones. En total, la Biblioteca Nacional digitalizará 135 mil páginas este año: 60 mil de ellas serán difundidas en minisitios y cápsulas de Memoria Chilena y 75 mil en la Biblioteca Nacional Digital.
                                </p>
                            </div>
                        </div>
                        <div class="row ficha-noticia">
                            <div class="fecha-noticia col-2">
                                <p><strong>06/05/2018</strong></p>
                            </div>
                            <div class="card-body col-10">
                                <p class="text-justify">
                                    Temas de cine, fotografía, museos, literatura, historia y ciencias sociales, entre otras, están entre las nuevas investigaciones. En total, la Biblioteca Nacional digitalizará 135 mil páginas este año: 60 mil de ellas serán difundidas en minisitios y cápsulas de Memoria Chilena y 75 mil en la Biblioteca Nacional Digital.
                                </p>
                            </div>
                        </div>
                        
                    </div>
                </div>
                
            </div>
            
            
            
            
            
        </div>
        
        
        
        <footer class="piepagina">
            <div class="container">
                <p>2018 © Universidad Santo Román Todos los derechos reservados</p>
                <ul class="redes-sociales">
                    <li><a href="#"><i class="fab fa-facebook-f" aria-hidden="true"></i></a></li>
                    <li><a href="#"><i class="fab fa-twitter" aria-hidden="true"></i></a></li>
                    <li><a href="#"><i class="fab fa-youtube" aria-hidden="true"></i></a></li>
                </ul>
            </div>
        </footer>
        
        
        
        
        <!--Carga de archivos js-->
        <script src="js/jquery-3.3.1.min.js"></script>
        <script src="js/popper.min.js"></script>
        <script src="js/bootstrap.min.js"></script>
        <script src="js/responsiveslides.min.js"></script>
        <!--
        <script>
	  $(function() {
	    $(".rslides").responsiveSlides({
	    	timeout: 5000
	    });
	  });
	</script>
        
        <script>
            $("#btn_busquedalibro").click(function(event) {
                $("#tablalibrosolicitud").load('prueba.jsp');
            });
        </script>
        -->
        <script src="js/sitio.js"></script>
    </body>
</html>
