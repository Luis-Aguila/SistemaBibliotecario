<%-- 
    Document   : detallesolicitud
    Created on : 24-may-2018, 11:07:38
    Author     : boy-l
--%>
    <%@page import="java.text.SimpleDateFormat"%>
        <%@page import="java.util.Date"%>
            <%@page import="java.sql.ResultSet"%>
                <%@page contentType="text/html" pageEncoding="UTF-8"%>
                    <%
<!--Objeto de clase coneccion y atriburos-->
    Data.ConnectionClass con = new Data.ConnectionClass();
    String sqlestudiante = "";
    String sqldocente = "";
    Date fechaActual = new Date(); 
    SimpleDateFormat formato = new SimpleDateFormat("MM/dd/yyyy"); 

    String fentrega = "";
    String frecepcionestimada = "";
    String factual = ""; 
            
    Date datefentrega = null;
    Date datefrecepcionestimada = null;
    Date datefactual = null;
            
    String mensaje = "";
    int dias = 0;
    int diasatraso = 0;
%>
                        <html>

                        <head>
                            <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
                            <title>JSP Page</title>
                        </head>

                        <body>

                            <div class="container-fluid">
                                <div class="row titulo-interno d-flex justify-content-center">
                                    <div class="row">
                                        <div class="col-12">
                                            <!--Título de página-->
                                            <h2><i class="fab fa-accusoft"></i>Solicitud de Prestamos de Libros - Detalles</h2>
                                        </div>
                                    </div>

                                </div>
                            </div>


                            <div class="container-fluid cuerpo-detalleprestamo">
                                <div class="container subcuerpo-detalleprestamo">



                                    <div class="formulario-solicitud-prestamo">
                                        <h1 style="color: #004E4E;">Formulario de solicitud</h1>
                                        <div class="formulario-solicitud-prestamo-interno">
                                            <%
                        <!--Metodo de solicitud de datos a base de datos-->
                            String username = (String)request.getSession().getAttribute("user");
                            String idusername = null;
                            
                            String sqluser = "SELECT rut_usuario FROM usuario WHERE email_usuario = '"+username+"' ";
                            ResultSet rsusername = con.executeQuery (sqluser);
                            while (rsusername.next()){
                                idusername = rsusername.getString("rut_usuario");
                            }
                            
                            
                            
                            String solicitante = (String)request.getSession().getAttribute("solicitante");
                            String detalle = (String)request.getSession().getAttribute("detalle");
                            
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
                            int contadorsolicitud = 0;

                            sqlestudiante="SELECT rut_estudiante, nombre_estudiante, apellido_estudiante, direccion_estudiante, telefono_estudiante, anioestudio_estudiante, nombre_carrera, nombre_estadoestudiante FROM estudiante e JOIN carrera c ON (e.Carrera_id_carrera = c.id_carrera) JOIN estadoestudiante ee ON (e.EstadoEstudiante_id_estadoestudiante = ee.id_estadoestudiante) WHERE rut_estudiante = '"+solicitante+"' ";
                            sqldocente="SELECT rut_docente, nombre_docente, apellido_docente, direccion_docente, telefono_docente, nombre_estadodocente FROM docente d JOIN estadodocente ed ON (d.EstadoDocente_id_estadodocente = ed.id_estadodocente) WHERE rut_docente = '"+solicitante+"'";

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
                            <!--Si hay mas de un dato, se ingresan en una tabla-->
                            if(contadorestudiante >= 1){
                                %>
                                                <div class="tablaestudiante">
                                                    <div class="row">
                                                        <div class="col-12">
                                                            <h4>Alumno</h4>
                                                            <table class="table">
                                                                <thead class="headertabla">
                                                                    <tr>
                                                                        <th>Rut</th>
                                                                        <th>Nombres</th>
                                                                        <th>Apellidos</th>
                                                                        <th>Dirección</th>
                                                                        <th>Telefono</th>
                                                                        <th>Años Estudio</th>
                                                                        <th>Carrera</th>
                                                                        <th>Estado</th>
                                                                    </tr>
                                                                </thead>
                                                                <tbody>
                                                                    <tr>
                                                                        <th scope="row">
                                                                            <%out.println(rutestudiante);%>
                                                                        </th>
                                                                        <th scope="row">
                                                                            <%out.println(nombreestudiante);%>
                                                                        </th>
                                                                        <th scope="row">
                                                                            <%out.println(apellidoestudiante);%>
                                                                        </th>
                                                                        <th scope="row">
                                                                            <%out.println(direccionestudiante);%>
                                                                        </th>
                                                                        <th scope="row">
                                                                            <%out.println(telefonoestudiante);%>
                                                                        </th>
                                                                        <th scope="row">
                                                                            <%out.println(anioestudio);%>
                                                                        </th>
                                                                        <th scope="row">
                                                                            <%out.println(carrera);%>
                                                                        </th>
                                                                        <th scope="row">
                                                                            <%out.println(estadoestudiante);%>
                                                                        </th>
                                                                    </tr>
                                                                </tbody>
                                                            </table>
                                                        </div>
                                                    </div>
                                                </div>

                                                <%
                                    sqlestudiante="SELECT id_prestamo, descripcion_prestamo, nombre_libro, nombre_autor, nombre_editorial, Usuario_rut_usuario, nombre_estadoprestamo FROM prestamo p JOIN libro l ON (p.libro_id_libro = l.id_libro) JOIN autor a ON (l.Autor_id_autor = a.id_autor) JOIN editorial e ON (l.Editorial_id_editorial = e.id_editorial) JOIN estadoprestamo ep ON (p.estadoprestamo_id_estadoprestamo = ep.id_estadoprestamo) WHERE id_arrendatario = '"+solicitante+"' AND estadoprestamo_id_estadoprestamo = 1";
                                    int contadorprespendientes = 0;


                                    ResultSet rsprespendientes = con.executeQuery (sqlestudiante);
                                    while (rsprespendientes.next()){

                                        contadorprespendientes = contadorprespendientes + 1;
                                    }

                                    if(contadorprespendientes >=1){
                                        
                                        %>
                                                    <div class="tablaestudiantesolicitudes">
                                                        <div class="row">
                                                            <div class="col-12">
                                                                <h4>Solicitudes Pendientes</h4>
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
                                                                            <th>Castido</th>
                                                                            <th>Estado</th>
                                                                        </tr>
                                                                    </thead>
                                                                    <tbody>
                                                                        <%
                                                                
                                                                sqlestudiante="SELECT id_prestamo, descripcion_prestamo, fechaentrega_prestamo, fechaentregaestimada_prestamo, fecharecepcion_prestamo, totaldiasatraso_prestamo, nombre_libro, nombre_autor, nombre_editorial, Usuario_rut_usuario, nombre_estadoprestamo FROM prestamo p JOIN libro l ON (p.libro_id_libro = l.id_libro) JOIN autor a ON (l.Autor_id_autor = a.id_autor) JOIN editorial e ON (l.Editorial_id_editorial = e.id_editorial) JOIN estadoprestamo ep ON (p.estadoprestamo_id_estadoprestamo = ep.id_estadoprestamo) WHERE id_arrendatario = '"+solicitante+"' AND estadoprestamo_id_estadoprestamo = 1";
                                                                
                                                                ResultSet rsprespendientes2 = con.executeQuery (sqlestudiante);
                                                                while (rsprespendientes2.next()){
                                                                    fentrega = rsprespendientes2.getString("fechaentrega_prestamo");
                                                                    frecepcionestimada = rsprespendientes2.getString("fechaentregaestimada_prestamo");
                                                                    factual = formato.format(fechaActual); 

                                                                    datefentrega = formato.parse(fentrega);
                                                                    datefrecepcionestimada = formato.parse(frecepcionestimada);
                                                                    datefactual = formato.parse(factual);
                                                                    
                                                                    if((int)((datefactual.getTime()-datefentrega.getTime())/86400000) > 5){
                                                                        dias = (int)((datefactual.getTime()-datefrecepcionestimada.getTime())/86400000);
                                                                        mensaje = "Atrasado por, " + dias + " dias.";
                                                                        if(diasatraso < dias){
                                                                            diasatraso = dias;
                                                                        }
                                                                        
                                                                    }else{
                                                                        mensaje = "Al dia";
                                                                    }
                                                            %>
                                                                            <tr>
                                                                                <th scope="row">
                                                                                    <%out.println(rsprespendientes2.getString("id_prestamo"));%>
                                                                                </th>
                                                                                <th scope="row">
                                                                                    <%out.println(rsprespendientes2.getString("descripcion_prestamo"));%>
                                                                                </th>
                                                                                <th scope="row">
                                                                                    <%out.println(rsprespendientes2.getString("nombre_libro"));%>
                                                                                </th>
                                                                                <th scope="row">
                                                                                    <%out.println(rsprespendientes2.getString("nombre_autor"));%>
                                                                                </th>
                                                                                <th scope="row">
                                                                                    <%out.println(rsprespendientes2.getString("nombre_editorial"));%>
                                                                                </th>
                                                                                <th scope="row">
                                                                                    <%out.println(rsprespendientes2.getString("Usuario_rut_usuario"));%>
                                                                                </th>
                                                                                <th scope="row">
                                                                                    <%out.println(mensaje);%>
                                                                                </th>
                                                                                <%
                                                                    if(dias > 0){
                                                                        %>
                                                                                    <th scope="row">
                                                                                        <%out.println(dias + " Semanas.");%>
                                                                                    </th>
                                                                                    <%
                                                                    }else{
                                                                        %>
                                                                                        <th scope="row">
                                                                                            <%out.println("Sin castigo.");%>
                                                                                        </th>
                                                                                        <%
                                                                    }
                                                                %>

                                                                                            <th scope="row">
                                                                                                <%out.println(rsprespendientes2.getString("nombre_estadoprestamo"));%>
                                                                                            </th>
                                                                            </tr>

                                                                            <% contadorsolicitud = contadorsolicitud + 1;      }%>
                                                                    </tbody>
                                                                </table>
                                                            </div>
                                                        </div>
                                                        <div class="row">

                                                        </div>
                                                    </div>
                                                    <%
                                    }else{

                                        %>
                                                        <div class="tablaestudiantesolicitudes">
                                                            <div class="row">
                                                                <div class="col-12">
                                                                    <h4>Solicitudes Pendientes</h4>
                                                                    <table class="table">
                                                                        <thead class="headertabla">
                                                                            <tr>
                                                                                <th>Código</th>
                                                                                <th>Detalle</th>
                                                                                <th>Titulo</th>
                                                                                <th>Autor</th>
                                                                                <th>Editorial</th>
                                                                                <th>Usuario</th>
                                                                                <th>Estado</th>
                                                                            </tr>
                                                                        </thead>
                                                                        <tbody>
                                                                            <tr>
                                                                                <th scope="row" colspan="7">Solicitante sin prestamos pendientes</th>
                                                                            </tr>
                                                                        </tbody>
                                                                    </table>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <%
                                    }


                            }else if(contadordocente >= 1){

                                %>
                                                            <div class="tabladocente">
                                                                <div class="row">
                                                                    <div class="col-12">
                                                                        <h4>Docente</h4>
                                                                        <table class="table">
                                                                            <thead class="headertabla">
                                                                                <tr>
                                                                                    <th>Rut</th>
                                                                                    <th>Nombres</th>
                                                                                    <th>Apellidos</th>
                                                                                    <th>Dirección</th>
                                                                                    <th>Telefono</th>
                                                                                    <th>Estado Docente</th>
                                                                                </tr>
                                                                            </thead>
                                                                            <tbody>
                                                                                <tr>
                                                                                    <th scope="row">
                                                                                        <%out.println(rutdocente);%>
                                                                                    </th>
                                                                                    <th scope="row">
                                                                                        <%out.println(nombredocente);%>
                                                                                    </th>
                                                                                    <th scope="row">
                                                                                        <%out.println(apellidodocente);%>
                                                                                    </th>
                                                                                    <th scope="row">
                                                                                        <%out.println(direcciondocente);%>
                                                                                    </th>
                                                                                    <th scope="row">
                                                                                        <%out.println(telefonodocente);%>
                                                                                    </th>
                                                                                    <th scope="row">
                                                                                        <%out.println(estadodocente);%>
                                                                                    </th>
                                                                                </tr>
                                                                            </tbody>
                                                                        </table>
                                                                    </div>
                                                                </div>
                                                            </div>




                                                            <%

                            }else if(contadorestudiante == 0 && contadordocente == 0){

                                %>
                                                                <div class="tabladocente">
                                                                    <div class="row">
                                                                        <div class="col-12">
                                                                            <h4>Solicitante no existe</h4>
                                                                            <table class="table">
                                                                                <thead class="headertabla">
                                                                                    <tr>
                                                                                        <th>Rut</th>
                                                                                        <th>Nombres</th>
                                                                                        <th>Apellidos</th>
                                                                                        <th>Dirección</th>
                                                                                        <th>Telefono</th>
                                                                                        <th>Estado</th>
                                                                                    </tr>
                                                                                </thead>
                                                                                <tbody>
                                                                                    <tr>
                                                                                        <th scope="row" colspan="6">Solicitante no se encuentra en la base de datos</th>
                                                                                    </tr>
                                                                                </tbody>
                                                                            </table>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                                <%

                            }

                        %>

                                                                    <div class="row">
                                                                        <div class="col-6">
                                                                            <div class="buscarlibrosolicitud">
                                                                                <div class="titulo-buscarlibrosolicitud">
                                                                                    <h4>Selección de Título</h4>
                                                                                </div>
                                                                                <div class="formulariosolicitud">
                                                                                    <form action="prestamocontroller.do" method="post" class="form-inline" name="form" target="iframebuscarlibro">
                                                                                        <input type="text" class="form-control" name="busquedalibro" placeholder="Busqueda por titulo, Autor o Editorial..." required="">
                                                                                        <button type="submit" name="btn_busquedalibro" id="btn_busquedalibro"><span><i class="fab fa-sistrix"></i></span></button>
                                                                                    </form>
                                                                                    <iframe name="iframebuscarlibro" style='display:none'></iframe>
                                                                                </div>


                                                                                <div class="tablasolicitud" id="tablalibrosolicitud" style="overflow-x:auto;">

                                                                                </div>
                                                                            </div>
                                                                        </div>

                                                                        <div class="col-6">
                                                                            <div class="perfillibro">
                                                                                <div class="container">
                                                                                    <h4>Detalle de Libro</h4>
                                                                                    <div class="perfillibro-info" id="informacionlibro">

                                                                                        <div class="row" id="listadetallebusquedalibro">
                                                                                            <div class="col-2">
                                                                                                <ul>
                                                                                                    <li><strong>Código</strong></li>
                                                                                                    <li><strong>Título</strong></li>
                                                                                                    <li><strong>Autor</strong></li>
                                                                                                    <li><strong>Editorial</strong></li>
                                                                                                    <li><strong>Estado</strong></li>
                                                                                                </ul>
                                                                                            </div>
                                                                                            <div class="col-10">
                                                                                                <%
                                                            String iddetallelibro = (String)request.getSession().getAttribute("idlibrodetalle");
                                                            int idlibro = 0;
                                                            if(iddetallelibro != null){
                                                                idlibro = Integer.parseInt(iddetallelibro.trim());
                                                            

                                                            String sqlidlibro = "SELECT id_libro, nombre_libro, nombre_autor, nombre_editorial, nombre_estadolibro FROM libro l JOIN autor a ON (l.Autor_id_autor = a.id_autor) JOIN editorial e ON (l.Editorial_id_editorial = e.id_editorial) JOIN estadolibro el ON(l.EstadoLibro_id_estadolibro = el.id_estadolibro) WHERE id_libro = "+idlibro+" ";

                                                            ResultSet rsidlibro = con.executeQuery(sqlidlibro);

                                                            while(rsidlibro.next()){

                                                        %>
                                                                                                    <ul>
                                                                                                        <li><strong>:</strong>
                                                                                                            <%out.println(rsidlibro.getString("id_libro"));%>
                                                                                                        </li>
                                                                                                        <li><strong>:</strong>
                                                                                                            <%out.println(rsidlibro.getString("nombre_libro"));%>
                                                                                                        </li>
                                                                                                        <li><strong>:</strong>
                                                                                                            <%out.println(rsidlibro.getString("nombre_autor"));%>
                                                                                                        </li>
                                                                                                        <li><strong>:</strong>
                                                                                                            <%out.println(rsidlibro.getString("nombre_editorial"));%>
                                                                                                        </li>
                                                                                                        <li><strong>:</strong>
                                                                                                            <%out.println(rsidlibro.getString("nombre_estadolibro"));%>
                                                                                                        </li>
                                                                                                    </ul>
                                                                                                    <%}}%>
                                                                                            </div>
                                                                                        </div>

                                                                                    </div>

                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                    </div>



                                                                    <div class="container">
                                                                        <div class="row seleccion-fechas">
                                                                            <div class="col-6">
                                                                                <div class="fecha-entrega">
                                                                                    <h4>Fecha de inicio solicitud</h4>
                                                                                    <div class="calendario">
                                                                                        <input id="fechaentrega" name="fechaentrega" width="276" />
                                                                                    </div>
                                                                                </div>

                                                                            </div>
                                                                            <div class="col-6">
                                                                                <div class="fecha-entrega">
                                                                                    <h4>Fecha de decepción del Libro</h4>
                                                                                    <div class="calendario">
                                                                                        <input id="fecharecepcion" name="fecharecepcion" width="276" />
                                                                                    </div>
                                                                                </div>


                                                                            </div>
                                                                        </div>
                                                                    </div>

                                                                    <%
                            if(contadorsolicitud >= 2 || diasatraso > 0){
                               
                        %>
                                                                        <div class="container">
                                                                            <div class="row button-realizarsolicitud">
                                                                                <div class="col-12">
                                                                                    <h5>Imposible realizar la solicitud de Prestamo</h5>
                                                                                    <h6>Solicitante a superado su limite permitido de solicitudes o se encuentra sancionado.</h6>
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                        <%}else{%>
                                                                            <div class="container">
                                                                                <div class="row button-realizarsolicitud">
                                                                                    <div class="col-12">
                                                                                        <form action="prestamocontroller.do" method="post" name="formrs">
                                                                                            <input type="hidden" name="descripcion" value="<%out.println(detalle);%>">
                                                                                            <input type="hidden" name="fentrega" value="">
                                                                                            <input type="hidden" name="fentregaestimada" value="">
                                                                                            <input type="hidden" name="arrendatario" value="<%out.println(solicitante);%>">
                                                                                            <input type="hidden" name="usuario" value="<%out.println(idusername);%>">
                                                                                            <input type="hidden" name="libro" value="<%out.println(iddetallelibro);%>">
                                                                                            <button class="btn btn-primary" name="btn_realizarsolicitud" onclick="llenado()">Realizar Solicitud</button>
                                                                                        </form>
                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                            <%}%>

                                        </div>
                                    </div>

                                </div>
                            </div>
                            <script>
                                var fentrega = null;
                                var fentregaestimada = null;

                                function llenado() {
                                    fentrega = document.getElementsByName("fechaentrega")[0].value;
                                    fentregaestimada = document.getElementsByName("fecharecepcion")[0].value;

                                    document.forms['formrs']['fentrega'].value = fentrega;
                                    document.forms['formrs']['fentregaestimada'].value = fentregaestimada;

                                }
                            </script>
                        </body>

                        </html>