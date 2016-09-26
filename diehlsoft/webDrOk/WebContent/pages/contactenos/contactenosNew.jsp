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
	  var contactenosForm = document.getElementById("contactenosForm");
	  contactenosForm.action="<%= request.getContextPath()%>/redireccionando.do?event=homeCorp";
	  contactenosForm.submit();
	  }
function save(){
	  var contactenosForm = document.getElementById("contactenosForm");
	  contactenosForm.action="<%= request.getContextPath()%>/contactenosNew.do?event=conSave&saveandadd=save";
	  contactenosForm.submit();
	  }

   </script>
   
</head>

<body>
<html:form action="contactenosNew.do" method="post" styleId="contactenosForm">
<div class="container bg2 clearfix">
    <div id="maincont" class="bodycontainer clearfix">

<!-- =================================================== -->
     <h3><bean:message key="contactenosForm.conNew.title"/></h3>
    <hr>
    <br>

    <div class="mainForm">
				<div class="cbp-mc-form">
				<p> <bean:message key="contactenosForm.conNew.msg.general"/> </p>
					<div class="cbp-mc-column50">
					
						<label><bean:message key="contactenosForm.conNew.txt.strconNombresCompletos"/>:</label>
						<html:text property="strconNombresCompletos" styleId="strconNombresCompletos" />
						<span  class="generalErrors"><html:errors property="strconNombresCompletos"/></span>
						
						<label><bean:message key="contactenosForm.conNew.txt.strconCorreo"/>:</label>
						<html:text property="strconCorreo" styleId="strconCorreo" />
						<span  class="generalErrors"><html:errors property="strconCorreo"/></span>
                        
                        <label><bean:message key="contactenosForm.conNew.txt.strconComentario"/>:</label>
						<html:textarea  property="strconComentario" />
						<span  class="generalErrors"><html:errors property="strconComentario"/></span>
							
                        
					  </div>

                 </div>
                

             <BR>
            &nbsp;
            <html:submit property="" styleClass="button green medium"  onclick="save()" >
            <bean:message key='contactenosForm.conNew.btn.save'/></html:submit> 
            &nbsp;
			<html:button property="" styleClass="button green medium" onclick="cancel()" >
			<bean:message key='contactenosForm.conNew.btn.cancel'/></html:button>
	  
	<span>
    <logic:equal name="contactenosForm" property="flagConfirm" value="ERROR">
	<script type="text/javascript">
	alert("<bean:message key="contactenosForm.conNew.error.error" /> <bean:write name="contactenosForm" property="strconNombreMenu"/>");
	</script>
	
    </logic:equal>
    <logic:equal name="contactenosForm" property="flagConfirm" value="OK">
    
    <script type="text/javascript">
	alert("<bean:message key="contactenosForm.conNew.ok.ok" />");
	</script>
	
    </logic:equal>
    
    <logic:equal name="contactenosForm" property="flagConfirm" value="OKINSERT">
		     <script type="text/javascript">
			alert("<bean:message key="contactenosForm.conNew.ok.ok"/>");
			</script>
		    </logic:equal>
		    
    <logic:equal name="contactenosForm" property="flagConfirm" value="FALSE">
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