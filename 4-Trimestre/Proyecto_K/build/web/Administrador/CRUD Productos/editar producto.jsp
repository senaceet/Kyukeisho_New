<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Editar Producto</title>
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
        <h2 align="center">Editar Producto</h2>
        <%
            String cod = request.getParameter("cod");
            

             Connection conn = null;
            ResultSet rs = null;
            Statement sta = null;
            
            
            try{
                Class.forName("com.mysql.jdbc.Driver");
                conn = DriverManager.getConnection("jdbc:mysql://localhost:3310/Kyukeisho?user=root&password=");
            
            sta = conn.createStatement();
            rs = sta.executeQuery("select * from productos where id_producto = '"+cod+"'");
            
            while(rs.next()){
              

        %>
    
    <center>
        <div class="card" style="background-color: rgb(96, 104, 99, 0.26); width: 23rem;">
        <form action="">
            <table  border="0" width="350" align="center">
                <tr>
                    <td >id: </td>
                    <td ><input  class="p-2 mb-2 bg-dark text-white form-control" type="text" name="txtid" value="<%=rs.getString(1)%>" readonly="readonly"></td>
                </tr>
                <tr>
                    <td>Nombre: </td>
                    <td><input class="p-2 mb-2 bg-dark text-white form-control" type="text" value="<%=rs.getString(2)%>" name="txtnom"></td>
                </tr>
                <tr>
                    <td>cantidad: </td>
                    <td><input class="p-2 mb-2 bg-dark text-white form-control" type="text" value="<%=rs.getString(3)%>" name="txtcantidad"></td>
                </tr>
                                <tr>
                    <td >precio unitario: </td>
                    <td><input class="p-2 mb-2 bg-dark text-white form-control" type="text" value="<%=rs.getString(4)%>" name="txtprecio"></td>
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
        String nom = request.getParameter("txtnom");
        String can = request.getParameter("txtcantidad");
        String pre = request.getParameter("txtprecio");
        
        sta.executeUpdate("update productos set nombre_producto='"+ nom +"',cantidad_producto='"+can+"',precio_unitario_producto='"+pre+"' where id_producto = '"+id+"'");

        request.getRequestDispatcher("Crud_Productos_Vendidos.jsp").forward(request, response);
        }
        %>
                        
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.3/umd/popper.min.js" integrity="sha384-vFJXuSJphROIrBnz7yo7oB41mKfc8JzQZiCq4NCceLEaO4IHwicKwpJf9c9IpFgh" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/js/bootstrap.min.js" integrity="sha384-alpBpkh1PFOepccYVYDB4do5UnbKysX5WZXm3XxPqe5iKTfUKjNkCk9SaVuEZflJ" crossorigin="anonymous"></script>                    
    </body>
</html>
