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
	  var boletinForm = document.getElementById("boletinForm");
	  boletinForm.action="<%= request.getContextPath()%>/redireccionando.do?event=boletinSearch";
	  boletinForm.submit();
	  }
function save(){
	  var boletinForm = document.getElementById("boletinForm");
	  boletinForm.action="<%= request.getContextPath()%>/boletinNew.do?event=bolSave&saveandadd=save";
	  boletinForm.submit();
	  }
function saveandadd(){
	  var boletinForm = document.getElementById("boletinForm");
	  boletinForm.action="<%= request.getContextPath()%>/boletinNew.do?event=bolSave&saveandadd=saveandadd";
	  boletinForm.submit();
	  }
   </script>
   <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
</head>
<body>
<html:form action="boletinNew.do" method="post" styleId="boletinForm" enctype="multipart/form-data">
<div class="container bg1 clearfix">
	<div id="maincont" class="bodycontainer clearfix">
<!-- =================================================== -->
     <h4><bean:message key="boletinForm.boletinNew.title"/></h4>
    <hr>
    <br>
    <fieldset>

    <legend><bean:message key="boletinForm.boletinNew.subtitle"/></legend>
    
    <div class="mainForm">
				<div class="cbp-mc-form">
				<fieldset>
					<div class="cbp-mc-column50">
					
	<label><bean:message key="boletinForm.txt.strbolNombre"/>:</label>
	<html:text property="strbolNombre" />
	<span  class="generalErrors"><html:errors property="strbolNombre"/></span>

	<label><bean:message key="boletinForm.cbo.strbolEstado"/>:</label>
	<html:select property="strbolEstado">
     <html:optionsCollection label="strestNombre" property="bolModuloEstado" value="strestNombre" />
    </html:select>
  </div>
  
    <div class="cbp-mc-column50">

    <label><bean:message key="boletinForm.boletinNew.file.strbolFile"/>:</label>
	<html:file property="strbolFile" />
	<span  class="generalErrors"><html:errors property="strbolFile"/></span>
    
	 <span class="generalErrors">
    <logic:equal name="boletinForm" property="flagConfirm" value="ERROR">
	<script type="text/javascript">
	alert("<bean:message key="boletinForm.boletinNew.error.error" /> <bean:write name="boletinForm" property="strbolNombre"/>");
	</script>
	
    </logic:equal>
    <logic:equal name="boletinForm" property="flagConfirm" value="OK">
    
    <script type="text/javascript">
	alert("<bean:message key="boletinForm.boletinNew.ok.ok" />");
	</script>
	
    </logic:equal>
    
    <logic:equal name="boletinForm" property="flagConfirm" value="FALSE">
	&nbsp;
    </logic:equal>
    </span>
    
    </div>

    
    </fieldset>
    </div>
    
    <BR>
            &nbsp;
            <html:submit property="" styleClass="button green medium"  onclick="save()" >
            <bean:message key='boletinForm.boletinNew.btn.save'/></html:submit> 
            &nbsp;
		    <html:button property="" styleClass="button green medium" onclick="saveandadd()" >
		    <bean:message key='boletinForm.boletinNew.btn.saveandadd'/></html:button>
		     &nbsp;
			<html:button property="" styleClass="button green medium" onclick="cancel()" >
			<bean:message key='boletinForm.boletinNew.btn.cancel'/></html:button>
    </div>
    
   </fieldset>

    <br>
  
<!-- ================================================= -->
</div>
</div>
    </html:form>
   	  
</body>
</html>