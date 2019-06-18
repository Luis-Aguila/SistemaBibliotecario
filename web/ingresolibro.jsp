<%-- 
    Document   : ingresolibro
    Created on : 10-may-2018, 12:23:22
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
                                    <h2><i class="fas fa-sign-in-alt"></i>Sistema de Gestión e Ingreso de Libros</h2>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="container-fluid cuerpo-ingresolibro">
                        <div class="container subcuerpo-ingresolibro" id="opciones-gestion-libro">
                            <div class="row">
                                <!--Opciones de gestion de libros-->
                                <div class="col-6 offset-3 opciones-gestion-libro">
                                    <button type="button" class="btn btn-success" data-toggle="collapse" data-target="#formulario-libro" aria-expanded="false">Ingreso de Libros</button>
                                    <button type="button" class="btn btn-success" data-toggle="collapse" data-target="#formulario-autor" aria-expanded="false">Ingreso de Autores</button>
                                    <button type="button" class="btn btn-success" data-toggle="collapse" data-target="#formulario-editorial" aria-expanded="false">Ingreso de Editoriales</button>
                                </div>
                            </div>

                            <div class="row collapse show" id="formulario-libro" data-parent="#opciones-gestion-libro">
                                <div class="col-8 offset-2">
                                    <h3>Ingreso de Libros</h3>
                                    <!--Formulario ingreso de libros-->
                                    <div class="formulariosinternosingreso">
                                        <form action="ingresolibrocontroller.do" method="post">
                                            <div class="form-group">
                                                <label for="nomlibro">Titulo del Libro</label>
                                                <input type="text" class="form-control" id="nomlibro" name="nombrelibro" placeholder="Ingrese Titulo del libro">
                                                <small id="emailHelp" class="form-text text-muted">Asegrese de Escribir de manera correcta el titulo</small>
                                            </div>
                                            <div class="form-group">
                                                <label>Autor del Libro</label>
                                                <select class="custom-select" name="autorlibro">
                                        <option selected>Seleccione Autor</option>
                                        <!--Consulta a base de datos autores-->
                                        <%
                                            sql="SELECT id_autor, nombre_autor FROM autor";
                                            ResultSet rsautor = con.executeQuery (sql);
                                            while (rsautor.next()){
                                        %>
                                        <option value="<%out.println(rsautor.getString("id_autor"));%>"><%out.println(rsautor.getString("nombre_autor"));%></option>
                                        <%}%>
                                    </select>
                                            </div>
                                            <div class="form-group">
                                                <label>Editorial del Libro</label>
                                                <select class="custom-select" name="editoriallibro">
                                        <option selected>Seleccione una Editorial</option>
                                        <!--Consulta a base de datos editorial-->
                                        <%
                                            sql="SELECT id_editorial, nombre_editorial FROM editorial";
                                            ResultSet rseditorial = con.executeQuery (sql);
                                            while (rseditorial.next()){
                                        %>
                                        <option value="<%out.println(rseditorial.getString("id_editorial"));%>"><%out.println(rseditorial.getString("nombre_editorial"));%></option>
                                        <%}%>
                                    </select>
                                            </div>
                                            <button type="submit" class="btn btn-primary" name="btn_ingresolibro">Confirmar Registro</button>
                                        </form>
                                    </div>
                                </div>
                            </div>

                            <div class="row collapse" id="formulario-autor" data-parent="#opciones-gestion-libro">
                                <div class="col-8 offset-2">
                                    <h3>Ingreso de Autores</h3>
                                    <!--Formulario ingreso de autores-->
                                    <div class="formulariosinternosingreso">
                                        <form action="ingresolibrocontroller.do" method="post">
                                            <div class="form-group">
                                                <label for="nomautor">Nombre del Autor</label>
                                                <input type="text" class="form-control" id="nomautor" name="nombreautor" placeholder="Ingrese nombre de Autor" required="">
                                                <small id="emailHelp" class="form-text text-muted">Asegrese de Escribir de manera correcta este campo</small>
                                            </div>
                                            <button type="submit" class="btn btn-primary" name="btn_ingresoautor">Confirmar Registro</button>
                                        </form>
                                    </div>
                                </div>
                            </div>

                            <div class="row collapse" id="formulario-editorial" data-parent="#opciones-gestion-libro">
                                <div class="col-8 offset-2">
                                    <h3>Ingreso de Editoriales</h3>
                                    <div class="formulariosinternosingreso">
                                        <form action="ingresolibrocontroller.do" method="post">
                                            <div class="form-group">
                                                <label for="nomeditorial">Nombre de la Editorial</label>
                                                <input type="text" class="form-control" id="nomeditorial" name="nombreeditorial" placeholder="Ingrese Titulo del libro">
                                                <small id="emailHelp" class="form-text text-muted">Asegrese de Escribir de manera correcta la editorial</small>
                                            </div>
                                            <button type="submit" class="btn btn-primary" name="btn_ingresoeditorial">Confirmar Registro</button>
                                        </form>
                                    </div>
                                </div>
                            </div>









                        </div>
                    </div>




                </body>

                </html>