<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="/WEB-INF/tld-diehl/struts-html.tld" prefix="html" %>
<%@ taglib uri="/WEB-INF/tld-diehl/struts-bean.tld" prefix="bean" %>
<%@ taglib uri="/WEB-INF/tld-diehl/struts-logic.tld" prefix="logic" %>
<%@ taglib uri="/WEB-INF/tld-diehl/struts-nested.tld"  prefix="nested" %>
<%@taglib uri="/WEB-INF/tld-diehl/displaytag.tld" prefix="display" %>
<%@ taglib uri="/WEB-INF/tlds/birt.tld" prefix="birt" %>
<%@ page import="java.io.*,java.util.*" %>

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
	  var menunivel2Form = document.getElementById("menunivel2Form");
	  menunivel2Form.action="<%= request.getContextPath()%>/menunivel2Search.do?event=fleSearch";
	  menunivel2Form.submit();
	  }

function medDelete()
{
   return confirm("<bean:message key="menunivel2Form.medDelete.search.confirm"/>");
}

var harold = jQuery.noConflict();
   </script>
   
</head>

<body>
<html:form action="menunivel2Search.do" method="post" styleId="menunivel2Form">
<div class="container bg2 clearfix">
    <div id="maincont" class="bodycontainer clearfix">

<!-- =================================================== -->
     <h3><bean:message key="menunivel2Form.title.search"/></h3>
    <hr>
    <br>
    <fieldset>
    
    <legend><bean:message key="menunivel2Form.subtitle.search"/></legend>
    
    <div class="mainForm">
				<div class="cbp-mc-form">
				<fieldset>
					<div class="cbp-mc-column25">
					
	<label><bean:message key="menunivel2Form.txt.strmedNombreMenu"/>:</label>
	<html:text property="strmedNombreMenu" styleId="strmedNombreMenu" />
	<span  class="generalErrors"><html:errors property="strmedNombreMenu"/></span>

	
  </div>
  
    <div class="cbp-mc-column25">
    
    <label><bean:message key="menunivel2Form.cbo.strmedLocale"/>:</label>
	<html:select property="strmedLocale">
          <html:option value="es_PE"><bean:message key="usuarioForm.option.spanish"/></html:option>
          <html:option value="en_US"><bean:message key="usuarioForm.option.english"/></html:option>
    </html:select>
	

    </div>
    </fieldset>
    </div>
    
    <BR>
            <html:submit property="" styleClass="button green medium"  onclick="search()" >
            <bean:message key='menunivel2Form.btn.search'/></html:submit> 
    </div>
     
   </fieldset>

    <br>
    <div class="bodyDisplay">
    <h4><bean:message key='menunivel2Form.title.grid.search'/></h4>
    <span class="new"><html:link action="menunivel2New.do?event=medNew" titleKey="menunivel2Form.grid.new"> <html:img page="/image/icon/add.png" /></html:link>
    </span>
   
    <br>
         <display:table id="data" class="display compact nowrap" style="width: 100%;" cellspacing="0" name="sessionScope.menunivel2Form.medListSearch" export="true"  requestURI="/menunivel2Search.do">
          <display:setProperty name="export.excel.filename" value="menunivel2Form.xls" />
          <display:setProperty name="export.xml.filename" value="menunivel2Form.xml" />
          <display:setProperty name="export.csv.filename" value="menunivel2Form.csv" />
          <display:setProperty name="export.pdf.filename" value="menunivel2Form.pdf" />
           
            <display:column property="intmedId" titleKey="menunivel2Form.grid.intmedId"/>
            <display:column property="strmedTipoSistema" titleKey="menunivel2Form.grid.strmedTipoSistema"/>
            <display:column property="strmecNombreMenu" titleKey="menunivel2Form.grid.strmecNombreMenu"/>
            <display:column property="strmedNombreMenu" titleKey="menunivel2Form.grid.strmedNombreMenu"/>
            <display:column property="strmedLocale" titleKey="menunivel2Form.grid.strmedLocale"/>
            <display:column property="strmedMuestraContenido" titleKey="menunivel2Form.grid.strmedMuestraContenido"/>
            <display:column property="strmedEstado" titleKey="menunivel2Form.grid.strmedEstado"/>
            <display:column property="strmedEvento" titleKey="menunivel2Form.grid.strmedEvento"/>
            <display:column property="intmedPosicion" titleKey="menunivel2Form.grid.intmedPosicion"/>
            
            <display:column titleKey="menunivel2Form.grid.update" class="gridCenter" url="/menunivel2Update.do" paramId="event=medUpdate&intmedId" paramProperty="intmedId" media="html" >
            <html:img width="48" height="48" titleKey="menunivel2Form.grid.update" page="/image/icon/Modify.png"></html:img>
            </display:column>
            
            <display:column titleKey="menunivel2Form.grid.delete" media="html" class="gridCenter">
            <html:link action="menunivel2Search.do?event=medDelete&intmedId=${data.intmedId}" onclick="return medDelete();">
            <html:img width="48" height="48" titleKey="menunivel2Form.grid.delete" page="/image/icon/removeblue.png"></html:img>
            </html:link> 
            </display:column>


        </display:table>

        <br/>
        
       
    </div>

    <span class="generalErrors">
		    
		    <logic:equal name="menunivel2Form" property="flagConfirm" value="OKUPDATE">
		     <script type="text/javascript">
			alert("<bean:message key="menunivel2Form.medUpdate.ok.ok"/>");
			document.location.href="<%= request.getContextPath()%>/menunivel2Search.do?event=medSearch";
			</script>
		    </logic:equal>
		    
		    <logic:equal name="menunivel2Form" property="flagConfirm" value="OKINSERT">
		     <script type="text/javascript">
			alert("<bean:message key="menunivel2Form.medNew.ok.ok"/>");
			document.location.href="<%= request.getContextPath()%>/menunivel2Search.do?event=medSearch";
			</script>
		    </logic:equal>
		    
		     <logic:equal name="menunivel2Form" property="flagConfirm" value="OKDELETE">
		     <script type="text/javascript">
			alert("<bean:message key="menunivel2Form.medDelete.ok.ok"/>");
			document.location.href="<%= request.getContextPath()%>/menunivel2Search.do?event=medSearch";
			</script>
		    </logic:equal>
		    
		    <logic:equal name="menunivel2Form" property="flagConfirm" value="ERRORDELETE">
		     <script type="text/javascript">
			alert("<bean:message key="menunivel2Form.medDelete.error"/>");
			</script>
		    </logic:equal>
    
		    <logic:equal name="menunivel2Form" property="flagConfirm" value="FALSE">
			&nbsp;
		    </logic:equal>
    </span>
    
<!-- ================================================= -->
</div>
</div>
    </html:form>
   	  
</body>
</html>