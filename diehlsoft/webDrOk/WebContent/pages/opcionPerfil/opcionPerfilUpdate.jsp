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
function update(){
	  var opcionPerfilForm = document.getElementById("opcionPerfilForm");
	  opcionPerfilForm.action="<%= request.getContextPath()%>/opcionPerfilUpdate.do?event=saveUpdate";
	  opcionPerfilForm.submit();
	  }
  
</script>
   
</head>
<body>
<html:form action="perfilUpdate.do" method="post" styleId="opcionPerfilForm">
<table width="100%">
   <tr>
    <td class="generalTitulo"><bean:message key="opcionPerfilForm.perfilUpdate.title"/></td>
    </tr> 
    <tr>
    <td ><hr class="generalLineHorizontal"/></td>
    </tr>
    <tr>
	</tr>
    <tr>
    <td>
    <fieldset class="generalfieldset">
    
    <legend class="subTitulo" ><bean:message key="opcionPerfilForm.perfilUpdate.subtitle"/></legend>
    <table width="100%">
    <tr>
	<td>
    <table>
    <tr>
    <td class="generalLabel"><bean:message key="opcionPerfilForm.perfilUpdate.txt.intpefId"/></td>
	<td class="generalLabel">:</td>
	<td> <html:text styleClass="generalTextField" property="intpefId" readonly="true"/></td>
	<td>&nbsp;</td>
	
	<td class="generalLabel"><bean:message key="opcionPerfilForm.perfilUpdate.txt.strpefDescripcion"/></td>
	<td class="generalLabel">:</td>
	<td> <html:text styleClass="generalTextField" property="strpefDescripcion" /></td>
	<td class="generalErrors"><html:errors property="strpefDescripcion"/></td> 
	</tr>
	
	<tr>
	<td class="generalLabel"><bean:message key="opcionPerfilForm.perfilUpdate.cbo.strpefEstado"/> </td>
	<td class="generalLabel">:</td>
	<td>
	<html:select styleClass="generalCombobox" property="strpefEstado">
     <html:optionsCollection label="strestNombre" property="estModuloPef" value="strestNombre" />
    </html:select>
    <td>&nbsp;</td>  
    
	<td class="generalLabel"><bean:message key="opcionPerfilForm.perfilUpdate.cbo.strpefLocale"/></td>
	<td class="generalLabel">:</td>
	<td><html:select  styleClass="generalCombobox" property="strpefLocale" disabled="true">
          <html:option value="es_PE"><bean:message key="opcionPerfilForm.perfilUpdate.option.spanish"/></html:option>
          <html:option value="en_US"><bean:message key="opcionPerfilForm.perfilUpdate.option.english"/></html:option>
            </html:select></td>
    <td>&nbsp;</td>
    
	</tr>
	
	<tr>
	<td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    
    <td>&nbsp;</td>
	<td>&nbsp;</td>
	<td>&nbsp;</td>
	<td>&nbsp;</td>
    </tr>
            
    </table>
    </td>
    </tr>
    
    <tr>
	<td>
	<table>
	
	<tr>
	<td>&nbsp;</td>
	</tr>
	<tr>
	    <td><html:submit property="" styleClass="button green medium" onclick="update()" >
	        <bean:message key='opcionPerfilForm.perfilUpdate.btn.update'/></html:submit>
		     &nbsp;
			<html:button property="" styleClass="button green medium" onclick="cancel()" >
			<bean:message key='opcionPerfilForm.perfilUpdate.btn.cancel'/></html:button>
		</td>
    </tr>
    
    <tr>
	<td class="generalErrors">&nbsp;
    <logic:equal name="opcionPerfilForm" property="flagConfirm" value="ERROR">
    
	<script type="text/javascript">
	alert("<bean:message key="opcionPerfilForm.perfilUpdate.error.error"/> <bean:write name="opcionPerfilForm" property="strpefDescripcion"/>");
	</script>
    
    </logic:equal>
    </td>
	</tr>
	
    </table>
    </td>
    </tr>
    </table>
   </fieldset>
         
     </td> 
    </tr>
  

</table> 
    </html:form>  
</body>
</html>