<%-- 
    Document   : prueba
    Created on : 19-may-2018, 14:53:59
    Author     : boy-l
--%>
    <%@page import="java.sql.ResultSet"%>
        <%
<!--Objet de clase conexión-->
    Data.ConnectionClass con = new Data.ConnectionClass();
%>
            <%@page contentType="text/html" pageEncoding="UTF-8"%>
                <!DOCTYPE html>
                <html>

                <head>
                    <meta charset="utf-8">
                    <meta name="viewport" content="width=device-width, initial-scale=1">
                    <title></title>
                </head>

                <body>
                    <div id="tabladetallebusquedalibro">
                        <table class="table">
                            <thead class="headertabla">
                                <tr>
                                    <th>titulo</th>
                                    <th>Autor</th>
                                    <th>Editorial</th>
                                    <th></th>
                                    <th></th>
                                </tr>
                            </thead>
                            <tbody>
                                <%
                    String libro = "";
                    libro = (String)request.getSession().getAttribute("libro");
                    String sqllibro = "";
                    sqllibro = "SELECT id_libro, nombre_libro, nombre_autor, nombre_editorial, nombre_estadolibro FROM libro l JOIN autor a ON (l.Autor_id_autor = a.id_autor) JOIN editorial e ON (l.Editorial_id_editorial = e.id_editorial) JOIN estadolibro el ON(l.EstadoLibro_id_estadolibro = el.id_estadolibro) WHERE nombre_libro LIKE '%"+libro+"%' OR nombre_autor LIKE '%"+libro+"%' OR nombre_editorial like '%"+libro+"%'";
                    
                    ResultSet rslibro = con.executeQuery(sqllibro);
                    
                    while(rslibro.next()){
                       
                %>
                                    <tr>
                                        <th scope="row">
                                            <%out.println(rslibro.getString("nombre_libro"));%>
                                        </th>
                                        <td>
                                            <%out.println(rslibro.getString("nombre_autor"));%>
                                        </td>
                                        <td>
                                            <%out.println(rslibro.getString("nombre_editorial"));%>
                                        </td>
                                        <td></td>
                                        <td>
                                            <form action="prestamocontroller.do" method="post" target="iframedetallelibro">
                                                <input type="hidden" name="idlibro" value="<%out.println(rslibro.getString(" id_libro "));%>">
                                                <button id="btnoperacionlibro" type="submit" class="btn btn-success" name="btnoperacionlibro" onclick="javascript:window.location.reload();">Seleccionar</button>
                                            </form>
                                        </td>
                                    </tr>
                                    <%}%>
                            </tbody>
                            <iframe name="iframedetallelibro" style='display:none'></iframe>
                        </table>
                    </div>


                    <div id="listadetallebusquedalibro">
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
                    }
                    
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
                                <%}%>
                        </div>
                    </div>





                </body>

                </html>