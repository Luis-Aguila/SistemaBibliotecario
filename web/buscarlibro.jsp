<%-- 
    Document   : buscarlibro
    Created on : 20-may-2018, 20:53:28
    Author     : boy-l
--%>

    <%@page import="java.sql.ResultSet"%>
        <%@page contentType="text/html" pageEncoding="UTF-8"%>
            <%
<!--Objeto clase conexión-->
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
                                    <h2><i class="fas fa-book"></i>Colección de Libros</h2>
                                </div>
                            </div>

                        </div>
                    </div>


                    <div class="container-fluid cuerpo-coleccionlibro">
                        <div class="container subcuerpo-coleccionlibro">
                            <div class="row">
                                <div class="col-12">
                                    <!--Tabla de libors-->
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
                                                <!--Metodos de consulta a base de datos-->
                                                <%
                                        String busqueda = (String)request.getSession().getAttribute("busqueda");
                                        
                                        sql="SELECT id_libro, nombre_libro, nombre_autor, nombre_editorial, nombre_estadolibro FROM libro l JOIN autor a ON (l.Autor_id_autor = a.id_autor) JOIN editorial e ON (l.Editorial_id_editorial = e.id_editorial) JOIN estadolibro el ON(l.EstadoLibro_id_estadolibro = el.id_estadolibro) WHERE nombre_libro LIKE '%"+busqueda+"%' OR nombre_autor LIKE '%"+busqueda+"%' OR nombre_editorial like '%"+busqueda+"%'";
                                        ResultSet rsbusqueda = con.executeQuery (sql);
                                        while (rsbusqueda.next()){

                                    %>
                                                    <th scope="row">
                                                        <%out.println(rsbusqueda.getString("id_libro"));%>
                                                    </th>
                                                    <td>
                                                        <%out.println(rsbusqueda.getString("nombre_libro"));%>
                                                    </td>
                                                    <td>
                                                        <%out.println(rsbusqueda.getString("nombre_autor"));%>
                                                    </td>
                                                    <td>
                                                        <%out.println(rsbusqueda.getString("nombre_editorial"));%>
                                                    </td>
                                                    <td>
                                                        <%out.println(rsbusqueda.getString("nombre_estadolibro"));%>
                                                    </td>
                                                    <td></td>
                                                    <td>
                                                        <form action="ingresolibrocontroller.do" method="POST">
                                                            <input type="hidden" name="id_libro" value="<%out.println(rsbusqueda.getString(" id_libro "));%>">
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