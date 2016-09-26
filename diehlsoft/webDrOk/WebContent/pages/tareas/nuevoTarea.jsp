<%@ page language="java" contentType="text/html; charset=utf-8"%>
<%@ taglib uri="/WEB-INF/tld-diehl/struts-html.tld" prefix="html" %>
<%@ taglib uri="/WEB-INF/tld-diehl/struts-bean.tld" prefix="bean" %>
<%@ taglib uri="/WEB-INF/tld-diehl/struts-logic.tld" prefix="logic" %>
<%@ taglib uri="/WEB-INF/tld-diehl/struts-nested.tld"  prefix="nested" %>
<%@ taglib uri="/WEB-INF/tlds/birt.tld" prefix="birt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<div class="container bg1 clearfix">
	<div id="maincont" class="bodycontainer clearfix">
	<h4>REGISTRAR TAREAS</h4>
	<hr/>
	<br>
	
	<fieldset>
	<legend>Ingresar Datos</legend>
	
	<div class="mainForm">
				<div class="cbp-mc-form">
				<fieldset>
					<div class="cbp-mc-column50">
	
	<label>Día :</label>
      <input name="Field1" type="text" value="" size="20">
      
      <label>Hora :</label>
      <input name="Field1" type="text" value="" size="20">
      
      <label>Expediente :</label>
      <input name="Field1" type="text" value="" size="20">

     <label>Cliente :</label>
      <input name="Field1" type="text" value="" size="20">
   

      </div>
     
     <div class="cbp-mc-column50">

     <label>Tarea :</label>
      <input name="Field1" type="text" value="" size="20">
      
      <label>Contraparte :</label>
      <input name="Field1" type="text" value="" size="20">
      
      <label>Juzgado :</label>
      <input name="Field1" type="text" value="" size="20">
      
     <label>Responsable : </label>
      <input name="Field1" type="text" value="" size="20">
	  					
      </div>
       </fieldset>
      </div>

      
    
    <br>
    <html:submit property="" styleClass="button green medium" onclick="autenticar()" ><bean:message key='usuarioForm.btn.login'/></html:submit>
    
    </div>
    
     
  </fieldset>
	

 
	</div>
	</div>

</body>
</html>