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



<script type="text/javascript">
function cancel(){
	  var trabajanosotrosForm = document.getElementById("trabajanosotrosForm");
	  trabajanosotrosForm.action="<%= request.getContextPath()%>/tcnosotrosSearch.do?event=homeCorp";
	  trabajanosotrosForm.submit();
	  }
function save(){
	  var trabajanosotrosForm = document.getElementById("trabajanosotrosForm");
	  trabajanosotrosForm.action="<%= request.getContextPath()%>/tcnosotrosNew.do?event=tcnSave&saveandadd=save";
	  trabajanosotrosForm.submit();
	  }

   </script>
 
 <script>
$(document).ready(function () {
$('input[type=file]').change(function () {
	var val = $(this).val().toLowerCase();
	var regex = new RegExp("(.*?)\.(docx|doc|pdf)$");
	 if(!(regex.test(val))) {
		 
		 $(this).val('');

		 if(val==('')){
		 return false;
		 }else{
			 alert("<bean:message key="trabajanosotrosForm.tcnNew.error.fileextencion" />");
		 }
		 
	 }
	 
	 }

    ); 

});


</script> 
 
 
</head>

<body>
<html:form action="tcnosotrosNew.do" method="post" styleId="trabajanosotrosForm" enctype="multipart/form-data">
<div class="container bg2 clearfix">
    <div id="maincont" class="bodycontainer clearfix">

<!-- =================================================== -->
     <h3><bean:message key="trabajanosotrosForm.tcnNew.title"/></h3>
    <hr>
    <br>

    <div class="mainForm">
				<div class="cbp-mc-form">
				<p> <bean:message key="trabajanosotrosForm.tcnNew.msg.general"/> </p>
					<div class="cbp-mc-column50">
					
						<label><bean:message key="trabajanosotrosForm.tcnNew.txt.strtcnNombres"/>:</label>
						<html:text property="strtcnNombres" styleId="strtcnNombres" />
						<span  class="generalErrors"><html:errors property="strtcnNombres"/></span>
						
						<label><bean:message key="trabajanosotrosForm.tcnNew.txt.strtcnApellidos"/>:</label>
						<html:text property="strtcnApellidos" styleId="strtcnApellidos" />
						<span  class="generalErrors"><html:errors property="strtcnApellidos"/></span>
                        
                        <label><bean:message key="trabajanosotrosForm.tcnNew.txt.inttcnEdad"/>:</label>
						<html:text  property="inttcnEdad" />
						<span  class="generalErrors"><html:errors property="inttcnEdad"/></span>
						
						<label><bean:message key="trabajanosotrosForm.tcnNew.txt.strtcnDireccion"/>:</label>
						<html:text property="strtcnDireccion" />
						<span  class="generalErrors"><html:errors property="strtcnDireccion"/></span>
						
						<label><bean:message key="trabajanosotrosForm.tcnNew.txt.strtcnCorreo"/>:</label>
						<html:text  property="strtcnCorreo" />
						<span  class="generalErrors"><html:errors property="strtcnCorreo"/></span>
						
						<label><bean:message key="trabajanosotrosForm.tcnNew.lbl.lbltcnCurriculum"/>:</label>
						<html:file  property="lbltcnCurriculum" />
						<span  class="generalErrors"><html:errors property="lbltcnCurriculum"/></span>
							
                        
					  </div>

                 </div>
                

             <BR>
            &nbsp;
            <html:submit property="" styleClass="button green medium"  onclick="save()" >
            <bean:message key='trabajanosotrosForm.tcnNew.btn.save'/></html:submit> 
            &nbsp;
			<html:button property="" styleClass="button green medium" onclick="cancel();" >
			<bean:message key='trabajanosotrosForm.tcnNew.btn.cancel'/></html:button>
	  
	<span>
    <logic:equal name="trabajanosotrosForm" property="flagConfirm" value="ERROR">
	<script type="text/javascript">
	alert("<bean:message key="trabajanosotrosForm.tcnNew.error.error" /> <bean:write name="trabajanosotrosForm" property="strtcnCorreo"/>");
	</script>
	
    </logic:equal>
    <logic:equal name="trabajanosotrosForm" property="flagConfirm" value="OK">
    
    <script type="text/javascript">
	alert("<bean:message key="trabajanosotrosForm.tcnNew.ok.ok" />");
	</script>
	
    </logic:equal>
    
    <logic:equal name="trabajanosotrosForm" property="flagConfirm" value="OKINSERT">
		     <script type="text/javascript">
			alert("<bean:message key="trabajanosotrosForm.tcnNew.ok.ok"/>");
			</script>
		    </logic:equal>
		    
    <logic:equal name="trabajanosotrosForm" property="flagConfirm" value="FALSE">
	&nbsp;
    </logic:equal>
    </span>
    
    </div>


    <br>
    


<!-- ================================================= -->
</div>
</div>
    </html:form>

	
</body>
</html>