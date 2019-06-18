<%@page session = "true"%>
    <%@page contentType="text/html" pageEncoding="UTF-8"%>
        <!DOCTYPE html>
        <html>

        <head>
            <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
            <title>Biblioteca Santo Román - Autentificación</title>

            <!--Cargando Iconos-->
            <link rel="stylesheet" href="css/fontawesome-all.css" type="text/css">

            <!--Carga de archivos css-->
            <link rel="stylesheet" href="css/bootstrap.css">
            <link rel="stylesheet" href="css/estilos.css">
        </head>

        <body id="body-login">

            <section class="container">
                <div class="row">
                    <div class="col-6">
                        <div class="container">
                            <div class="wrapper">
                                <!--Formulario de registro y autentificación-->
                                <form action="" method="post" name="Login_Form" class="form-signin">
                                    <h3 class="form-signin-heading text-center">
                                        <img style="" src="images/logo-login.png" alt="" />
                                    </h3>
                                    <h4 class="text-center">Sistema de Autentificación</h4>
                                    <h5 class="text-center">Universidad Santo Román</h5>
                                    <hr class="spartan">
                                    <div class="input-group">
                                        <span class="input-group-addon" id="sizing-addon1">
                                        <i class="fa fa-user"></i>
                                    </span>
                                        <input type="text" class="form-control" name="Username" placeholder="Username" required="" autofocus="" />
                                    </div>
                                    <div class="input-group">
                                        <span class="input-group-addon" id="sizing-addon1">
                                        <i class="fa fa-lock"></i>
                                    </span>
                                        <input type="password" class="form-control" name="Password" placeholder="Password" required="" />
                                    </div>
                                    <button class="btn btn-lg btn-primary btn-block" name="Submit_login" value="Entrar" type="Submit">Entrar</button>
                                </form>
                            </div>
                        </div>
                    </div>
                    <div class="col-6">
                        <div class="imagen-login">
                            <img class="img-logo" src="images/imagen-mobil.png">
                        </div>
                    </div>
                </div>
            </section>

            <!--Carga de archivos js-->
            <script src="js/jquery-3.3.1.min.js"></script>
            <script src="js/popper.min.js"></script>
            <script src="js/bootstrap.min.js"></script>
            <script src="js/sitio.js"></script>

            <!--Solicitud a base de datos-->

            <%
            Models.Loginacion login = new Models.Loginacion();
            
            if(request.getParameter("Submit_login") != null){
                
                String email = request.getParameter("Username");
                String password = request.getParameter("Password");
                                    
                HttpSession sesion = request.getSession();
                
                if(login.Loguear(email, password)==true){
                    sesion.setAttribute("user", email);
                    response.sendRedirect("http://localhost:8080/SistemaBibliotecario/index.jsp");
                }else{
                    %>
                <script>
                    alert("Credenciales Ingresadas son invalidas");
                </script>

                <%
                }
            }
            
            if(request.getParameter("cerrar") != null){
                session.invalidate();
                response.sendRedirect("http://localhost:8080/SistemaBibliotecario/login.jsp");
            }
        
        %>

        </body>

        </html>