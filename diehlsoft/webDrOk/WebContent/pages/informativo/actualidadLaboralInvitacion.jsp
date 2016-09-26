<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="/WEB-INF/tld-diehl/struts-html.tld" prefix="html" %>
<%@ taglib uri="/WEB-INF/tld-diehl/struts-bean.tld" prefix="bean" %>
<%@ taglib uri="/WEB-INF/tld-diehl/struts-logic.tld" prefix="logic" %>
<%@ taglib uri="/WEB-INF/tld-diehl/struts-nested.tld"  prefix="nested" %>
<%@taglib uri="/WEB-INF/tld-diehl/displaytag.tld" prefix="display" %>
<%@ taglib uri="/WEB-INF/tlds/birt.tld" prefix="birt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script type="text/javascript">
function send(){
	  var actualidadLaboralForm = document.getElementById("actualidadLaboralForm");
	  actualidadLaboralForm.action="<%= request.getContextPath()%>/actualidadLaboralInvitacion.do?event=aclSendInvitacion";
	  actualidadLaboralForm.submit();
	  window.close();
	  }

   </script>
 <title>Seleccionar Imagen</title>
		<meta charset="UTF-8" />
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"> 
		<meta name="viewport" content="width=device-width, initial-scale=1.0"> 
        <meta name="description" content="Slicebox - 3D Image Slider with Fallback" />
        <meta name="keywords" content="jquery, css3, 3d, webkit, fallback, slider, css3, 3d transforms, slices, rotate, box, automatic" />
		<meta name="author" content="Pedro Botelho for Codrops" />
		<link rel="shortcut icon" href="../favicon.ico"> 
        <link rel="stylesheet" type="text/css" href="css/demo.css" />
		<link rel="stylesheet" type="text/css" href="css/slicebox.css" />
		<link rel="stylesheet" type="text/css" href="css/custom.css" />
		<script type="text/javascript" src="js/modernizr.custom.46884.js"></script>
		<script type="text/javascript" src="js/jquery.slicebox.js"></script>
</head>
<body  onBlur="self.focus()" onLoad="self.focus()">
<html:form action="actualidadLaboralInvitacion.do" method="post" styleId="actualidadLaboralForm">
<div class="container bg1 clearfix">
	<div id="maincont" class="bodycontainer clearfix">
<!-- =================================================== -->

<fieldset>

    <legend><bean:message key="actualidadLaboralForm.actualidadLaboralInvitacion.subtitle"/></legend>
    
    <div class="mainForm">
				<div class="cbp-mc-form">
				<fieldset>
	
	<div class="cbp-mc-column100">

	<label><bean:message key="actualidadLaboralForm.actualidadLaboralInvitacion.txt.straclCorreo"/>:</label>
	<html:text property="straclCorreo"></html:text>
    
    <label><bean:message key="actualidadLaboralForm.actualidadLaboralInvitacion.txtArea.straclCorreoMensaje"/>:</label>
	<html:textarea property="straclCorreoMensaje"></html:textarea>
  
    </div>
    
    </fieldset>
    </div>
    
    <BR>
            &nbsp;
            <html:submit property="" styleClass="button green medium"  onclick="send()" ><bean:message key='actualidadLaboralForm.actualidadLaboralInvitacion.btn.send'/></html:submit> 

    </div>
 
    
    
   </fieldset>
  
<!-- ================================================= -->
</div>
</div>
		</html:form>
	</body>

</html>	