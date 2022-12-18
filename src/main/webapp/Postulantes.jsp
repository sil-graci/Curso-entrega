<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html lang="es">
<head>
    <title>Inscripción</title>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  
    <!-- Bootstrap CSS v5.2.0-beta1 -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css"
      integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx" crossorigin="anonymous">
  
  </head>
  <body>
    <div class="container">
        <img src="./imagenes/curso-ingles.jpg">
           
        </div> 
  
      <br/>  
    <div class="container">
      
        <h5>Controlá los datos antes de finalizar la inscripción</h5>
        <h6>Si hacés algún cambio no olvides presionar el botón modificar antes de finalizar la carga</h6>
        <form action="Update.jsp">
          <div class="mb-3">
            <label class="form-label">Nombre</label>
           
            <input type="text" name="nombre" value="<%=request.getParameter("nombre") %>"  class="form-control"  aria-label="First name" id="nombre" >
          </div>
          <div class="mb-3">
            <label for="exampleInputPassword1" class="form-label">Apellido</label>
            <input type="text" name="apellido" value="<%=request.getParameter("apellido") %>"class="form-control" aria-label="First name" id="nombre">
          </div>
          <div class="mb-3">
            <label for="exampleInputEmail1" class="form-label">DNI</label>
            <input id="dni" name="dni" value="<%=request.getParameter("dni") %>" type="text"  class="form-control" placeholder="">
            
           
          </div>

          <div class="mb-3">
            <label for="exampleInputEmail1" class="form-label">Teléfono</label>
            <input id="telefono" name="telefono"  value="<%=request.getParameter("telefono") %>" type="text"  class="form-control" placeholder="">
           
          </div>
<br>
   
    <button type="button" id="botonBorro" class="btn btn-block text-success" style="background-color: rgb(158, 218, 80);" onclick="location.href='delete.jsp'">ELIMINAR</button>
    <button type="submit" id="botonModifica" class="btn btn-block text-success" style="background-color: rgb(158, 218, 80);" >MODIFICAR</button>  

     <button type="button" id="botonConfirma" class="btn btn-block text-success" style="background-color: rgb(158, 218, 80);"onclick="location.href='Postulantes.html'" >FIN CARGA</button>
        </form>
         <br>
      </div>
      <br>

    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.5/dist/umd/popper.min.js"
    integrity="sha384-Xe+8cL9oJa6tN/veChSP7q+mnSPaj5Bcu9mPX5F5xIGE0DVittaqT5lorf0EI7Vk" crossorigin="anonymous">
  </script>

  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.min.js"
    integrity="sha384-ODmDIVzN+pFdexxHEHFBQH3/9/vQ9uori45z4JjnFsRydbmQbmL5t1tQ0culUzyK" crossorigin="anonymous">
  </script>
</body>

</html>