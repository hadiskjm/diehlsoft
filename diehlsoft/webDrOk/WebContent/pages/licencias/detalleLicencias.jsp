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

<%int i=0;%>


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
    </tr>
    </thead>
	<nested:iterate name="diasRestantesForm" id="listaDiasRestantesPorAbogado" property="listaDiasRestantesPorAbogado" >
	<tr class="odd">
	<td> <nested:write property="strCategoria" /></td>
	<td> <nested:write property="strAreaPractica" /></td>
	<td> <nested:write property="strCodigo" /></td>
	<td> <nested:write property="strNombre" /></td>
	<td> <nested:write property="intDiasRestantes" /></td>
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

	      <logic:iterate name="diasRestantesForm" property="listaVerDetalleLicencias" id="VerDetalleLicencias" >
      <logic:match name="VerDetalleLicencias" property="strCabeceraDetalle" value="C">
				   
	             <h1><bean:write name="VerDetalleLicencias" property="strAnno"/>&nbsp;-&nbsp;
			     <bean:write name="VerDetalleLicencias" property="strCantidadDias"/>&nbsp;Días
			     </h1>
			     <%i=2;%>
			      
	   </logic:match>
	    
	          
				      <%if(i==2){ %>
			      <table width="100%"> 
			    
		               <thead>
				     <tr>
				     <th><bean:message key="detalleLicenciasForm.grid.anno"/></th>
				     <th><bean:message key="detalleLicenciasForm.grid.periodo"/></th>
				     <th><bean:message key="detalleLicenciasForm.grid.dias"/></th>
				     <th><bean:message key="detalleLicenciasForm.grid.fecha"/></th>
				    </tr>
				    </thead>
		
		          
		            <%i=3;%>   
		           <%}%>
		               <logic:match name="VerDetalleLicencias" property="strCabeceraDetalle" value="D" >  
						<tr class="odd">
						<td> <bean:write name="VerDetalleLicencias" property="strAnno"/></td>
						<td> <bean:write name="VerDetalleLicencias" property="strPeriodo"/></td>
						<td> <bean:write name="VerDetalleLicencias" property="strDia"/></td>
						<td> <bean:write name="VerDetalleLicencias" property="strFecha"/></td>
						</tr>
			            </logic:match>
		           
		           <logic:match name="VerDetalleLicencias" property="strCabeceraDetalle" value="F" >  
		           
				          <%i=4;%>  
				          
				  </logic:match>
				  
				  <%if(i==4){ %>
				   </table> 
                      <%i=5;%> 
		            <%} %>
     </logic:iterate>   


    </div>
    </td>
    </tr>

</table> 
    </div></div>
    </html:form>
   	  
</body>
</html>