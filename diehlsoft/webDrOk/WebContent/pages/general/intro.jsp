<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
   
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<script type="text/javascript">
$(window).load(function () {
	  
	  var idiomaNavegador = new String;

	   if (navigator.language){
	      idiomaNavegador = navigator.language;
        alert(idiomaNavegador);
	      // En este caso, el idioma devuelto puede contener el 
	      // subcódigo de idioma (p.ej. "es-ES").
	   } 
	   
	});
</script>
</head>
<body>
 
<% response.sendRedirect("drokhealthcare.do"); %>
</body>
</html>