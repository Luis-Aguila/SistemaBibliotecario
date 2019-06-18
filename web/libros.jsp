<%-- 
    Document   : libros
    Created on : 09-may-2018, 21:26:10
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
                                    <!--Titulo de página-->
                                    <h2><i class="fas fa-book"></i>Colección de Libros</h2>
                                </div>
                            </div>

                        </div>
                    </div>


                    <div class="container-fluid cuerpo-coleccionlibro">
                        <div class="container subcuerpo-coleccionlibro">
                            <div class="row">
                                <div class="col-12">
                                    <!--Tablas de libros-->
                                    <table class="table">
                                        <thead class="thead-dark">
                                            <tr>
                                                <th>Código</th>
                                                <th>Titulo del Libro</th>
                                                <th>Autor del Libro</th>
                                                <th>Editorial</th>
                                                <th>Estado</th>
                                                <th></th>
                                                <th></th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr>
                                                <!--Consulta a base de datos para extraxión de libros-->
                                                <%
                                        
                                        sql="SELECT id_libro, nombre_libro, nombre_autor, nombre_editorial, nombre_estadolibro FROM libro l JOIN autor a ON (l.Autor_id_autor = a.id_autor) JOIN editorial e ON (l.Editorial_id_editorial = e.id_editorial) JOIN estadolibro el ON(l.EstadoLibro_id_estadolibro = el.id_estadolibro)";
                                        ResultSet rslibro = con.executeQuery (sql);
                                        while (rslibro.next()){

                                    %>
                                                    <th scope="row">
                                                        <%out.println(rslibro.getString("id_libro"));%>
                                                    </th>
                                                    <td>
                                                        <%out.println(rslibro.getString("nombre_libro"));%>
                                                    </td>
                                                    <td>
                                                        <%out.println(rslibro.getString("nombre_autor"));%>
                                                    </td>
                                                    <td>
                                                        <%out.println(rslibro.getString("nombre_editorial"));%>
                                                    </td>
                                                    <td>
                                                        <%out.println(rslibro.getString("nombre_estadolibro"));%>
                                                    </td>
                                                    <td></td>
                                                    <td>
                                                        <form action="ingresolibrocontroller.do" method="POST">
                                                            <input type="hidden" name="id_libro" value="<%out.println(rslibro.getString(" id_libro "));%>">
                                                            <button type="submit" class="btn btn-success" name="btn_aperacionlibro">Ver Detalles</button>
                                                        </form>
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