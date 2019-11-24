<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Editar Administrador</title>
                  <link rel="icon" type="image/png" href="https://cdn4.iconfinder.com/data/icons/royal-crowns/154/vip-corona-royal-crown-512.png">
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
    integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
  <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet"
    integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN" crossorigin="anonymous">

  <style>
    body
{
    background: url("https://image.jimcdn.com/app/cms/image/transf/none/path/sb8c837d4d7c85402/backgroundarea/i2b9df53d8f4515d3/version/1484918239/image.jpg") ;
    background-size:100%;
    
} 

</style>
    </head>
    <body>
        <font style="color:white">
        <br>
        <br>
        <br>
        <br>
        <br>
        <br>
        <br>
        <br>
        <br>
        <br>
        <br>
        <br>
        <h2 align="center">Editar Administrador</h2>
        <%
            String cod = request.getParameter("cod");
            

             Connection conn = null;
            ResultSet rs = null;
            Statement sta = null;
            
            
            try{
                Class.forName("com.mysql.jdbc.Driver");
                conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/Kyukeisho?user=root&password=");
            
            sta = conn.createStatement();
            rs = sta.executeQuery("select * from administrador where id_administrador = '"+cod+"'");
            
            while(rs.next()){
              

        %>
    
    <center>
        <div class="card" style="background-color: rgb(96, 104, 99, 0.26); width: 23rem;">
        <form action="">
            <table  border="0" width="350" align="center">
                <tr>
                    <td >Id Administrador: </td>
                    <td ><input  class="p-2 mb-2 bg-dark text-white form-control" type="text" name="txtid" value="<%=rs.getString(1)%>" readonly="readonly"></td>
                </tr>
                <tr>
                    <td>Primer Nombre:</td>
                    <td><input class="p-2 mb-2 bg-dark text-white form-control" type="text" value="<%=rs.getString(2)%>" name="pnom"></td>
                </tr>
                <tr>
                    <td>Segundo Nombre:</td>
                    <td><input class="p-2 mb-2 bg-dark text-white form-control" type="text" value="<%=rs.getString(3)%>" name="snom"></td>
                </tr>
                <tr>
                    <td >Primer Apellido:</td>
                    <td><input class="p-2 mb-2 bg-dark text-white form-control" type="text" value="<%=rs.getString(4)%>" name="pape"></td>
                </tr>
                <tr>
                    <td >Segundo Apellido:</td>
                    <td><input class="p-2 mb-2 bg-dark text-white form-control" type="text" value="<%=rs.getString(5)%>" name="sape"></td>
                </tr>
                <tr>
                    <td >Correo:</td>
                    <td><input class="p-2 mb-2 bg-dark text-white form-control" type="email" value="<%=rs.getString(6)%>" name="correo"></td>
                </tr>
                <tr>
                    <td >Telefono:</td>
                    <td><input class="p-2 mb-2 bg-dark text-white form-control" type="text" value="<%=rs.getString(7)%>" name="tel"></td>
                </tr>
                <tr>
                    <td >Contraseña:</td>
                    <td><input class="p-2 mb-2 bg-dark text-white form-control" type="password" value="<%=rs.getString(8)%>" name="con" disabled="disable"></td>
                </tr>
                <tr>
                <br>
                    <td  colspan="2"><input class="btn btn-info btn-block" type="submit" name="btngrabar" value="Guardar"></td>
                </tr>
            </table>
        </form>
        </div>
        <%
            }
        }catch(Exception e){} 

        if(request.getParameter("btngrabar")!= null){
        
        int id = Integer.parseInt(request.getParameter("txtid"));
        String pnom = request.getParameter("pnom");
        String snom = request.getParameter("snom");
        String pape = request.getParameter("pape");
        String sape = request.getParameter("sape");
        String correo = request.getParameter("correo");
        String tel = request.getParameter("tel");
        String con = request.getParameter("con");
        
        sta.executeUpdate("update administrador set primer_nombre_administrador='"+ pnom +"',segundo_nombre_administrador='"+snom+"',primer_apellido_administrador='"+pape+"',segundo_apellido_administardor='"+sape+"' correo_administrador='"+correo+"' telefono_administrador='"+tel+"' contraseña_administardor='"+con+"' where id_administrador = '"+id+"'");

        request.getRequestDispatcher("CRUD_Administrador.jsp").forward(request, response);
        }
        %>
                        
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.3/umd/popper.min.js" integrity="sha384-vFJXuSJphROIrBnz7yo7oB41mKfc8JzQZiCq4NCceLEaO4IHwicKwpJf9c9IpFgh" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/js/bootstrap.min.js" integrity="sha384-alpBpkh1PFOepccYVYDB4do5UnbKysX5WZXm3XxPqe5iKTfUKjNkCk9SaVuEZflJ" crossorigin="anonymous"></script>                    
    </body>
</html>
