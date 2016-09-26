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
	  var menunivel1Form = document.getElementById("menunivel1Form");
	  menunivel1Form.action="<%= request.getContextPath()%>/menunivel1Search.do?event=fleSearch";
	  menunivel1Form.submit();
	  }

function mecDelete()
{
   return confirm("<bean:message key="menunivel1Form.mecDelete.search.confirm"/>");
}

var harold = jQuery.noConflict();
   </script>
   
</head>

<body>
<html:form action="menunivel1Search.do" method="post" styleId="menunivel1Form">
<div class="container bg2 clearfix">
    <div id="maincont" class="bodycontainer clearfix">

<!-- =================================================== -->
     <h3><bean:message key="menunivel1Form.title.search"/></h3>
    <hr>
    <br>
    <fieldset>
    
    <legend><bean:message key="menunivel1Form.subtitle.search"/></legend>
    
    <div class="mainForm">
				<div class="cbp-mc-form">
				<fieldset>
					<div class="cbp-mc-column25">
					
	<label><bean:message key="menunivel1Form.txt.strmecNombreMenu"/>:</label>
	<html:text property="strmecNombreMenu" styleId="strmecNombreMenu" />
	<span  class="generalErrors"><html:errors property="strmecNombreMenu"/></span>

	
  </div>
  
    <div class="cbp-mc-column25">
    
    <label><bean:message key="menunivel1Form.cbo.strmecLocale"/>:</label>
	<html:select property="strmecLocale">
          <html:option value="es_PE"><bean:message key="usuarioForm.option.spanish"/></html:option>
          <html:option value="en_US"><bean:message key="usuarioForm.option.english"/></html:option>
    </html:select>
	

    </div>
    </fieldset>
    </div>
    
    <BR>
            <html:submit property="" styleClass="button green medium"  onclick="search()" >
            <bean:message key='menunivel1Form.btn.search'/></html:submit> 
    </div>
     
   </fieldset>

    <br>
    <div class="bodyDisplay">
    <h4><bean:message key='menunivel1Form.title.grid.search'/></h4>
    <span class="new"><html:link action="menunivel1New.do?event=mecNew" titleKey="menunivel1Form.grid.new"> <html:img page="/image/icon/add.png" /></html:link>
    </span>
   
    <br>
         <display:table id="data" class="display compact nowrap" style="width: 100%;" cellspacing="0" name="sessionScope.menunivel1Form.mecListSearch" export="true"  requestURI="/menunivel1Search.do">
          <display:setProperty name="export.excel.filename" value="menunivel1Form.xls" />
          <display:setProperty name="export.xml.filename" value="menunivel1Form.xml" />
          <display:setProperty name="export.csv.filename" value="menunivel1Form.csv" />
          <display:setProperty name="export.pdf.filename" value="menunivel1Form.pdf" />
           
            <display:column property="intmecId" titleKey="menunivel1Form.grid.intmecId"/>
            <display:column property="strmecTipoSistema" titleKey="menunivel1Form.grid.strmecTipoSistema"/>
            <display:column property="strmecNombreMenu" titleKey="menunivel1Form.grid.strmecNombreMenu"/>
            <display:column property="strmecLocale" titleKey="menunivel1Form.grid.strmecLocale"/>
            <display:column property="strmecMuestraContenido" titleKey="menunivel1Form.grid.strmecMuestraContenido"/>
            <display:column property="strmecEstado" titleKey="menunivel1Form.grid.strmecEstado"/>
            <display:column property="strmecEvento" titleKey="menunivel1Form.grid.strmecEvento"/>
            
            <display:column titleKey="menunivel1Form.grid.update" class="gridCenter" url="/menunivel1Update.do" paramId="event=mecUpdate&intmecId" paramProperty="intmecId" media="html" >
            <html:img width="48" height="48" titleKey="menunivel1Form.grid.update" page="/image/icon/Modify.png"></html:img>
            </display:column>
            
            <display:column titleKey="menunivel1Form.grid.delete" media="html" class="gridCenter">
            <html:link action="menunivel1Search.do?event=mecDelete&intmecId=${data.intmecId}" onclick="return mecDelete();">
            <html:img width="48" height="48" titleKey="menunivel1Form.grid.delete" page="/image/icon/removeblue.png"></html:img>
            </html:link> 
            </display:column>


        </display:table>

        <br/>
        
       
    </div>

    <span class="generalErrors">
		    
		    <logic:equal name="menunivel1Form" property="flagConfirm" value="OKUPDATE">
		     <script type="text/javascript">
			alert("<bean:message key="menunivel1Form.mecUpdate.ok.ok"/>");
			document.location.href="<%= request.getContextPath()%>/menunivel1Search.do?event=mecSearch";
			</script>
		    </logic:equal>
		    
		    <logic:equal name="menunivel1Form" property="flagConfirm" value="OKINSERT">
		     <script type="text/javascript">
			alert("<bean:message key="menunivel1Form.mecNew.ok.ok"/>");
			document.location.href="<%= request.getContextPath()%>/menunivel1Search.do?event=mecSearch";
			</script>
		    </logic:equal>
		    
		     <logic:equal name="menunivel1Form" property="flagConfirm" value="OKDELETE">
		     <script type="text/javascript">
			alert("<bean:message key="menunivel1Form.mecDelete.ok.ok"/>");
			document.location.href="<%= request.getContextPath()%>/menunivel1Search.do?event=mecSearch";
			</script>
		    </logic:equal>
		    
		    <logic:equal name="menunivel1Form" property="flagConfirm" value="ERRORDELETE">
		     <script type="text/javascript">
			alert("<bean:message key="menunivel1Form.mecDelete.error"/>");
			</script>
		    </logic:equal>
    
		    <logic:equal name="menunivel1Form" property="flagConfirm" value="FALSE">
			&nbsp;
		    </logic:equal>
    </span>
    
<!-- ================================================= -->
</div>
</div>
    </html:form>
   	  
</body>
</html>