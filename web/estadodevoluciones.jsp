<%-- 
    Document   : estadodevoluciones
    Created on : 11-may-2018, 23:37:17
    Author     : boy-l
--%>

    <%@page import="java.sql.ResultSet"%>
        <%@page contentType="text/html" pageEncoding="UTF-8"%>
            <%
    Data.ConnectionClass con = new Data.ConnectionClass();
    String sql = "";
%>
                <!DOCTYPE html>
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
                                    <!--Titulo de pagina-->
                                    <h2><i class="fas fa-server"></i>Estado de Solicitudes</h2>
                                </div>
                            </div>

                        </div>
                    </div>



                    <div class="container-fluid cuerpo-estadodevoluciones">
                        <div class="container subcuerpo-estadodevoluciones">
                            <div class="row">
                                <div class="col-12">
                                    <!--Tabla de solicitudes-->
                                    <table class="table">
                                        <thead class="thead-dark">
                                            <tr>
                                                <th>Id</th>
                                                <th>Descripción</th>
                                                <th>Fecha Solicitud</th>
                                                <th>Entrega Estimada</th>
                                                <th>Entrega Recepción</th>
                                                <th>Arrendatario</th>
                                                <th>Título</th>
                                                <th>Autor</th>
                                                <th>Estado</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <!--Consulta a base de datos-->
                                            <%
                                    sql="SELECT id_prestamo, descripcion_prestamo, fechaentrega_prestamo, fechaentregaestimada_prestamo, fecharecepcion_prestamo, id_arrendatario , nombre_libro, nombre_autor, nombre_estadoprestamo FROM prestamo JOIN libro ON (libro_id_libro = id_libro) JOIN autor ON (Autor_id_autor = id_autor) JOIN estadoprestamo ON (estadoprestamo_id_estadoprestamo = id_estadoprestamo) ";
                                    
                                    ResultSet rssolicitud = con.executeQuery (sql);
                                    while (rssolicitud.next()){

                                %>
                                                <tr>
                                                    <th scope="row">
                                                        <%out.println(rssolicitud.getString("id_prestamo"));%>
                                                    </th>
                                                    <td>
                                                        <%out.println(rssolicitud.getString("descripcion_prestamo"));%>
                                                    </td>
                                                    <td>
                                                        <%out.println(rssolicitud.getString("fechaentrega_prestamo"));%>
                                                    </td>
                                                    <td>
                                                        <%out.println(rssolicitud.getString("fechaentregaestimada_prestamo"));%>
                                                    </td>
                                                    <td>
                                                        <%out.println(rssolicitud.getString("fecharecepcion_prestamo"));%>
                                                    </td>
                                                    <td>
                                                        <%out.println(rssolicitud.getString("id_arrendatario"));%>
                                                    </td>
                                                    <td>
                                                        <%out.println(rssolicitud.getString("nombre_libro"));%>
                                                    </td>
                                                    <td>
                                                        <%out.println(rssolicitud.getString("nombre_autor"));%>
                                                    </td>
                                                    <td>
                                                        <%out.println(rssolicitud.getString("nombre_estadoprestamo"));%>
                                                    </td>
                                                </tr>
                                                <%}%>
                                        </tbody>
                                    </table>
                                </div>
                            </div>


                        </div>
                    </div>
                </body>

                </html>