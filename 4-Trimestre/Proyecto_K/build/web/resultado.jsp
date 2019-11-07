
<%@page import="modelo.Email"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>RESULTADO CORREO ELECTRONICO</title>
    </head>
    <body>
        
        <%
            
            Email email = new Email();
            
            String de = "emisor2000@gmail.com";
            String clave = "emisor1379";
            String para = request.getParameter("correo");
            String asunto = "Codigo de recuperacion de contraseña" ;
            String mensaje = "Este es tu codigo de recuperacion: 3310";

            

            
            boolean resultado = email.enviarEmail(de, clave, para, mensaje, asunto);
            
            if(resultado){
                out.print("CORREO ELECTRONICO CORRECTAMENTE ENVIADO....."+"\n\n"+"<a href='index.jsp'>VOLVER AL INDEX</a>");
            }else{
                out.print("CORREO ELECTRONICO NO ENVIADO....."+"\n\n"+"<a href='index.jsp'>VOLVER AL INDEX</a>"); 
            }
            
        %>
        
    </body>
</html>
