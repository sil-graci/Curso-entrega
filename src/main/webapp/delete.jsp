<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import = "java.sql.*" %>  
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Borrar datos</title>
</head>
<body>
<%
		
	Class.forName("com.mysql.cj.jdbc.Driver");
	try{
		Connection cn = DriverManager.getConnection
				("jdbc:mysql://localhost:3306/postulantes", "root", "");
		
		Statement stm = cn.createStatement();
		
		String valor = "NO";
		ResultSet rsId = stm.executeQuery("SELECT MAX(id) FROM postulantes");
		
		while(rsId.next()){

			int eid = rsId.getInt(1);
			String consulta = "UPDATE postulantes SET confirmado= '"+valor+"'  WHERE id = "+ eid +"";
			stm.executeUpdate(consulta);
		}
	
	
	}catch(Exception e){
		out.print("");
		
	}
%>

 <jsp:include page="Postulantes.html"></jsp:include>
</body>
</html>