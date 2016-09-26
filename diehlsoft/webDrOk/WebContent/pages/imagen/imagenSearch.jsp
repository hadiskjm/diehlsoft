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

<script>

    $(document).ready(function() {
    	var table = $('#data').DataTable();

    	new $.fn.dataTable.Responsive( table );
    } );

	</script>
<!-- INICIO DATA TABLES RESPONSIVE -->
<script type="text/javascript" language="JavaScript" src="js/jquery.dataTables_es_PE.js"></script>
<script type="text/javascript" language="JavaScript" src="js/dataTables.responsive.js"></script>
<script src="js/jquery.js"></script>

<link rel="stylesheet" type="text/css" href="css/jquery.dataTables.css">
<link rel="stylesheet" type="text/css" href="css/dataTables.responsive.css">
<!-- FIN DATA TABLES RESPONSIVE -->	

<script type="text/javascript">
function search(){
	  var imagenForm = document.getElementById("imagenForm");
	  imagenForm.action="<%= request.getContextPath()%>/imagenSearch.do?event=imgSearch";
	  imagenForm.submit();
	  }
function pefActiveOrInactive()
{
   return confirm("<bean:message key="actualidadLaboralForm.search.confirm"/>");
}

var harold = jQuery.noConflict();
	harold(function(){
		harold("#strimgNombre").autocomplete("<%= request.getContextPath()%>/pages/imagen/imagenAutocomplete.jsp");
	});
   </script>
   
</head>
<body>
<html:form action="imagenSearch.do" method="post" styleId="imagenForm">
<div class="container bg2 clearfix">
    <div id="maincont" class="bodycontainer clearfix">
<!-- =================================================== -->
     <h3><bean:message key="imagenForm.title.search"/></h3>
    <hr>
    <br>
    <fieldset>
    
    <legend><bean:message key="imagenForm.subtitle.search"/></legend>
    
    <div class="mainForm">
				<div class="cbp-mc-form">
				<fieldset>
					<div class="cbp-mc-column50">
					
	<label><bean:message key="imagenForm.file.strimgNombre"/>:</label>
	<html:text property="strimgNombrexMostrar" styleId="strimgNombre" />
	<span  class="generalErrors"><html:errors property="strimgNombrexMostrar"/></span>

	<label><bean:message key="imagenForm.cbo.strimgModulo"/>:</label>
	<html:select property="strimgModulo">
     <html:optionsCollection label="strestNombre" property="imgModuloModuloEstado" value="strestNombre" />
    </html:select>
  </div>
  
    <div class="cbp-mc-column50">
  
    <label><bean:message key="imagenForm.cbo.strimgEstado"/>:</label>
	<html:select property="strimgEstado">
     <html:optionsCollection label="strestNombre" property="imgModuloEstado" value="strestNombre" />
    </html:select>
    

	<logic:equal name="imagenForm" property="flagConfirm" value="FALSE">
	&nbsp;
    </logic:equal>
	<logic:equal name="imagenForm" property="flagConfirm" value="OKOK">
     <script type="text/javascript">
	alert("<bean:message key="imagenForm.imagenNew.ok.ok"/>");
	document.location.href="<%= request.getContextPath()%>/redireccionando.do?event=imagenSearch";
	</script>
    </logic:equal>
    <logic:equal name="imagenForm" property="flagConfirm" value="OKOKOK">
     <script type="text/javascript">
	alert("<bean:message key="imagenForm.imagenUpdate.ok.ok"/>");
	document.location.href="<%= request.getContextPath()%>/redireccionando.do?event=imagenSearch";
	</script>
    </logic:equal>
    
    <logic:equal name="imagenForm" property="flagConfirm" value="OKOKOKOK">
     <script type="text/javascript">
	alert("<bean:message key="imagenForm.imagenDelete.ok.ok"/>");
	document.location.href="<%= request.getContextPath()%>/redireccionando.do?event=imagenSearch";
	</script>
    </logic:equal>
    
    <logic:equal name="imagenForm" property="flagConfirm" value="ERROR">
     <script type="text/javascript">
	alert("<bean:message key="imagenForm.imagenDelete.error.error"/>");
	document.location.href="<%= request.getContextPath()%>/redireccionando.do?event=imagenSearch";
	</script>
    </logic:equal>
    
    </div>
    </fieldset>
    </div>
    
    <BR>
    <html:submit property="" styleClass="button green medium"  onclick="search()" ><bean:message key='imagenForm.btn.search'/></html:submit> 
    </div>
    
   </fieldset>

    <br>
    <div class="bodyDisplay">
    <p><bean:message key='imagenForm.title.grid.search'/></p>
    <span class="new"><html:link action="imagenNew.do?event=imgNew" titleKey="imagenForm.grid.new"> <html:img page="/image/icon/add.png" /></html:link>
    </span>
   
    <br>
         <display:table id="data" class="display compact nowrap" style="width: 100%;" cellspacing="0"  name="sessionScope.imagenForm.imgSearchList" export="true"  requestURI="/imagenSearch.do" >
          <display:setProperty name="export.excel.filename" value="imagenForm.xls" />
          <display:setProperty name="export.xml.filename" value="imagenForm.xml" />
          <display:setProperty name="export.csv.filename" value="imagenForm.csv" />
          <display:setProperty name="export.pdf.filename" value="imagenForm.pdf" />
           
            <display:column property="intimgId" titleKey="imagenForm.grid.id"/>
            <display:column property="strimgNombre" titleKey="imagenForm.grid.name"/>
            <display:column property="strimgModulo" titleKey="imagenForm.grid.modulo"/>
            <display:column property="strimgEstado" titleKey="imagenForm.grid.state"/>
     
            <display:column titleKey="imagenForm.grid.update" class="gridCenter" url="/imagenUpdate.do" paramId="event=imgUpdate&intimgId" paramProperty="intimgId" media="html" >
            <html:img width="48" height="48" titleKey="imagenForm.grid.update" page="/image/icon/Modify.png"></html:img>
            </display:column>
            
            <display:column titleKey="imagenForm.grid.delete" class="gridCenter" url="/imagenSearch.do" paramId="event=imgDelete&intimgId" paramProperty="intimgId" media="html" >
            <html:img width="48" height="48" titleKey="imagenForm.grid.delete" page="/image/icon/removered.png"></html:img>
            </display:column>
            
        </display:table>

        <br/>
    </div>


<!-- ================================================= -->
</div>
</div>
    </html:form>
   	  
</body>
</html>