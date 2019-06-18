<%-- 
    Document   : docentes
    Created on : 11-may-2018, 23:31:28
    Author     : boy-l
--%>

    <%@page import="java.sql.ResultSet"%>
        <%@page contentType="text/html" pageEncoding="UTF-8"%>
            <%
<!--Objeto de case conexcion-->
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
                                    <!--Titulo de página-->
                                    <h2><i class="fas fa-angle-double-up"></i>Docentes</h2>
                                </div>
                            </div>

                        </div>
                    </div>




                    <div class="container-fluid cuerpo-docentes">
                        <div class="container subcuerpo-docentes">
                            <div class="row">
                                <div class="col-12">
                                    <!--Tabla de docentes registrados como arrendatarios de libros-->
                                    <table class="table">
                                        <thead class="thead-dark">
                                            <tr>
                                                <th>Rut</th>
                                                <th>Nombres</th>
                                                <th>Apellidos</th>
                                                <th>Telefono</th>
                                                <th>Estado</th>
                                                <th></th>
                                                <th></th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr>
                                                <!--Consulta  abase de datos-->
                                                <%
                                        sql="SELECT rut_docente, nombre_docente, apellido_docente, telefono_docente, nombre_estadodocente FROM docente d JOIN estadodocente ed ON (d.EstadoDocente_id_estadodocente = ed.id_estadodocente)";
                                        ResultSet rsdocente = con.executeQuery (sql);
                                        while (rsdocente.next()){
                                    %>
                                                    <th scope="row">
                                                        <%out.println(rsdocente.getString("rut_docente"));%>
                                                    </th>
                                                    <td>
                                                        <%out.println(rsdocente.getString("nombre_docente"));%>
                                                    </td>
                                                    <td>
                                                        <%out.println(rsdocente.getString("apellido_docente"));%>
                                                    </td>
                                                    <td>
                                                        <%out.println(rsdocente.getString("telefono_docente"));%>
                                                    </td>
                                                    <td>
                                                        <%out.println(rsdocente.getString("nombre_estadodocente"));%>
                                                    </td>
                                                    <td></td>
                                                    <td>
                                                        <form action="prestamocontroller.do" method="post" class="form-inline" name="form" target="iframedocente">
                                                            <input type="hidden" name="id_docente" value="<%out.println(rsdocente.getString(" rut_docente "));%>">
                                                            <button type="submit" class="btn btn-success" name="btn_detalledocente">Ver Detalles</button>
                                                        </form>
                                                    </td>
                                                    <iframe name="iframecambiarestado" style='display:none'></iframe>
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