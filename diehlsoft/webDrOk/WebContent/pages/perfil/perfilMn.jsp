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
function save(){
	  var perfilForm = document.getElementById("perfilForm");
	  perfilForm.action="<%= request.getContextPath()%>/perfilMn.do?event=save&saveandadd=save";
	  perfilForm.submit();
	  }
function saveandadd(){
	  var perfilForm = document.getElementById("perfilForm");
	  perfilForm.action="<%= request.getContextPath()%>/perfilMn.do?event=save&saveandadd=saveandadd";
	  perfilForm.submit();
	  }
	  
</script>
   
</head>
<body>
<html:form action="perfilMn.do" method="post" styleId="perfilForm">
<div class="container bg1 clearfix">
	<div id="maincont" class="bodycontainer clearfix">
<!-- =================================================== -->
<h4><bean:message key="perfilForm.perfilMn.title"/></h4>
    <hr>
    <br>
    

    <fieldset>
    
    <legend><bean:message key="perfilForm.perfilMn.subtitle"/></legend>
    
     <div class="mainForm">
				<div class="cbp-mc-form">
				<fieldset>
					<div class="cbp-mc-column50">
    
    <label><bean:message key="perfilForm.txt.strpefDescripcion"/>:</label>
	<html:text  property="strpefDescripcion" />
	<span class="generalErrors"><html:errors property="strpefDescripcion"/></span>

	
    <label><bean:message key="perfilForm.cbo.strpefEstado"/>:</label>
	<html:select property="strpefEstado">
     <html:optionsCollection label="strestNombre" property="estModuloPef" value="strestNombre" />
    </html:select>
    
    </div>
    
    <div class="cbp-mc-column50">
	<label><bean:message key="perfilForm.cbo.strpefLocale"/>:</label>
	 <html:select property="strpefLocale" disabled="true">
          <html:option value="es_PE"><bean:message key="perfilForm.option.spanish"/></html:option>
          <html:option value="en_US"><bean:message key="perfilForm.option.english"/></html:option>
            </html:select>
 

    
        </div>
           </fieldset>
    </div>
    
    <BR>     
	    &nbsp;<html:submit property="" styleClass="button green medium" onclick="save()" >
	        <bean:message key='perfilForm.perfilMn.btn.save'/></html:submit>
		    &nbsp;
		    <html:button property="" styleClass="button green medium" onclick="saveandadd()" >
		    <bean:message key='perfilForm.perfilMn.btn.saveandadd'/></html:button>
		     &nbsp;
			<html:button property="" styleClass="button green medium" onclick="cancel()" >
			<bean:message key='perfilForm.perfilMn.btn.cancel'/></html:button>
    </div>
    
    		
   <span class="generalErrors">
    <logic:equal name="perfilForm" property="flagConfirm" value="ERROR">
	<script type="text/javascript">
	alert("<bean:message key="perfilForm.perfilMn.error.error" /> <bean:write name="perfilForm" property="strpefDescripcion"/>");
	</script>
	
    </logic:equal>
    <logic:equal name="perfilForm" property="flagConfirm" value="OK">
    
    <script type="text/javascript">
	alert("<bean:message key="perfilForm.perfilMn.ok.ok" /> <bean:write name="perfilForm" property="strpefDescripcion"/>");
	</script>
	
    </logic:equal>
    
    <logic:equal name="perfilForm" property="flagConfirm" value="FALSE">
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