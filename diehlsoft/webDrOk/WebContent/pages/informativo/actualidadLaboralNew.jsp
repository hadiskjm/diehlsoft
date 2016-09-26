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
<script type="text/javascript" src="js/jquery-1.4.2.min.js"></script>
<script type="text/javascript" src="js/jquery.autocomplete.js"></script>
	
<script type="text/javascript">
function cancel(){
	  var actualidadLaboralForm = document.getElementById("actualidadLaboralForm");
	  actualidadLaboralForm.action="<%= request.getContextPath()%>/actualidadLaboralSearch.do?event=actualidadLaboralSearch";
	  actualidadLaboralForm.submit();
	  }
function save(){
	  var actualidadLaboralForm = document.getElementById("actualidadLaboralForm");
	  actualidadLaboralForm.action="<%= request.getContextPath()%>/actualidadLaboralNew.do?event=aclSave&saveandadd=save";
	  actualidadLaboralForm.submit();
	  }
function saveandadd(){
	  var actualidadLaboralForm = document.getElementById("actualidadLaboralForm");
	  actualidadLaboralForm.action="<%= request.getContextPath()%>/actualidadLaboralNew.do?event=aclSave&saveandadd=saveandadd";
	  actualidadLaboralForm.submit();
	  }

jQuery(function(){
		$("#strpefDescripcion").autocomplete("<%= request.getContextPath()%>/pages/perfil/acDescPerfil.jsp");
	});
   </script>
   <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
</head>
<body>
<html:form action="actualidadLaboralNew.do" method="post" styleId="actualidadLaboralForm" enctype="multipart/form-data">
<div class="container bg1 clearfix">
	<div id="maincont" class="bodycontainer clearfix">
<!-- =================================================== -->
     <h4><bean:message key="actualidadLaboralForm.actualidadLaboralNew.title"/></h4>
    <hr>
    <br>
    <fieldset>

    <legend><bean:message key="actualidadLaboralForm.actualidadLaboralNew.subtitle"/></legend>
    
    <div class="mainForm">
				<div class="cbp-mc-form">
				<fieldset>
					<div class="cbp-mc-column50">
	
	<label><bean:message key="actualidadLaboralForm.txt.intbolId"/>:</label>
	<html:text property="intbolId" disabled="true"/>
	
	 <label><bean:message key="actualidadLaboralForm.txt.straclTitulo"/>:</label>
	<html:select property="straclTitulo">
     <html:optionsCollection label="strestNombre" property="aclOpcionesTitulo" value="strestNombre" />
    </html:select>
					
	<label><bean:message key="actualidadLaboralForm.txt.straclNombre"/>:</label>
	<html:text property="straclNombre" />
	<span  class="generalErrors"><html:errors property="straclNombre"/></span>

	<label><bean:message key="actualidadLaboralForm.cbo.straclEstado"/>:</label>
	<html:select property="straclEstado">
     <html:optionsCollection label="strestNombre" property="aclModuloEstado" value="strestNombre" />
    </html:select>
  </div>
  
    <div class="cbp-mc-column50">
    
    <label><bean:message key="actualidadLaboralForm.textArea.straclResumen"/>:</label>
	<html:textarea  property="straclResumen" />
	<span  class="generalErrors"><html:errors property="straclResumen"/></span>
    
    <label><bean:message key="actualidadLaboralForm.actualidadLaboralNew.file.straclFile"/>:</label>
	<html:file property="straclFile" />
	<span  class="generalErrors"><html:errors property="straclFile"/></span>
    
	<logic:equal name="actualidadLaboralForm" property="flagConfirm" value="FALSE">
	&nbsp;
    </logic:equal>
	<logic:equal name="actualidadLaboralForm" property="flagConfirm" value="OKOK">
     <script type="text/javascript">
	alert("<bean:message key="actualidadLaboralForm.actualidadLaboralNew.ok.ok"/>");
	document.location.href="<%= request.getContextPath()%>/redireccionando.do?event=actualidadLaboralSearch";
	</script>
    </logic:equal>
    <logic:equal name="actualidadLaboralForm" property="flagConfirm" value="OKOKOK">
     <script type="text/javascript">
	alert("<bean:message key="actualidadLaboralForm.perfilUpdate.ok.ok.ok"/>");
	document.location.href="<%= request.getContextPath()%>/redireccionando.do?event=actualidadLaboralSearch";
	</script>
    </logic:equal>
    
    </div>
    
    <div class="cbp-mc-column100">
    <br> 
     <a href="#" onclick="return PopupCenter()"><html:img page="/image/image_multi.png" alt="Seleccionar Imagen"/> </a>
     <html:link action="/imagenNew.do?event=imgNew"><html:img page="/image/image_up.png" alt="Subir Imagen"/></html:link>
    </div>
    
    <div class="cbp-mc-column100">
    
    <label><bean:message key="actualidadLaboralForm.actualidadLaboralNew.textArea.straclContenido"/>:</label>
	<html:textarea  property="straclContenido" styleClass="ckeditor"  cols="80" styleId="editor1" rows="10"/>
	<span  class="generalErrors"><html:errors property="straclContenido"/></span>
	
    </div>
    
    </fieldset>
    </div>
    
    <BR>
            &nbsp;
            <html:submit property="" styleClass="button green medium"  onclick="save()" >
            <bean:message key='actualidadLaboralForm.actualidadLaboralNew.btn.save'/></html:submit> 
            &nbsp;
		    <html:button property="" styleClass="button green medium" onclick="saveandadd()" >
		    <bean:message key='actualidadLaboralForm.actualidadLaboralNew.btn.saveandadd'/></html:button>
		     &nbsp;
			<html:button property="" styleClass="button green medium" onclick="cancel()" >
			<bean:message key='actualidadLaboralForm.actualidadLaboralNew.btn.cancel'/></html:button>
    </div>
    
   </fieldset>

    <br>
  
<!-- ================================================= -->
</div>
</div>
    </html:form>
   	  
</body>
</html>