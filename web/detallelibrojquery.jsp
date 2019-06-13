<%-- 
    Document   : detallelibrojquery
    Created on : 30-may-2018, 1:16:35
    Author     : boy-l
--%>

<%@page import="java.sql.ResultSet"%>
<%
    Data.ConnectionClass con = new Data.ConnectionClass();
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
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
                    <li><strong>:</strong><%out.println(rsidlibro.getString("id_libro"));%></li>
                    <li><strong>:</strong><%out.println(rsidlibro.getString("nombre_libro"));%></li>
                    <li><strong>:</strong><%out.println(rsidlibro.getString("nombre_autor"));%></li>
                    <li><strong>:</strong><%out.println(rsidlibro.getString("nombre_editorial"));%></li>
                    <li><strong>:</strong><%out.println(rsidlibro.getString("nombre_estadolibro"));%></li>
                </ul>
                <%}%>
            </div>
        </div>

    </body>
</html>
