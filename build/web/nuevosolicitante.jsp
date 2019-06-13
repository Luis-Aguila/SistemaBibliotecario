<%-- 
    Document   : nuevosolicitante
    Created on : 11-may-2018, 23:33:25
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
                        <h2><i class="fas fa-plus-circle"></i>Nuevo Solicitante</h2>
                    </div>
                </div>
                
            </div>
        </div>
        
        
        
        
        <div class="container-fluid cuerpo-nuevosolicitante">
            <div class="container subcuerpo-nuevosolicitante" id="opciones-gestion-nuevosolicitante">
                <div class="row">
                    <div class="col-6 offset-3 opciones-gestion-nuevosolicitante">
                        <button type="button" class="btn btn-success" data-toggle="collapse" data-target="#formulario-alumno" aria-expanded="false">Ingreso de Alumno Solicitante</button>
                        <button type="button" class="btn btn-success" data-toggle="collapse" data-target="#formulario-docente" aria-expanded="false">Ingreso de Docente Solicitante</button>
                    </div>
                </div>
                
                <div class="row collapse show" id="formulario-alumno" data-parent="#opciones-gestion-nuevosolicitante">
                    <div class="col-8 offset-2">
                        <h3>Nuevo Solicitante - Alumno</h3>
                        <div class="formulariosinternosingreso">
                            <form action="nuevosolicitantecontroller.do" method="post">
                                <div class="form-group">
                                    <label for="rutestudiante">Rut Estudiante</label>
                                    <input type="text" class="form-control" id="rutestudiante" name="rutestudiante" placeholder="Ingrese Rut de estudiante" required="">
                                    <small class="form-text text-muted">Asegrese de Escribir de manera correcta el rut</small>
                                </div>
                                <div class="form-row">
                                    <div class="form-group col-6">
                                        <label for="nombreestudiante">Nombres</label>
                                        <input type="text" class="form-control" id="nombreestudiante" name="nombreestudiante" placeholder="Nombres Estudiante" required="">
                                    </div>
                                    <div class="form-group col-6">
                                        <label for="apellidoestudiante">Apellidos</label>
                                        <input type="text" class="form-control" id="apellidoestudiante" name="apellidoestudiante" placeholder="Apellidos Estudiante" required="">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="direccionestudiante">Dirección</label>
                                    <input type="text" class="form-control" id="direccionestudiante" name="direccionestudiante" placeholder="Dirección Estudiante" required="">
                                </div>
                                <div class="form-row">
                                    <div class="form-group col-6">
                                        <label for="carreraestudiante">Carrera</label>
                                        <select class="custom-select" name="carreraestudiante">
                                            <option selected>Seleccione una Carrera</option>
                                            <%
                                                sql="SELECT id_carrera, nombre_carrera FROM carrera";
                                                ResultSet rscarrera = con.executeQuery (sql);
                                                while (rscarrera.next()){
                                            %>
                                            <option value="<%out.println(rscarrera.getString("id_carrera"));%>"><%out.println(rscarrera.getString("nombre_carrera"));%></option>
                                            <%}%>
                                        </select>
                                    </div>
                                    <div class="form-group col-6">
                                        <label for="aniosestudios">Años de estudios</label>
                                        <input type="number" class="form-control" id="aniosestudios" name="aniosestudios" placeholder="Años estudio Estudiante" required="">
                                    </div>
                                </div>
                                <div class="form-row">
                                    <div class="form-group col-2">
                                        <label>Telefono</label>
                                        <input type="text" class="form-control" value="+(56)" disabled="true" style="width: 80px;">
                                    </div>
                                    <div class="form-group col-10">
                                        <label>.</label>
                                        <input type="number" class="form-control" id="telefonoestudiante" name="telefonoestudiante" placeholder="Teléfono Estudiante" required="" style="width: 520px;">
                                    </div>
                                </div>
                                <button type="submit" class="btn btn-primary" name="btn_registrarestudiante">Confirmar Registro</button>
                            </form>
                        </div>
                    </div>
                </div>
                
                <div class="row collapse" id="formulario-docente" data-parent="#opciones-gestion-nuevosolicitante">
                    <div class="col-8 offset-2">
                        <h3>Nuevo Solicitante - Docente</h3>
                        <div class="formulariosinternosingreso">
                            <form action="nuevosolicitantecontroller.do" method="post">
                                <div class="form-group">
                                    <label for="rutdocente">Rut Docente</label>
                                    <input type="text" class="form-control" id="rutdocente" name="rutdocente" placeholder="Ingrese Rut de Docente" required="">
                                    <small class="form-text text-muted">Asegrese de Escribir de manera correcta el rut</small>
                                </div>
                                <div class="form-row">
                                    <div class="form-group col-6">
                                        <label for="nombredocente">Nombres</label>
                                        <input type="text" class="form-control" id="nombredocente" name="nombredocente" placeholder="Nombres Docente" required="">
                                    </div>
                                    <div class="form-group col-6">
                                        <label for="apellidodocente">Apellidos</label>
                                        <input type="text" class="form-control" id="apellidodocente" name="apellidodocente" placeholder="Apellidos Docente" required="">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="direcciondocente">Dirección</label>
                                    <input type="text" class="form-control" id="direcciondocente" name="direcciondocente" placeholder="Dirección Docente" required="">
                                </div>
                                <div class="form-row">
                                    <div class="form-group col-2">
                                        <label>Telefono</label>
                                        <input type="text" class="form-control" value="+(56)" disabled="true" style="width: 80px;">
                                    </div>
                                    <div class="form-group col-10">
                                        <label>.</label>
                                        <input type="number" class="form-control" id="telefonodocente" name="telefonodocente" placeholder="Teléfono Docente" required="" style="width: 520px;">
                                    </div>
                                </div>
                                <button type="submit" class="btn btn-primary" name="btn_registrodocente">Confirmar Registro</button>
                            </form>
                        </div>
                    </div>
                </div>
                
                
                
                
            
                    
                
                
                
            </div>
        </div>
        
        
        
        
        
        
    </body>
</html>
