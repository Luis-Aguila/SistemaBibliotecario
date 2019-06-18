<%-- 
    Document   : layout
    Created on : 11-may-2018, 20:59:34
    Author     : boy-l
--%>

    <%@page contentType="text/html" pageEncoding="UTF-8"%>
        <!DOCTYPE html>
        <html>

        <head>
            <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
            <title>JSP Page</title>


            <!--Cargando Iconos-->
            <link rel="stylesheet" href="css/fontawesome-all.css" type="text/css">

            <!--Carga de archivos css-->
            <link rel="stylesheet" href="css/bootstrap.css">
            <link rel="stylesheet" href="css/estilos.css">
            <link rel="stylesheet" href="css/responsiveslides.css">
            <link rel="stylesheet" href="css/gijgo.min.css">

        </head>

        <body>
            <!--Inclusion de archivos dinamicos y estaticos...el menu interno se carga en todos los escenarios del sistema-->
            <%@include file="menuinterno.jsp" %>


                <%
            String pag = request.getParameter("pag");
            if (pag != null ) {
                pag=pag+".jsp";
            }else{
            pag="index.jsp";
            }
        %>

                    <jsp:include page="<%=pag%>" flush="true" />




                    <%@include file="footer.jsp" %>

                        <!--Carga de archivos js-->
                        <script src="js/jquery-3.3.1.min.js"></script>
                        <script src="js/popper.min.js"></script>
                        <script src="js/bootstrap.min.js"></script>
                        <script src="js/sitio.js"></script>
                        <script src="js/gijgo.min.js"></script>
                        <script>
                            $('#fechaentrega').datepicker({
                                uiLibrary: 'bootstrap4'
                            });
                            $('#fecharecepcion').datepicker({
                                uiLibrary: 'bootstrap4'
                            });
                        </script>

        </body>

        </html>