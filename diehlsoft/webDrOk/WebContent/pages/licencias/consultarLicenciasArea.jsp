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
	  var diasRestantesForm = document.getElementById("diasRestantesForm");
	  diasRestantesForm.action="<%= request.getContextPath()%>/consultarLicenciasArea.do?event=buscarPorAreaPractica";
	  diasRestantesForm.submit();
	  }
	  
</script>

   
</head>
<body>

<html:form action="consultarLicenciasArea.do" method="post" styleId="diasRestantesForm">
  <div class="container bg1 clearfix">
	<div id="maincont" class="bodycontainer clearfix">
<table width="100%">
   <tr>
    <td class="generalTitulo"><bean:message key="diasRestantesForm.title"/></td>
    </tr> 
    <tr>
    <td ><hr class="generalLineHorizontal"/></td>
    </tr>
    <tr>
	</tr>
    <tr>
    <td>
    <fieldset class="generalfieldset">
    
    <legend class="subTitulo" ><bean:message key="diasRestantesForm.subtitle"/></legend>
    <table width="100%">

    
    <tr>
	<td><span class="generalLabel"><bean:message key="diasRestantesForm.cbo.strAreaPractica"/>:</span><br/>
	 <html:select  styleClass="generalCombobox" property="strAreaPractica">
           <html:optionsCollection label="strAreaPractica" name="diasRestantesForm" property="listaAreaPractica" value="strAreaPractica" />
            </html:select></td>
    <td>&nbsp;</td>
    </tr>

	<tr>
	<td><html:submit property="" styleClass="button green medium"  onclick="search()" >
	<bean:message key='diasRestantesForm.btn.search'/></html:submit> </td> 
	<td>&nbsp;
	 
	</td>     
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
    
    <span class="generalTitulo"><bean:message key='diasRestantesForm.title.grid.search'/>&nbsp;&nbsp;&nbsp;&nbsp; 
    </span>
    <BR/>
    

      	
 
  <display:table name="sessionScope.diasRestantesForm.listaDiasRestantes" id="data" export="true" 
  requestURI="/consultarLicenciasArea.do" pagesize="100">
		    <display:setProperty name="export.excel.filename" value="listaDiasRestantes.xls" />

            <display:column property="strCategoria" titleKey="diasRestantesForm.grid.categoria" sortable="true" class="hover1"/>
            <display:column property="strAreaPractica" titleKey="diasRestantesForm.grid.areaprectica" sortable="true"  />
            <display:column property="strCodigo" titleKey="diasRestantesForm.grid.codigo" sortable="true"  />
            <display:column property="strNombre" titleKey="diasRestantesForm.grid.nombre" sortable="true"  />
            <display:column property="intDiasRestantes" titleKey="diasRestantesForm.grid.diasrestantes" sortable="true" style="${data.strColor};text-align:center;"/>
            <display:column property="strProximaFecha" titleKey="diasRestantesForm.grid.proximafecha" sortable="true"  />
            <display:column property="intDiasVencidos" titleKey="diasRestantesForm.grid.diasVencido" sortable="true"  style="text-align:center;"/>
            <display:column titleKey="diasRestantesForm.grid.fondoDiasVencido" sortable="true" style="text-align:center;" media="html">
            <html:img  titleKey="diasRestantesForm.grid.fondoDiasVencido" page="/image/${data.strFondoVencido}.png"></html:img>
            </display:column>
            <display:column property="intDiasGanados" titleKey="diasRestantesForm.grid.diasGanados" sortable="true"  style="${data.strColor};text-align:center;"/>
            <display:column titleKey="diasRestantesForm.grid.fondoDiasGanados" sortable="true" style="text-align:center; " media="html">
            <html:img  titleKey="diasRestantesForm.grid.fondoDiasGanados" page="/image/${data.strFondoPorVencer}.png"></html:img>
            </display:column>
            <display:column titleKey="diasRestantesForm.grid.verdetalle" sortable="true" url="/consultarLicenciasArea.do" paramId="event=verDetalleLicencias&strCodigo" paramProperty="strCodigo" media="html" style="text-align:center;">
            <html:img width="32" height="32" titleKey="diasRestantesForm.grid.verdetalle" page="/image/icon/ver_mas128.png"></html:img>
            </display:column>
  
          </display:table>    

        <br/>
         <html:link action="consultarLicenciasArea.do?event=reporteConsultarLicenciasArea"><html:img width="192px" height="38px" border="0" align="left" page="/image/formatos.png"/></html:link>
    <br/>
    <br/>
    <br/>
    </div>

    </td>
    </tr>
 
</table> 
</div></div>
    </html:form>
   	  
</body>
</html>