<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="/WEB-INF/tld-diehl/struts-html.tld" prefix="html" %>
<%@ taglib uri="/WEB-INF/tld-diehl/struts-bean.tld" prefix="bean" %>
<%@ taglib uri="/WEB-INF/tld-diehl/struts-logic.tld" prefix="logic" %>
<%@ taglib uri="/WEB-INF/tld-diehl/struts-nested.tld"  prefix="nested" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%int i=1; %>
<html>
<head>

<script type="text/javascript">
function cancel(){
	  var opcionPerfilForm = document.getElementById("opcionPerfilForm");
	  opcionPerfilForm.action="<%= request.getContextPath()%>/redireccionando.do?event=opcionPerfilSearch";
	  opcionPerfilForm.submit();
	  }
function save(){
	  var opcionPerfilForm = document.getElementById("opcionPerfilForm");
	  opcionPerfilForm.action="<%= request.getContextPath()%>/opcionPerfilNew.do?event=save&saveandadd=save";
	  opcionPerfilForm.submit();
	  }
function saveandadd(){
	  var opcionPerfilForm = document.getElementById("opcionPerfilForm");
	  opcionPerfilForm.action="<%= request.getContextPath()%>/opcionPerfilNew.do?event=save&saveandadd=saveandadd";
	  opcionPerfilForm.submit();
	  }
	  
</script>
   
</head>
<body>
<html:form action="opcionPerfilNew.do" method="post" styleId="opcionPerfilForm">
<div class="container bg1 clearfix">
	<div id="maincont" class="bodycontainer clearfix">
<!-- =================================================== -->
     <h4><bean:message key="opcionPerfilForm.opcionPerfilNew.title"/></h4>
    <hr>
    <br>
    
    <fieldset>
    
    <legend><bean:message key="opcionPerfilForm.opcionPerfilNew.subtitle"/></legend>
    
    <div class="mainForm">
				<div class="cbp-mc-form">
				<fieldset>
					<div class="cbp-mc-column50">
					
    <label><bean:message key="opcionPerfilForm.txt.stroppDescripcion"/>:</label>
	<html:text styleId="stroppDescripcion" property="stroppDescripcion" />
	<span class="generalErrors"><html:errors property="stroppDescripcion"/></span>
	
     <label><bean:message key="opcionPerfilForm.opcionPerfilNew.cbointPerfil"/>:</label>
	<html:select property="intpefId">
     <html:optionsCollection label="strpefDescripcion" property="pefSearchList" value="intpefId" />
    </html:select>
    
    </div>
    <div class="cbp-mc-column50">
    
    <label><bean:message key="opcionPerfilForm.cbo.stroppEstado"/>:</label>
	<html:select property="stroppEstado">
     <html:optionsCollection label="strestNombre" property="estModuloOpp" value="strestNombre" />
    </html:select>
     
      <label><bean:message key="opcionPerfilForm.cbo.stroppLocale"/>:</label>
       <html:select  property="stroppLocale" disabled="true">
          <html:option value="es_PE"><bean:message key="opcionPerfilForm.option.spanish"/></html:option>
          <html:option value="en_US"><bean:message key="opcionPerfilForm.option.english"/></html:option>
            </html:select>
            
       </div>
       </fieldset>
       </div>
       <br>     
            &nbsp;
            <html:submit property="" styleClass="button green medium" onclick="save()" >
	        <bean:message key='opcionPerfilForm.opcionPerfilNew.btn.save'/></html:submit>
		    &nbsp;
		    <html:button property="" styleClass="button green medium" onclick="saveandadd()" >
		    <bean:message key='opcionPerfilForm.opcionPerfilNew.btn.saveandadd'/></html:button>
		     &nbsp;
			<html:button property="" styleClass="button green medium" onclick="cancel()" >
			<bean:message key='opcionPerfilForm.opcionPerfilNew.btn.cancel'/></html:button>

    </div>

    <span class="generalErrors">
    <logic:equal name="opcionPerfilForm" property="flagConfirm" value="ERROR">
	<script type="text/javascript">
	alert("<bean:message key="opcionPerfilForm.opcionPerfilNew.error.error" /> <bean:write name="opcionPerfilForm" property="stroppDescripcion"/>");
	</script>
	
    </logic:equal>
    <logic:equal name="opcionPerfilForm" property="flagConfirm" value="OK">
    
    <script type="text/javascript">
	alert("<bean:message key="opcionPerfilForm.opcionPerfilNew.ok.ok" /> <bean:write name="opcionPerfilForm" property="stroppDescripcion"/>");
	</script>
	
    </logic:equal>
    
    <logic:equal name="opcionPerfilForm" property="flagConfirm" value="FALSE">
	&nbsp;
    </logic:equal>
    </span>
    

   </fieldset>

<!-- ================================================= -->
</div>
</div>
    </html:form>  
</body>
</html>