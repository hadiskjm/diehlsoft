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

function tcnDelete()
{
   return tcnfirm("<bean:message key="trabajanosotrosForm.tcnDelete.search.confirm"/>");
}

var harold = jQuery.noConflict();
   </script>
   
</head>

<body>
<html:form action="tcnosotrosSearch.do" method="post" styleId="trabajanosotrosForm">
<div class="container bg2 clearfix">
    <div id="maincont" class="bodycontainer clearfix">

<!-- =================================================== -->
     <h3><bean:message key="trabajanosotrosForm.title.search"/></h3>
    <hr>
    <br>
    

    <br>
    <div class="bodyDisplay">
    <h4><bean:message key='trabajanosotrosForm.title.grid.search'/></h4>
    <span class="new"><html:link action="tcnosotrosNew.do?event=tcnNew" titleKey="trabajanosotrosForm.grid.new"> <html:img page="/image/icon/add.png" /></html:link>
    </span>
   
    <br>
         <display:table id="data" class="display compact nowrap" style="width: 100%;" cellspacing="0" name="sessionScope.trabajanosotrosForm.tcnListSearch" export="true"  requestURI="/tcnosotrosSearch.do">
          <display:setProperty name="export.excel.filename" value="trabajanosotrosForm.xls" />
          <display:setProperty name="export.xml.filename" value="trabajanosotrosForm.xml" />
          <display:setProperty name="export.csv.filename" value="trabajanosotrosForm.csv" />
          <display:setProperty name="export.pdf.filename" value="trabajanosotrosForm.pdf" />
           
            <display:column property="inttcnId" titleKey="trabajanosotrosForm.grid.inttcnId"/>
            <display:column property="strtcnNombres" titleKey="trabajanosotrosForm.grid.strtcnNombres"/>
            <display:column property="strtcnApellidos" titleKey="trabajanosotrosForm.grid.strtcnApellidos"/>
            <display:column property="inttcnEdad" titleKey="trabajanosotrosForm.grid.inttcnEdad"/>
            <display:column property="strtcnDireccion" titleKey="trabajanosotrosForm.grid.strtcnDireccion"/>
            <display:column property="strtcnCorreo" titleKey="trabajanosotrosForm.grid.strtcnCorreo"/>
            
             <display:column titleKey="trabajanosotrosForm.grid.view" media="html" class="gridCenter" >
            <html:link action="tcnosotrosSearch.do?event=tcnView&inttcnId=${data.inttcnId}">
            <html:img width="48" height="48" titleKey="trabajanosotrosForm.grid.view" page="/image/icon/${data.strtcnExtencion}.png"></html:img>
            </html:link>
            </display:column>
            
            <display:column titleKey="trabajanosotrosForm.grid.update" class="gridCenter" url="/tcnosotrosUpdate.do" paramId="event=tcnUpdate&inttcnId" paramProperty="inttcnId" media="html" >
            <html:img width="48" height="48" titleKey="trabajanosotrosForm.grid.update" page="/image/icon/Modify.png"></html:img>
            </display:column>
            
            <display:column titleKey="trabajanosotrosForm.grid.delete" media="html" class="gridCenter">
            <html:link action="tcnosotrosSearch.do?event=tcnDelete&inttcnId=${data.inttcnId}" onclick="return tcnDelete();">
            <html:img width="48" height="48" titleKey="trabajanosotrosForm.grid.delete" page="/image/icon/removeblue.png"></html:img>
            </html:link> 
            </display:column>


        </display:table>

        <br/>
        
       
    </div>

    <span class="generalErrors">
		    
		    <logic:equal name="trabajanosotrosForm" property="flagConfirm" value="OKUPDATE">
		     <script type="text/javascript">
			alert("<bean:message key="trabajanosotrosForm.tcnUpdate.ok.ok"/>");
			document.location.href="<%= request.getContextPath()%>/tcnosotrosSearch.do?event=tcnSearch";
			</script>
		    </logic:equal>
		    
		    <logic:equal name="trabajanosotrosForm" property="flagConfirm" value="OKINSERT">
		     <script type="text/javascript">
			alert("<bean:message key="trabajanosotrosForm.tcnNew.ok.ok"/>");
			document.location.href="<%= request.getContextPath()%>/tcnosotrosSearch.do?event=tcnSearch";
			</script>
		    </logic:equal>
		    
		     <logic:equal name="trabajanosotrosForm" property="flagConfirm" value="OKDELETE">
		     <script type="text/javascript">
			alert("<bean:message key="trabajanosotrosForm.tcnDelete.ok.ok"/>");
			document.location.href="<%= request.getContextPath()%>/tcnosotrosSearch.do?event=tcnSearch";
			</script>
		    </logic:equal>
		    
		    <logic:equal name="trabajanosotrosForm" property="flagConfirm" value="ERRORDELETE">
		     <script type="text/javascript">
			alert("<bean:message key="trabajanosotrosForm.tcnDelete.error"/>");
			</script>
		    </logic:equal>
    
		    <logic:equal name="trabajanosotrosForm" property="flagConfirm" value="FALSE">
			&nbsp;
		    </logic:equal>
    </span>
    
<!-- ================================================= -->
</div>
</div>
    </html:form>
   	  
</body>
</html>