<%-- 
    Document   : estudiantes
    Created on : 11-may-2018, 23:29:20
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
                        <h2><i class="fas fa-graduation-cap"></i>Estudiantes</h2>
                    </div>
                </div>
                
            </div>
        </div>
        
        
        <div class="container-fluid cuerpo-estudiantes">
            <div class="container subcuerpo-estudiantes">
                <div class="row">
                    <div class="col-12">
                       <table class="table">
                            <thead class="thead-dark">
                                <tr>
                                    <th>Rut</th>
                                    <th>Nombres</th>
                                    <th>Apellidos</th>
                                    <th>Telefono</th>
                                    <th>Carrera</th>
                                    <th>Estado</th>
                                    <th></th>
                                    <th></th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <%
                                        sql="SELECT rut_estudiante, nombre_estudiante, apellido_estudiante, telefono_estudiante, nombre_carrera, nombre_estadoestudiante FROM estudiante e JOIN carrera c ON (e.Carrera_id_carrera = c.id_carrera) JOIN estadoestudiante ee ON (e.EstadoEstudiante_id_estadoestudiante = ee.id_estadoestudiante)";
                                        ResultSet rsestudiante = con.executeQuery (sql);
                                        while (rsestudiante.next()){

                                    %>
                                    <th scope="row"><%out.println(rsestudiante.getString("rut_estudiante"));%></th>
                                    <td><%out.println(rsestudiante.getString("nombre_estudiante"));%></td>
                                    <td><%out.println(rsestudiante.getString("apellido_estudiante"));%></td>
                                    <td><%out.println(rsestudiante.getString("telefono_estudiante"));%></td>
                                    <td><%out.println(rsestudiante.getString("nombre_carrera"));%></td>
                                    <td><%out.println(rsestudiante.getString("nombre_estadoestudiante"));%></td>
                                    <td></td>
                                    <td>
                                        <form action="prestamocontroller.do" method="post" class="form-inline" name="form" target="iframeestudiante">
                                            <input type="hidden" name="id_estudiante"  value="<%out.println(rsestudiante.getString("rut_estudiante"));%>">
                                            <button type="submit" class="btn btn-success" name="btn_detalleestudiante">Ver Detalles</button>
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
