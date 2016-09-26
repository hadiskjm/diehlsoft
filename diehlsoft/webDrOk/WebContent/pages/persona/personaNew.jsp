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
	  
function cancel(){
	  var personaForm = document.getElementById("personaForm");
	  personaForm.action="<%= request.getContextPath()%>/redireccionando.do?event=homeCorp";
	  personaForm.submit();
	  }
function save(){
	  var personaForm = document.getElementById("personaForm");
	  personaForm.action="<%= request.getContextPath()%>/personaNew.do?event=perSave&saveandadd=save";
	  personaForm.submit();
	  }


   </script>
   <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
</head>
<body>
<html:form action="personaNew.do" method="post" styleId="personaForm" >
<div class="container bg2 clearfix">
    <div id="maincont" class="bodycontainer clearfix">
<!-- =================================================== -->
     <h2><bean:message key="personaForm.personaNew.title"/></h2>
    <hr>
    <br>
    
    <div class="mainForm">
				
				
				<legend><bean:message key="personaForm.personaNew.subtitle.user"/></legend>
	
	<div class="cbp-mc-form">			
	<div class="cbp-mc-column33">
					
	<label><bean:message key="personaForm.personaNew.txt.strusuUser"/>:</label>
	<html:text property="strusuUser"  styleId="strusuUser"/>
	<span  class="generalErrors"><html:errors property="strusuUser"/></span>
	</div>
	<div class="cbp-mc-column33">
	<label><bean:message key="personaForm.personaNew.txt.strusuPassword"/>:</label>
	<html:password property="strusuPassword"  styleId="strusuPassword"/>
	<span  class="generalErrors"><html:errors property="strusuPassword"/></span>
	</div>
	<div class="cbp-mc-column33">
	<label><bean:message key="personaForm.personaNew.txt.strusuConfirPassword"/>:</label>
	<html:password property="strusuConfirPassword"  styleId="strusuConfirPassword"/>
	<span  class="generalErrors"><html:errors property="strusuConfirPassword"/></span>
     </div>
    </div>

   

    </div>
    
    <div class="mainForm">
				
				
				<legend><bean:message key="personaForm.personaNew.subtitle"/></legend>
	
	<div class="cbp-mc-form">			
	<div class="cbp-mc-column33">
					
	<label><bean:message key="personaForm.personaNew.txt.strperNombre"/>:</label>
	<html:text property="strperNombre"  styleId="strperNombre"/>
	<span  class="generalErrors"><html:errors property="strperNombre"/></span>
	</div>
	<div class="cbp-mc-column33">
	<label><bean:message key="personaForm.personaNew.txt.strperApellidoPaterno"/>:</label>
	<html:text property="strperApellidoPaterno"  styleId="strperApellidoPaterno"/>
	<span  class="generalErrors"><html:errors property="strperApellidoPaterno"/></span>
	</div>
	<div class="cbp-mc-column33">
	<label><bean:message key="personaForm.personaNew.txt.strperApellidoMaterno"/>:</label>
	<html:text property="strperApellidoMaterno"  styleId="strperApellidoMaterno"/>
	<span  class="generalErrors"><html:errors property="strperApellidoMaterno"/></span>
     </div>
    </div>
  
    <div class="cbp-mc-form">			
	<div class="cbp-mc-column33">
	
	<label><bean:message key="personaForm.personaNew.cbo.strperSexo"/>:</label>
	<html:select property="strperSexo">
       <html:option value="es_PE"><bean:message key="usuarioForm.option.hombre"/></html:option>
	   <html:option value="en_US"><bean:message key="usuarioForm.option.mujer"/></html:option>      
    </html:select>
    </div>
    <div class="cbp-mc-column33">
    <label><bean:message key="personaForm.personaNew.txt.strperCorreo"/>:</label>
	<html:text property="strperCorreo"  styleId="strperCorreo"/>
	<span  class="generalErrors"><html:errors property="strperCorreo"/></span>
	</div>
	<div class="cbp-mc-column33">
	<label><bean:message key="personaForm.personaNew.txt.strperDireccion"/>:</label>
	<html:text property="strperDireccion"  styleId="strperDireccion"/>
	<span  class="generalErrors"><html:errors property="strperDireccion"/></span>

    </div>
    </div>
    
    <div class="cbp-mc-form">			
	<div class="cbp-mc-column33">
    
    <label><bean:message key="personaForm.personaNew.txt.strperTelefono"/>:</label>
	<html:text property="strperTelefono"  styleId="strperTelefono"/>
	<span  class="generalErrors"><html:errors property="strperTelefono"/></span>
	</div>
	<div class="cbp-mc-column33">
    <label><bean:message key="personaForm.personaNew.cbo.intpisId"/>:</label>
	<html:select property="intpisId" >
     <html:optionsCollection label="strpisDescripcion" property="perListPais" value="intpisId" />
    </html:select>

    </div>
    </div>
    
    
    <div class="cbp-mc-form">			
	<div class="cbp-mc-column33">
    
    <p>Al hacer clic en "Registrarte", aceptas las <html:link action="redireccionando.do?event=aviso">Condiciones</html:link>  y confirmas que leíste nuestra <html:link action="redireccionando.do?event=aviso">Política de datos</html:link>, incluido el uso de cookies.</p>

    </div>
    </div>
    
   

    
    <BR>
            &nbsp;
            <html:submit property="" styleClass="button green medium"  onclick="save()" >
            <bean:message key='personaForm.personaNew.btn.save'/></html:submit> 
		     &nbsp;
			<html:button property="" styleClass="button green medium" onclick="cancel()" >
			<bean:message key='personaForm.personaNew.btn.cancel'/></html:button>
    </div>
    
     <span class="generalErrors">
    <logic:equal name="personaForm" property="flagConfirm" value="ERROR">
	<script type="text/javascript">
	alert("<bean:message key="personaForm.personaNew.error.error" /> <bean:write name="personaForm" property="strperCorreo"/> Ó <bean:write name="personaForm" property="strusuUser"/>");
	</script>
	
    </logic:equal>
    <logic:equal name="personaForm" property="flagConfirm" value="OK">
    
    <script type="text/javascript">
	alert("<bean:message key="personaForm.personaNew.ok.ok" />");
	</script>
	
    </logic:equal>
    
    <logic:equal name="personaForm" property="flagConfirm" value="ERRORCLAVE">
    
    <script type="text/javascript">
	alert("<bean:message key="personaForm.personaNew.error.clave" />");
	</script>
	
    </logic:equal>
    
    <logic:equal name="personaForm" property="flagConfirm" value="FALSE">
	&nbsp;
    </logic:equal>
    </span>
    
   

    <br>
  
<!-- ================================================= -->
</div>
</div>
    </html:form>
   	  
</body>
</html>