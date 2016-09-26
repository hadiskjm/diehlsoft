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
	  var perfilForm = document.getElementById("perfilForm");
	  perfilForm.action="<%= request.getContextPath()%>/redireccionando.do?event=perfilSearch";
	  perfilForm.submit();
	  }
function update(){
	  var perfilForm = document.getElementById("perfilForm");
	  perfilForm.action="<%= request.getContextPath()%>/perfilUpdate.do?event=saveUpdate";
	  perfilForm.submit();
	  }
  
</script>
   
</head>
<body>
<html:form action="perfilUpdate.do" method="post" styleId="perfilForm">
<div class="container bg1 clearfix">
	<div id="maincont" class="bodycontainer clearfix">
<!-- =================================================== -->

    <h4><bean:message key="perfilForm.perfilUpdate.title"/></h4>
    <hr>
    <br>
    

    <fieldset>
    
    <legend><bean:message key="perfilForm.perfilUpdate.subtitle"/></legend>
         <div class="mainForm">
				<div class="cbp-mc-form">
				<fieldset>
					<div class="cbp-mc-column50">
					
    <label><bean:message key="perfilForm.perfilUpdate.txt.intpefId"/>:</label>
	<html:text property="intpefId" readonly="true"/>
	
	<label><bean:message key="perfilForm.perfilUpdate.txt.strpefDescripcion"/>:</label>
	<html:text property="strpefDescripcion" />
	<span class="generalErrors"><html:errors property="strpefDescripcion"/></span>
	
	</div>
	
	<div class="cbp-mc-column50">
	<label><bean:message key="perfilForm.perfilUpdate.cbo.strpefEstado"/>:</label>
	<html:select property="strpefEstado">
     <html:optionsCollection label="strestNombre" property="estModuloPef" value="strestNombre" />
    </html:select>

    
	<label><bean:message key="perfilForm.perfilUpdate.cbo.strpefLocale"/>:</label>
	<html:select  property="strpefLocale" disabled="true">
          <html:option value="es_PE"><bean:message key="perfilForm.perfilUpdate.option.spanish"/></html:option>
          <html:option value="en_US"><bean:message key="perfilForm.perfilUpdate.option.english"/></html:option>
            </html:select>
            
       </div>   
           </fieldset>
    </div>
    
    <BR>       

	        <html:submit property="" styleClass="button green medium" onclick="update()" >
	        <bean:message key='perfilForm.perfilUpdate.btn.update'/></html:submit>

			<html:button property="" styleClass="button green medium" onclick="cancel()" >
			<bean:message key='perfilForm.perfilUpdate.btn.cancel'/></html:button>
		
		</div>
		
	<span class="generalErrors">&nbsp;
    <logic:equal name="perfilForm" property="flagConfirm" value="ERROR">
    
	<script type="text/javascript">
	alert("<bean:message key="perfilForm.perfilUpdate.error.error"/> <bean:write name="perfilForm" property="strpefDescripcion"/>");
	</script>
    
    </logic:equal>
    </span>
	
    
   </fieldset>

<!-- ================================================= -->
</div>
</div>
    </html:form>  
</body>
</html>