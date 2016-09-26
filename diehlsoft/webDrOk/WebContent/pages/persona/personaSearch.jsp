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
<script type="text/javascript">
function search(){
	  var personaForm = document.getElementById("personaForm");
	  personaForm.action="<%= request.getContextPath()%>/personaSearch.do?event=perSearch";
	  personaForm.submit();
	  }

function perDelete()
{
   return confirm("<bean:message key="personaForm.personaDelete.search.confirm"/>");
}



   </script>

    
    

 
</head>

<body>
<html:form action="personaSearch.do" method="post" styleId="personaForm">
<div class="container bg1 clearfix">
	<div id="maincont" class="bodycontainer clearfix">

<!-- =================================================== -->
     <h4><bean:message key="personaForm.title.search"/></h4>
    <hr>
    <br>
    <fieldset>
    
    <legend><bean:message key="personaForm.subtitle.search"/></legend>
    
    <div class="mainForm">
				<div class="cbp-mc-form">
				<fieldset>
				<div class="cbp-mc-column25">

			    <label><bean:message key="personaForm.txt.strperNombre"/>:</label>
				<html:text property="strperNombre" styleId="strperNombre"/>
				<span  class="generalErrors"><html:errors property="strperNombre"/></span>
			
			  </div>
			    
			    <div class="cbp-mc-column25">
			
			    <label><bean:message key="personaForm.txt.strperApellidoPaterno"/>:</label>
				<html:text property="strperApellidoPaterno" styleId="strperApellidoPaterno"/>
				<span  class="generalErrors"><html:errors property="strperApellidoPaterno"/></span>
			
			  </div>
  
    </fieldset>
    
    </div>
    
    <BR>
            <html:submit property="" styleClass="button green medium"  onclick="search()" >
            <bean:message key='personaForm.btn.search'/></html:submit> 
           
    </div>
    
   </fieldset>

    <br>
    <div class="bodyDisplay">

    <p><bean:message key='personaForm.title.grid.search'/></p>
    <span class="new"><html:link action="personaNew.do?event=perNew" titleKey="personaForm.grid.new"> <html:img page="/image/icon/add.png" /></html:link>
    </span>
    
   
   <display:table id="data" class="display compact nowrap" style="width: 100%;" cellspacing="0" name="sessionScope.personaForm.perListSearch" export="true"  requestURI="/personaSearch.do">
          <display:setProperty name="export.excel.filename" value="personaForm.xls" />
          <display:setProperty name="export.xml.filename" value="personaForm.xml" />
          <display:setProperty name="export.csv.filename" value="personaForm.csv" />
          <display:setProperty name="export.pdf.filename" value="personaForm.pdf" />
          
            <display:column property="intperId" titleKey="personaForm.grid.intperId"/>
            <display:column property="strperNombre" titleKey="personaForm.grid.strperNombre"/>
            <display:column property="strperApellidoPaterno" titleKey="personaForm.grid.strperApellidoPaterno"/>
            <display:column property="strperApellidoMaterno" titleKey="personaForm.grid.strperApellidoMaterno"/>
            <display:column property="strperCorreo" titleKey="personaForm.grid.strperCorreo"/>
            
            <display:column titleKey="personaForm.grid.update" media="html" class="gridCenter">
            <html:link action="personaUpdate.do?event=perUpdate&intperId=${data.intperId}">
            <html:img width="48" height="48" titleKey="personaForm.grid.update" page="/image/icon/Modify.png"></html:img>
            </html:link>
            </display:column>
            
            <display:column titleKey="personaForm.grid.delete" media="html" class="gridCenter">
            <html:link action="personaSearch.do?event=perDelete&intperId=${data.intperId}" onclick="return perDelete();">
            <html:img width="48" height="48" titleKey="personaForm.grid.delete" page="/image/icon/removeblue.png"></html:img>
            </html:link> 
            </display:column>
          
         
         </display:table>
     
    <br/>
        

        <span class="generalErrors">
		    
		    <logic:equal name="personaForm" property="flagConfirm" value="OKUPDATE">
		     <script type="text/javascript">
			alert("<bean:message key="personaForm.personaUpdate.ok.ok"/>");
			document.location.href="<%= request.getContextPath()%>/personaSearch.do?event=perSearch";
			</script>
		    </logic:equal>
		    
		    <logic:equal name="personaForm" property="flagConfirm" value="OKINSERT">
		     <script type="text/javascript">
			alert("<bean:message key="personaForm.personaNew.ok.ok"/>");
			document.location.href="<%= request.getContextPath()%>/personaSearch.do?event=perSearch";
			</script>
		    </logic:equal>
		    
		     <logic:equal name="personaForm" property="flagConfirm" value="OKDELETE">
		     <script type="text/javascript">
			alert("<bean:message key="personaForm.personaDelete.ok.ok"/>");
			document.location.href="<%= request.getContextPath()%>/personaSearch.do?event=perSearch";
			</script>
		    </logic:equal>
		    
		    <logic:equal name="personaForm" property="flagConfirm" value="ERRORDELETE">
		     <script type="text/javascript">
			alert("<bean:message key="personaForm.personaDelete.error"/>");
			</script>
		    </logic:equal>
    
		    <logic:equal name="personaForm" property="flagConfirm" value="FALSE">
			&nbsp;
		    </logic:equal>
    </span>
    
    </div>


<!-- ================================================= -->
</div>
</div>
    </html:form>
   	  
</body>
</html>