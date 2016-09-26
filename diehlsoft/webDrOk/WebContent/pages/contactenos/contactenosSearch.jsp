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

function conDelete()
{
   return confirm("<bean:message key="contactenosForm.conDelete.search.confirm"/>");
}

var harold = jQuery.noConflict();
   </script>
   
</head>

<body>
<html:form action="contactenosSearch.do" method="post" styleId="contactenosForm">
<div class="container bg2 clearfix">
    <div id="maincont" class="bodycontainer clearfix">

<!-- =================================================== -->
     <h3><bean:message key="contactenosForm.title.search"/></h3>
    <hr>
    <br>
    

    <br>
    <div class="bodyDisplay">
    <h4><bean:message key='contactenosForm.title.grid.search'/></h4>
    <span class="new"><html:link action="contactenosNew.do?event=conNew" titleKey="contactenosForm.grid.new"> <html:img page="/image/icon/add.png" /></html:link>
    </span>
   
    <br>
         <display:table id="data" class="display compact nowrap" style="width: 100%;" cellspacing="0" name="sessionScope.contactenosForm.conListSearch" export="true"  requestURI="/contactenosSearch.do">
          <display:setProperty name="export.excel.filename" value="contactenosForm.xls" />
          <display:setProperty name="export.xml.filename" value="contactenosForm.xml" />
          <display:setProperty name="export.csv.filename" value="contactenosForm.csv" />
          <display:setProperty name="export.pdf.filename" value="contactenosForm.pdf" />
           
            <display:column property="intconId" titleKey="contactenosForm.grid.intconId"/>
            <display:column property="strconNombresCompletos" titleKey="contactenosForm.grid.strconNombresCompletos"/>
            <display:column property="strconCorreo" titleKey="contactenosForm.grid.strconCorreo"/>
            <display:column property="strconComentario" titleKey="contactenosForm.grid.strconComentario"/>
            
            <display:column titleKey="contactenosForm.grid.update" class="gridCenter" url="/contactenosUpdate.do" paramId="event=conUpdate&intconId" paramProperty="intconId" media="html" >
            <html:img width="48" height="48" titleKey="contactenosForm.grid.update" page="/image/icon/Modify.png"></html:img>
            </display:column>
            
            <display:column titleKey="contactenosForm.grid.delete" media="html" class="gridCenter">
            <html:link action="contactenosSearch.do?event=conDelete&intconId=${data.intconId}" onclick="return conDelete();">
            <html:img width="48" height="48" titleKey="contactenosForm.grid.delete" page="/image/icon/removeblue.png"></html:img>
            </html:link> 
            </display:column>


        </display:table>

        <br/>
        
       
    </div>

    <span class="generalErrors">
		    
		    <logic:equal name="contactenosForm" property="flagConfirm" value="OKUPDATE">
		     <script type="text/javascript">
			alert("<bean:message key="contactenosForm.conUpdate.ok.ok"/>");
			document.location.href="<%= request.getContextPath()%>/contactenosSearch.do?event=conSearch";
			</script>
		    </logic:equal>
		    
		    <logic:equal name="contactenosForm" property="flagConfirm" value="OKINSERT">
		     <script type="text/javascript">
			alert("<bean:message key="contactenosForm.conNew.ok.ok"/>");
			document.location.href="<%= request.getContextPath()%>/contactenosSearch.do?event=conSearch";
			</script>
		    </logic:equal>
		    
		     <logic:equal name="contactenosForm" property="flagConfirm" value="OKDELETE">
		     <script type="text/javascript">
			alert("<bean:message key="contactenosForm.conDelete.ok.ok"/>");
			document.location.href="<%= request.getContextPath()%>/contactenosSearch.do?event=conSearch";
			</script>
		    </logic:equal>
		    
		    <logic:equal name="contactenosForm" property="flagConfirm" value="ERRORDELETE">
		     <script type="text/javascript">
			alert("<bean:message key="contactenosForm.conDelete.error"/>");
			</script>
		    </logic:equal>
    
		    <logic:equal name="contactenosForm" property="flagConfirm" value="FALSE">
			&nbsp;
		    </logic:equal>
    </span>
    
<!-- ================================================= -->
</div>
</div>
    </html:form>
   	  
</body>
</html>