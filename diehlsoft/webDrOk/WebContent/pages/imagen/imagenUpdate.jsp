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
	  var imagenForm = document.getElementById("imagenForm");
	  imagenForm.action="<%= request.getContextPath()%>/redireccionando.do?event=imagenSearch";
	  imagenForm.submit();
	  }
function save(){
	  var imagenForm = document.getElementById("imagenForm");
	  imagenForm.action="<%= request.getContextPath()%>/imagenUpdate.do?event=imgsaveUpdate";
	  imagenForm.submit();
	  }

   </script>
   <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
</head>
<body>
<html:form action="imagenUpdate.do" method="post" styleId="imagenForm" enctype="multipart/form-data">
<div class="container bg2 clearfix">
    <div id="maincont" class="bodycontainer clearfix">
<!-- =================================================== -->
     <h3><bean:message key="imagenForm.imagenUpdate.subtitle"/></h3>
    <hr>
    <br>
    <fieldset>

    <legend><bean:message key="imagenForm.imagenUpdate.subtitle"/></legend>
    
    <div class="mainForm">
				<div class="cbp-mc-form">
				<fieldset>
					<div class="cbp-mc-column50">
					
	<label><bean:message key="imagenForm.imagenUpdate.file.strimgNombre"/>:</label>
	<html:file property="strimgNombre" />
	<span  class="generalErrors"><html:errors property="strimgNombre"/></span>

	<label><bean:message key="imagenForm.imagenUpdate.cbo.strimgModulo"/>:</label>
	<html:select property="strimgModulo">
     <html:optionsCollection label="strestNombre" property="imgModuloModuloEstado" value="strestNombre" />
    </html:select>
  </div>
  
    <div class="cbp-mc-column50">

    <label><bean:message key="imagenForm.imagenUpdate.cbo.strimgEstado"/>:</label>
	<html:select property="strimgEstado">
     <html:optionsCollection label="strestNombre" property="imgModuloEstado" value="strestNombre" />
    </html:select>
    
    
    <label><bean:message key="imagenForm.imagenUpdate.file.strimgNombre"/>:</label>
	<html:text readonly="true" property="strimgNombreLbl" />
	<span  class="generalErrors"><html:errors property="strimgNombreLbl"/></span>
   
    </div>
    
    </fieldset>
    </div>
    
    <BR>
            &nbsp;
            <html:submit property="" styleClass="button green medium"  onclick="save()" >
            <bean:message key='imagenForm.imagenNew.btn.save'/></html:submit> 
            &nbsp;
			<html:button property="" styleClass="button green medium" onclick="cancel()" >
			<bean:message key='imagenForm.imagenNew.btn.cancel'/></html:button>
    </div>
    
     <span class="generalErrors">
    <logic:equal name="imagenForm" property="flagConfirm" value="ERROR">
	<script type="text/javascript">
	alert("<bean:message key="imagenForm.imagenUpdate.error.error" /> <bean:write name="imagenForm" property="strimgNombreLbl"/>");
	</script>
	
    </logic:equal>
    <logic:equal name="imagenForm" property="flagConfirm" value="OK">
    
    <script type="text/javascript">
	alert("<bean:message key="imagenForm.imagenUpdate.ok.ok" />");
	</script>
	
    </logic:equal>
    
    <logic:equal name="imagenForm" property="flagConfirm" value="FALSE">
	&nbsp;
    </logic:equal>
    </span>
    
    
   </fieldset>

    <br>
  
<!-- ================================================= -->
</div>
</div>
    </html:form>
   	  
</body>
</html>