<%@page import="bean.BeanPersona"%>
<%@page import="bean.BeanUsuario"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="/WEB-INF/tld-diehl/struts-html.tld" prefix="html" %>
<%@ taglib uri="/WEB-INF/tld-diehl/struts-bean.tld" prefix="bean" %>
<%@ taglib uri="/WEB-INF/tld-diehl/struts-logic.tld" prefix="logic" %>
<%@ taglib uri="/WEB-INF/tld-diehl/struts-nested.tld"  prefix="nested" %>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
</head>
<body >
	<div class="container clearfix">
	<div id="menucont" class="bodycontainer clearfix">
<div id='cssmenu'>

	<ul>
	
	        

	        
	        <li > <html:link action="redireccionando.do?event=criterioPublic">CRITERIOS ACTUALES</html:link>	         
	        </li>
	        
	        <li > <html:link action="redireccionando.do?event=regulacionLaboralPublic">REGULACIÓN LABORAL</html:link>	         
	        </li>

	        <li > <html:link action="redireccionando.do?event=gestionPersonasPublic">GESTIÓN DE PERSONAS</html:link>	         
	        </li>
	        
	        <li > <html:link action="redireccionando.do?event=actualidadLaboralPublic">COYUNTURA</html:link>
	        </li>
	        
	         <li > <html:link action="redireccionando.do?event=notasPrensaPublic">NOTAS DE PRENSA</html:link>	         
	        </li>
	        
	        <li > <html:link action="redireccionando.do?event=publicacionesPublic">PUBLICACIONES</html:link>	           
	        </li>
	        
	        
	       
	
	      
	</ul>

	

	</div>
	
    </div>
    </div>
</body>
</html>