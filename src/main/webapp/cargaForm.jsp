<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import = "java.sql.*" %>  

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Carga Formulario</title>
</head>

<body>
  <br/>
  <h4 class="text-center">Confirmar datos</h4>
<%

	String nombre = request.getParameter("nombre");
	String apellido = request.getParameter("apellido");
	String dni = request.getParameter("dni");
	String telefono = request.getParameter("telefono");
	
	
	Class.forName("com.mysql.cj.jdbc.Driver");
	try{
		Connection cn = DriverManager.getConnection
				("jdbc:mysql://localhost:3306/postulantes", "root", "");
		
		Statement stm = cn.createStatement();
		
		stm.executeUpdate("INSERT INTO postulantes(nombre,apellido,dni,telefono) VALUES ('"+
					nombre +"','"+ apellido +"','"+ dni +"','"+ telefono +"')");
		
	
	}catch(Exception e){
		out.print("e");
		
	}
%>

 <jsp:include page="Postulantes.jsp"></jsp:include>
</body>
</html>