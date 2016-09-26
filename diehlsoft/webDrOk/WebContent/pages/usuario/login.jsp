<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="/WEB-INF/tld-diehl/struts-bean.tld" prefix="bean" %>
<%@ taglib uri="/WEB-INF/tld-diehl/struts-logic.tld" prefix="logic" %>
<%@ taglib uri="/WEB-INF/tld-diehl/struts-html.tld" prefix="html" %>
<%@ taglib uri="/WEB-INF/tld-diehl/struts-nested.tld"  prefix="nested" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html:html>
<head>
<script type="text/javascript">
function changueLanguage(){
	  var usuarioForm = document.getElementById("usuarioForm");
	  usuarioForm.action="<%= request.getContextPath()%>/usuario.do?event=changeLanguage";
	  usuarioForm.submit();
	  }
function autenticar(){
	  var usuarioForm = document.getElementById("usuarioForm");
	  usuarioForm.action="<%= request.getContextPath()%>/usuario.do?event=autenticar";
	  usuarioForm.submit();
	  }

</script>
</head>
<body >
<html:form action="usuario" styleId="usuarioForm" method="post" focus="strusuUser" onsubmit="return autenticar(this);">  
<div class="container bg2 clearfix">
    <div id="maincont" class="bodycontainer clearfix">
					
	<%-- ============================================= --%> 
	<fieldset>
	<div class="mainForm">
				<div class="cbp-mc-form">

<div class="cbp-mc-column25">
<html:img border="0" page="/image/Users.png" />
</div>

	<div class="cbp-mc-column50"> 				
<h5><bean:message key="usuarioForm.title.login"/></h5>
<label><bean:message key="usuarioForm.lbl.usuario"/>:</label>
<html:text  property="strusuUser"/>
<span  class="generalErrors"> <html:errors property="strusuUser"/></span>

<label><bean:message key="usuarioForm.lbl.contrasena"/>:</label>
<html:password property="strusuPassword"/>
<span class="generalErrors"> <html:errors property="strusuPassword"/></span>

<label><bean:message key="usuarioForm.cbo.language"/></label>
<html:select  styleClass="generalCombobox" property="strusuIdioma" onchange="changueLanguage(this.value)">
          <html:option value="es_PE"><bean:message key="usuarioForm.option.spanish"/></html:option>
          <html:option value="en_US"><bean:message key="usuarioForm.option.english"/></html:option>
            </html:select>

<logic:messagesPresent >
	<br><span  class="generalErrors"> <bean:message key="usuarioForm.error.autenticar" /></span>
  </logic:messagesPresent>
<br>
<html:submit property="" styleClass="button green medium" onclick="autenticar()" ><bean:message key='usuarioForm.btn.login'/></html:submit>
</div>


	<div class="cbp-mc-column25"> 				
<html:img border="0" page="/image/candado.gif" />
</div>

<div class="cbp-mc-column25"> 
<h4 class="sb-widget-title">
		<bean:message key="usuarioForm.msg.registrar"/>
		<html:link action="RegisterUserPage.do?event=perNew">Registrate</html:link>
		</h4>
	</div>	
</div>
</div>
</fieldset>
<%-- ========================================== --%>  

</div>
</div>

</html:form>
</body>
</html:html>