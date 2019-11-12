    <!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">
  <title>FORMULARIO INSERCION DE PRODUCTOS</title>
  <link rel="icon" type="image/png" href="https://cdn4.iconfinder.com/data/icons/royal-crowns/154/vip-corona-royal-crown-512.png">
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
    integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
  <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet"
    integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN" crossorigin="anonymous">

  <style>
    body
{
    background: url("https://s3.amazonaws.com/battlefy-user-generated-assets-with-permissions%2Ffacebook%7C1520153248069868/1511051605527.negro.jpg") ;
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
<center>
<h1 ><strong>Ingresa el producto</strong></h1>
<div class="card" style="background-color: rgb(96, 104, 99, 0.26); width: 26rem;">
<br>
<form  method="POST" action="../../insertar_producto">
<div class="container-fluid">
<div class="row">
<div class="col-xl-3">
<p align="left">ID:</p>
</div>
<div class="col-xl-9">
        	<div class="input-group" >
                <span class="input-group-addon"></span>
                <input type="text" style="background-color: rgb(96, 104, 99, 0.26)"  class="form-control" placeholder="ingrese id" name="id" required="required">	
          </div>
</div>
</div>
<div class="row">
<div class="col-xl-3">
<p align="left">Nombre:</p>
</div>
<div class="col-xl-9">
        	<div class="input-group" >
                <span class="input-group-addon"></span>
                <input type="text"   class="form-control" placeholder="ingrese nombre" name="nombre" required="required">	
          </div>
</div>
</div>
<div class="row">
<div class="col-xl-3">
<p align="left">cantidad:</p>
</div>
<div class="col-xl-9">
        	<div class="input-group" >
                <span class="input-group-addon"></span>
                <input type="text"   class="form-control" placeholder="ingrese cantidad" name="cantidad" required="required">	
          </div>
</div>
</div>
<div class="row">
<div class="col-xl-3">
<p align="left">Precio:</p>
</div>
<div class="col-xl-9">
        	<div class="input-group" >
                <span class="input-group-addon"></span>
                <input type="text"   class="form-control" placeholder="ingrese precio" name="precio" required="required">	
          </div>
</div>
</div>
<div class="row">
<div class="col-xl-3">
<p align="left">tipo:</p>
</div>
<div class="col-xl-9">
        	<select name="tipo" class="form-control" required>
                           <option value="0">seleccione tipo de producto</option>
                           <option value="1">Comestibles</option>
                           <option value="2">Videojuegos</option>
                           <option value="3">Golosinas</option>
                           <option value="4">Productos tecnologicos</option>
                           <option value="5">Bebidas</option>
                           <option value="6">Utiles escolares</option>
                       </select>	
          </div>
</div>
</div>
<br>
<div class="d-flex bd-highlight">
  <div class="p-2 flex-fill bd-highlight"><a href="javascript:history.back()"><button type="button" class="btn btn-info btn-block">Cancelar</button></a></div>
  <div class="p-2 flex-fill bd-highlight"><input class="btn btn-info btn-block" type="submit" value="Registrar"></div>

</div>

</form>
</div>
</div>
<br>
</div>

</font>
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.3/umd/popper.min.js" integrity="sha384-vFJXuSJphROIrBnz7yo7oB41mKfc8JzQZiCq4NCceLEaO4IHwicKwpJf9c9IpFgh" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/js/bootstrap.min.js" integrity="sha384-alpBpkh1PFOepccYVYDB4do5UnbKysX5WZXm3XxPqe5iKTfUKjNkCk9SaVuEZflJ" crossorigin="anonymous"></script>

</body>
</html>