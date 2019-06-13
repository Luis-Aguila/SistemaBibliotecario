<%-- 
    Document   : perfil
    Created on : 11-may-2018, 23:52:55
    Author     : boy-l
--%>
<%@page session = "true" %>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
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
                        <h2><i class="far fa-address-card"></i>Perfil del Usuario</h2>
                    </div>
                </div>
            </div>
        </div>
        
        
        
        
        <div class="container-fluid cuerpo-perfil">
            <div class="container subcuerpo-perfil">
                <div class="row" >
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
                                <center>
                                    <img class="center-block" src="images/smile-perfil.png"alt="Card image cap">
                                </center>
                                
                                <div class="card-body">
                                    <h5 class="card-title">Información adicional</h5>
                                    <div class="row">
                                        <div class="col-4">
                                            <p><strong>Nombres   </strong></p>
                                            <p><strong>Apellidos </strong></p>
                                            <p><strong>Rut       </strong></p>
                                            <p><strong>Dirección </strong></p>
                                            <p><strong>Teléfono  </strong></p>
                                            <p><strong>E-mail    </strong></p>
                                            <p><strong>Password  </strong></p>
                                        </div>
                                        <div class="col-8">
                                            <%
                                                String user = (String)request.getSession().getAttribute("user");
                                                sql="SELECT rut_usuario, nombre_usuario, apellido_usuario, direccion_usuario, telefono_usuario, email_usuario FROM usuario WHERE email_usuario = '"+user+"' ";
                                                ResultSet rsusuario = con.executeQuery (sql);
                                                while (rsusuario.next()){

                                            %>
                                            
                                            <p><strong>:</strong> <%out.println(rsusuario.getString("nombre_usuario"));%></p>
                                            <p><strong>:</strong> <%out.println(rsusuario.getString("apellido_usuario"));%></p>
                                            <p><strong>:</strong> <%out.println(rsusuario.getString("rut_usuario"));%></p>
                                            <p><strong>:</strong> <%out.println(rsusuario.getString("direccion_usuario"));%></p>
                                            <p><strong>:</strong> <%out.println(rsusuario.getString("telefono_usuario"));%></p>
                                            <p><strong>:</strong> <%out.println(rsusuario.getString("email_usuario"));%></p>
                                            <p><strong>:</strong> **********</p>
                                            <%}%>
                                        </div>
                                    </div>
                                    
                                </div>
                            </div>
                        </div>
                    </div>
                    
                </div>
                
            
                    
                
            </div>
        </div>
        
        
        
    </body>
</html>
