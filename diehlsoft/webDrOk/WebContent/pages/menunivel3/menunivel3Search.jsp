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
	  var menunivel3Form = document.getElementById("menunivel3Form");
	  menunivel3Form.action="<%= request.getContextPath()%>/menunivel2Search.do?event=fleSearch";
	  menunivel3Form.submit();
	  }

function metDelete()
{
   return confirm("<bean:message key="menunivel3Form.metDelete.search.confirm"/>");
}

var harold = jQuery.noConflict();
   </script>
   
</head>

<body>
<html:form action="menunivel3Search.do" method="post" styleId="menunivel3Form">
<div class="container bg2 clearfix">
    <div id="maincont" class="bodycontainer clearfix">

<!-- =================================================== -->
     <h3><bean:message key="menunivel3Form.title.search"/></h3>
    <hr>
    <br>
    <fieldset>
    
    <legend><bean:message key="menunivel3Form.subtitle.search"/></legend>
    
    <div class="mainForm">
				<div class="cbp-mc-form">
				<fieldset>
					<div class="cbp-mc-column25">
					
	<label><bean:message key="menunivel3Form.txt.strmetNombreMenu"/>:</label>
	<html:text property="strmetNombreMenu" styleId="strmetNombreMenu" />
	<span  class="generalErrors"><html:errors property="strmetNombreMenu"/></span>

	
  </div>
  
    <div class="cbp-mc-column25">
    
    <label><bean:message key="menunivel3Form.cbo.strmetLocale"/>:</label>
	<html:select property="strmetLocale">
          <html:option value="es_PE"><bean:message key="usuarioForm.option.spanish"/></html:option>
          <html:option value="en_US"><bean:message key="usuarioForm.option.english"/></html:option>
    </html:select>
	

    </div>
    </fieldset>
    </div>
    
    <BR>
            <html:submit property="" styleClass="button green metium"  onclick="search()" >
            <bean:message key='menunivel3Form.btn.search'/></html:submit> 
    </div>
     
   </fieldset>

    <br>
    <div class="bodyDisplay">
    <h4><bean:message key='menunivel3Form.title.grid.search'/></h4>
    <span class="new"><html:link action="menunivel3New.do?event=metNew" titleKey="menunivel3Form.grid.new"> <html:img page="/image/icon/add.png" /></html:link>
    </span>
   
    <br>
         <display:table id="data" class="display compact nowrap" style="width: 100%;" cellspacing="0" name="sessionScope.menunivel3Form.metListSearch" export="true"  requestURI="/menunivel3Search.do">
          <display:setProperty name="export.excel.filename" value="menunivel3Form.xls" />
          <display:setProperty name="export.xml.filename" value="menunivel3Form.xml" />
          <display:setProperty name="export.csv.filename" value="menunivel3Form.csv" />
          <display:setProperty name="export.pdf.filename" value="menunivel3Form.pdf" />
           
            <display:column property="intmetId" titleKey="menunivel3Form.grid.intmetId"/>
            <display:column property="strmetTipoSistema" titleKey="menunivel3Form.grid.strmetTipoSistema"/>
            <display:column property="strmecNombreMenu" titleKey="menunivel3Form.grid.strmecNombreMenu"/>
            <display:column property="strmedNombreMenu" titleKey="menunivel3Form.grid.strmedNombreMenu"/>
            <display:column property="strmetNombreMenu" titleKey="menunivel3Form.grid.strmetNombreMenu"/>
            <display:column property="strmetLocale" titleKey="menunivel3Form.grid.strmetLocale"/>
            <display:column property="strmetMuestraContenido" titleKey="menunivel3Form.grid.strmetMuestraContenido"/>
            <display:column property="strmetEstado" titleKey="menunivel3Form.grid.strmetEstado"/>
            <display:column property="strmetEvento" titleKey="menunivel3Form.grid.strmetEvento"/>
            
            <display:column titleKey="menunivel3Form.grid.update" class="gridCenter" url="/menunivel3Update.do" paramId="event=metUpdate&intmetId" paramProperty="intmetId" media="html" >
            <html:img width="48" height="48" titleKey="menunivel3Form.grid.update" page="/image/icon/Modify.png"></html:img>
            </display:column>
            
            <display:column titleKey="menunivel3Form.grid.delete" media="html" class="gridCenter">
            <html:link action="menunivel3Search.do?event=metDelete&intmetId=${data.intmetId}" onclick="return metDelete();">
            <html:img width="48" height="48" titleKey="menunivel3Form.grid.delete" page="/image/icon/removeblue.png"></html:img>
            </html:link> 
            </display:column>


        </display:table>

        <br/>
        
       
    </div>

    <span class="generalErrors">
		    
		    <logic:equal name="menunivel3Form" property="flagConfirm" value="OKUPDATE">
		     <script type="text/javascript">
			alert("<bean:message key="menunivel3Form.metUpdate.ok.ok"/>");
			document.location.href="<%= request.getContextPath()%>/menunivel3Search.do?event=metSearch";
			</script>
		    </logic:equal>
		    
		    <logic:equal name="menunivel3Form" property="flagConfirm" value="OKINSERT">
		     <script type="text/javascript">
			alert("<bean:message key="menunivel3Form.metNew.ok.ok"/>");
			document.location.href="<%= request.getContextPath()%>/menunivel3Search.do?event=metSearch";
			</script>
		    </logic:equal>
		    
		     <logic:equal name="menunivel3Form" property="flagConfirm" value="OKDELETE">
		     <script type="text/javascript">
			alert("<bean:message key="menunivel3Form.metDelete.ok.ok"/>");
			document.location.href="<%= request.getContextPath()%>/menunivel3Search.do?event=metSearch";
			</script>
		    </logic:equal>
		    
		    <logic:equal name="menunivel3Form" property="flagConfirm" value="ERRORDELETE">
		     <script type="text/javascript">
			alert("<bean:message key="menunivel3Form.metDelete.error"/>");
			</script>
		    </logic:equal>
    
		    <logic:equal name="menunivel3Form" property="flagConfirm" value="FALSE">
			&nbsp;
		    </logic:equal>
    </span>
    
<!-- ================================================= -->
</div>
</div>
    </html:form>
   	  
</body>
</html>