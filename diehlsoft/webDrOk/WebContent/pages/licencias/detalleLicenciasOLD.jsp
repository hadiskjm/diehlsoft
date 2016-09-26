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
function search(){
	  var detalleLicenciasForm = document.getElementById("detalleLicenciasForm");
	  detalleLicenciasForm.action="<%= request.getContextPath()%>/redireccionando.do?event=consultarVacacionesPorArea";
	  detalleLicenciasForm.submit();
	  }
	  
</script>

   
</head>
<body>
<html:form action="detalleLicencias.do" method="post" styleId="detalleLicenciasForm">
  <div class="container bg1 clearfix">
	<div id="maincont" class="bodycontainer clearfix">
<table width="100%">
   <tr>
    <td class="generalTitulo"><bean:message key="detalleLicenciasForm.title"/></td>
    </tr> 
    <tr>
    <td ><hr class="generalLineHorizontal"/></td>
    </tr>
    <tr>
	</tr>
    <tr>
    <td>
    <fieldset class="generalfieldset">
    
    <legend class="subTitulo" ><bean:message key="detalleLicenciasForm.subtitle"/></legend>
    <table width="100%" class="bodyDisplay">
   <thead>
     <tr>
     <th><bean:message key="diasRestantesForm.grid.categoria"/></th>
     <th><bean:message key="diasRestantesForm.grid.areaprectica"/></th>
     <th><bean:message key="diasRestantesForm.grid.codigo"/></th>
     <th><bean:message key="diasRestantesForm.grid.nombre"/></th>
     <th><bean:message key="diasRestantesForm.grid.diasrestantes"/></th>
     <th><bean:message key="diasRestantesForm.grid.proximafecha"/></th>
    </tr>
    </thead>
	<nested:iterate name="diasRestantesForm" id="listaDiasRestantesPorAbogado" property="listaDiasRestantesPorAbogado" >
	<tr class="odd">
	<td> <nested:write property="strCategoria" /></td>
	<td> <nested:write property="strAreaPractica" /></td>
	<td> <nested:write property="strCodigo" /></td>
	<td> <nested:write property="strNombre" /></td>
	<td> <nested:write property="intDiasRestantes" /></td>
	<td> <nested:write property="strProximaFecha" /></td>
	</tr>
	</nested:iterate>

    </table>
    <table>
    <tr>
	<td><html:submit property="" styleClass="button green medium"  onclick="search()" >
	<bean:message key='detalleLicenciasForm.btn.return'/></html:submit> </td> 
	<td>&nbsp;</td>     
	</tr>
   </table>
    
   </fieldset>
         
     </td> 
    </tr>
    
    <tr>
    <td>

    </td>
    </tr>
    
    <tr>
    <td width="100%">
    <div class="bodyDisplay">
    <span class="generalTitulo"><bean:message key='detalleLicenciasForm.title.grid.search'/>&nbsp;&nbsp;&nbsp;&nbsp; 
    </span>
   
    <BR/>

       <display:table name="sessionScope.diasRestantesForm.listaVerDetalleLicencias" id="data" export="true"  requestURI="/detalleLicencias.do" pagesize="100" >
          <display:setProperty name="export.excel.filename" value="detalleLicencias.xls" />
            
            <display:column property="strAnno" titleKey="detalleLicenciasForm.grid.anno" sortable="true" class="hover1" group="1" media="html" style="${data.strColorFondo}"/>
            <display:column property="strCantidadDias" titleKey="detalleLicenciasForm.grid.cantidadDias" total="true" sortable="false" group="2" style="${data.strColorFondo}"/>
            <display:column property="strAnno" titleKey="detalleLicenciasForm.grid.anno" sortable="true" style="${data.strColorFondo}" />
            <display:column property="strPeriodo" titleKey="detalleLicenciasForm.grid.periodo" sortable="false"  style="${data.strColorFondo}"/>
            <display:column property="strDia" titleKey="detalleLicenciasForm.grid.dias" sortable="false"  style="${data.strColorFondo}"/>
            <display:column property="strFecha" titleKey="detalleLicenciasForm.grid.fecha" sortable="false" style="${data.strColorFondo}"/>
        </display:table>
  
        <br/>
         
    </div>
    </td>
    </tr>

</table> 
</div></div>
    </html:form>
   	  
</body>
</html>