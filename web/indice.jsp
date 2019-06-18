<%-- 
    Document   : indice
    Created on : 29-may-2018, 19:54:51
    Author     : boy-l
--%>

    <%@page import="java.text.SimpleDateFormat"%>
        <%@page import="java.util.Date"%>
            <%@page contentType="text/html" pageEncoding="UTF-8"%>
                <!DOCTYPE html>
                <html>

                <head>
                    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
                    <title>JSP Page</title>

                </head>

                <body>
                    <div class="row">
                        <div class="col-6 offset-3">
                            <div class="card-deck targeta-perfil">
                                <div class="card">
                                    <div class="titulo-perfil">
                                        <div class="row">
                                            <div class="col-1">
                                                <div class="menu-perfil">
                                                    <div class="dropdown">
                                                        <button class="btn btn-link dropdown-toggle" type="button" id="menu_perfil" data-toggle="dropdown" aria-haspopup="true" aria-expanded="true">
                                                        <i class="fas fa-ellipsis-v"></i>
                                                    </button>
                                                        <ul class="dropdown-menu" aria-labelledby="menu_perfil">
                                                            <li><a href="#">Editar Perfil</a></li>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-11">

                                            </div>

                                        </div>
                                    </div>
                                    <!--Imagen de perfil-->
                                    <center>
                                        <img class="center-block" src="images/smile-perfil.png" alt="Card image cap">
                                    </center>

                                    <div class="card-body">
                                        <h5 class="card-title">Información adicional</h5>
                                        <div class="row">
                                            <!--Consulta  abase de datos del arrendatario y captura información-->
                                            <%
                                            String user = (String)request.getSession().getAttribute("arrendatario");
                                            sqlestudiante="SELECT e.rut_estudiante, e.nombre_estudiante, e.apellido_estudiante, e.direccion_estudiante, e.telefono_estudiante, e.anioestudio_estudiante, c.nombre_carrera, ee.nombre_estadoestudiante FROM estudiante e JOIN carrera c ON (e.Carrera_id_carrera = c.id_carrera) JOIN estadoestudiante ee ON (e.estadoestudiante_id_estadoestudiante = ee.id_estadoestudiante) WHERE e.rut_estudiante = '17298998-5' ";
                                            sqldocente="SELECT rut_docente, nombre_docente, apellido_docente, direccion_docente, telefono_docente, nombre_estadodocente FROM docente d JOIN estadodocente ed ON (d.EstadoDocente_id_estadodocente = ed.id_estadodocente) WHERE rut_docente = '"+user+"'";

                                            String rutestudiante = "";
                                            String rutdocente = "";
                                            String nombreestudiante = "";
                                            String nombredocente = "";
                                            String apellidoestudiante = "";
                                            String apellidodocente = "";
                                            String direccionestudiante = "";
                                            String direcciondocente = "";
                                            String telefonoestudiante = "";
                                            String telefonodocente = "";
                                            String anioestudio = "";
                                            String carrera = "";
                                            String estadoestudiante = "";
                                            String estadodocente = "";
                                            
                                            int contadorestudiante = 0;
                                            int contadordocente = 0;
                                            
                                            ResultSet rsestudiante = con.executeQuery (sqlestudiante);
                                            while (rsestudiante.next()){
                                                rutestudiante = rsestudiante.getString("rut_estudiante");
                                                nombreestudiante = rsestudiante.getString("nombre_estudiante");
                                                apellidoestudiante = rsestudiante.getString("apellido_estudiante");
                                                direccionestudiante = rsestudiante.getString("direccion_estudiante");
                                                telefonoestudiante = rsestudiante.getString("telefono_estudiante");
                                                anioestudio = rsestudiante.getString("anioestudio_estudiante");
                                                carrera = rsestudiante.getString("nombre_carrera");
                                                estadoestudiante = rsestudiante.getString("nombre_estadoestudiante");

                                                contadorestudiante = contadorestudiante + 1;
                                            }

                                            ResultSet rsdocente = con.executeQuery (sqldocente);
                                            while (rsdocente.next()){
                                                rutdocente = rsdocente.getString("rut_docente");
                                                nombredocente = rsdocente.getString("nombre_docente");
                                                apellidodocente = rsdocente.getString("apellido_docente");
                                                direcciondocente = rsdocente.getString("direccion_docente");
                                                telefonodocente = rsdocente.getString("telefono_docente");
                                                estadodocente = rsdocente.getString("nombre_estadodocente");

                                                contadordocente = contadordocente + 1;
                                            }
                                            
                                            if(contadorestudiante >= 1){
                                            
                                        %>
                                                <!--Información de arrendatario-->
                                                <div class="col-4">
                                                    <p><strong>Nombres   </strong></p>
                                                    <p><strong>Apellidos </strong></p>
                                                    <p><strong>Rut       </strong></p>
                                                    <p><strong>Dirección </strong></p>
                                                    <p><strong>Teléfono  </strong></p>
                                                    <p><strong>Años estudio</strong></p>
                                                    <p><strong>Carrea</strong></p>
                                                    <p><strong>Situación</strong></p>
                                                </div>
                                                <div class="col-8">
                                                    <p><strong>:</strong>
                                                        <%out.println(nombreestudiante);%>
                                                    </p>
                                                    <p><strong>:</strong>
                                                        <%out.println(apellidoestudiante);%>
                                                    </p>
                                                    <p><strong>:</strong>
                                                        <%out.println(rutestudiante);%>
                                                    </p>
                                                    <p><strong>:</strong>
                                                        <%out.println(direccionestudiante);%>
                                                    </p>
                                                    <p><strong>:</strong>
                                                        <%out.println(telefonoestudiante);%>
                                                    </p>
                                                    <p><strong>:</strong>
                                                        <%out.println(anioestudio);%>
                                                    </p>
                                                    <p><strong>:</strong>
                                                        <%out.println(carrera);%>
                                                    </p>
                                                    <p><strong>:</strong>
                                                        <%out.println(estadoestudiante);%>
                                                    </p>
                                                </div>
                                                <%}else{%>
                                                    <div class="col-4">
                                                        <p><strong>Nombres   </strong></p>
                                                        <p><strong>Apellidos </strong></p>
                                                        <p><strong>Rut       </strong></p>
                                                        <p><strong>Dirección </strong></p>
                                                        <p><strong>Teléfono  </strong></p>
                                                        <p><strong>Situación</strong></p>
                                                    </div>
                                                    <div class="col-8">
                                                        <p><strong>:</strong>
                                                            <%out.println(nombredocente);%>
                                                        </p>
                                                        <p><strong>:</strong>
                                                            <%out.println(apellidodocente);%>
                                                        </p>
                                                        <p><strong>:</strong>
                                                            <%out.println(rutdocente);%>
                                                        </p>
                                                        <p><strong>:</strong>
                                                            <%out.println(direcciondocente);%>
                                                        </p>
                                                        <p><strong>:</strong>
                                                            <%out.println(telefonodocente);%>
                                                        </p>
                                                        <p><strong>:</strong>
                                                            <%out.println(estadodocente);%>
                                                        </p>
                                                    </div>
                                                    <%}%>
                                        </div>

                                    </div>
                                </div>
                            </div>
                        </div>

                    </div>

                    <div class="tablaestudiantesolicitudes">
                        <div class="row">
                            <div class="col-12">
                                <h4>Solicitudes Pendientes</h4>
                                <!--Formulario de solicitudes pendientes-->
                                <table class="table">
                                    <thead class="headertabla">
                                        <tr>
                                            <th>Código</th>
                                            <th>Detalle</th>
                                            <th>Titulo</th>
                                            <th>Autor</th>
                                            <th>Editorial</th>
                                            <th>Usuario</th>
                                            <th>Situación</th>
                                            <th>Estado</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <!--Consulta a base de datos si el arrendatario posee pendientes segun sus estados-->
                                        <%
                                            String sqlactivas="SELECT id_prestamo, descripcion_prestamo, nombre_libro, nombre_autor, nombre_editorial, Usuario_rut_usuario, nombre_estadoprestamo FROM prestamo p JOIN libro l ON (p.libro_id_libro = l.id_libro) JOIN autor a ON (l.Autor_id_autor = a.id_autor) JOIN editorial e ON (l.Editorial_id_editorial = e.id_editorial) JOIN estadoprestamo ep ON (p.estadoprestamo_id_estadoprestamo = ep.id_estadoprestamo) WHERE id_arrendatario = '"+user+"' AND estadoprestamo_id_estadoprestamo = 1";
                                 
                                            ResultSet rsprespendientes = con.executeQuery (sqlactivas);
                                            while (rsprespendientes.next()){
                                                fentrega = rsprespendientes.getString("fechaentrega_prestamo");
                                                frecepcionestimada = rsprespendientes.getString("fechaentregaestimada_prestamo");
                                                factual = formato.format(fechaActual); 

                                                datefentrega = formato.parse(fentrega);
                                                datefrecepcionestimada = formato.parse(frecepcionestimada);
                                                datefactual = formato.parse(factual);
                                                
                                                if((int)((datefactual.getTime()-datefentrega.getTime())/86400000) > 2){
                                                    int dias = (int)((datefactual.getTime()-datefrecepcionestimada.getTime())/86400000);
                                                    mensaje = "Atrasado por, " + dias + " dias.";
                                                }else{
                                                    mensaje = "Al dia";
                                                }
                                        %>
                                            <tr>
                                                <th scope="row">
                                                    <%out.println(rsprespendientes.getString("id_prestamo"));%>
                                                </th>
                                                <th scope="row">
                                                    <%out.println(rsprespendientes.getString("descripcion_prestamo"));%>
                                                </th>
                                                <th scope="row">
                                                    <%out.println(rsprespendientes.getString("nombre_libro"));%>
                                                </th>
                                                <th scope="row">
                                                    <%out.println(rsprespendientes.getString("nombre_autor"));%>
                                                </th>
                                                <th scope="row">
                                                    <%out.println(rsprespendientes.getString("nombre_editorial"));%>
                                                </th>
                                                <th scope="row">
                                                    <%out.println(rsprespendientes.getString("Usuario_rut_usuario"));%>
                                                </th>
                                                <th scope="row">
                                                    <%out.println(mensaje);%>
                                                </th>
                                                <th scope="row">
                                                    <%out.println(rsprespendientes.getString("nombre_estadoprestamo"));%>
                                                </th>
                                            </tr>
                                            <%}%>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                    <div class="tablaestudiantesolicitudes">
                        <div class="row">
                            <div class="col-12">
                                <h4>Historial de solicitudes</h4>
                                <!--Tabla de historial de solicitudes realizadas por el arrendatario-->
                                <table class="table">
                                    <thead class="headertabla">
                                        <tr>
                                            <th>Código</th>
                                            <th>Detalle</th>
                                            <th>Titulo</th>
                                            <th>Autor</th>
                                            <th>Editorial</th>
                                            <th>Usuario</th>
                                            <th>Situación</th>
                                            <th>Estado</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <!--Solicitud a base de datos-->
                                        <%
                                            String sqlhistorial="SELECT id_prestamo, descripcion_prestamo, nombre_libro, nombre_autor, nombre_editorial, Usuario_rut_usuario, nombre_estadoprestamo FROM prestamo p JOIN libro l ON (p.libro_id_libro = l.id_libro) JOIN autor a ON (l.Autor_id_autor = a.id_autor) JOIN editorial e ON (l.Editorial_id_editorial = e.id_editorial) JOIN estadoprestamo ep ON (p.estadoprestamo_id_estadoprestamo = ep.id_estadoprestamo) WHERE id_arrendatario = '"+user+"'";
                                 
                                            ResultSet rshistorial = con.executeQuery (sqlhistorial);
                                            while (rshistorial.next()){
                                                fentrega = rshistorial.getString("fechaentrega_prestamo");
                                                frecepcionestimada = rshistorial.getString("fechaentregaestimada_prestamo");
                                                factual = formato.format(fechaActual); 

                                                datefentrega = formato.parse(fentrega);
                                                datefrecepcionestimada = formato.parse(frecepcionestimada);
                                                datefactual = formato.parse(factual);
                                                
                                                if((int)((datefactual.getTime()-datefentrega.getTime())/86400000) > 2){
                                                    int dias = (int)((datefactual.getTime()-datefrecepcionestimada.getTime())/86400000);
                                                    mensaje = "Atrasado por, " + dias + " dias.";
                                                }else{
                                                    mensaje = "Al dia";
                                                }
                                        %>
                                            <tr>
                                                <th scope="row">
                                                    <%out.println(rshistorial.getString("id_prestamo"));%>
                                                </th>
                                                <th scope="row">
                                                    <%out.println(rshistorial.getString("descripcion_prestamo"));%>
                                                </th>
                                                <th scope="row">
                                                    <%out.println(rshistorial.getString("nombre_libro"));%>
                                                </th>
                                                <th scope="row">
                                                    <%out.println(rshistorial.getString("nombre_autor"));%>
                                                </th>
                                                <th scope="row">
                                                    <%out.println(rshistorial.getString("nombre_editorial"));%>
                                                </th>
                                                <th scope="row">
                                                    <%out.println(rshistorial.getString("Usuario_rut_usuario"));%>
                                                </th>
                                                <th scope="row">
                                                    <%out.println(mensaje);%>
                                                </th>
                                                <th scope="row">
                                                    <%out.println(rshistorial.getString("nombre_estadoprestamo"));%>
                                                </th>
                                            </tr>
                                            <%}%>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>


                </body>

                </html>