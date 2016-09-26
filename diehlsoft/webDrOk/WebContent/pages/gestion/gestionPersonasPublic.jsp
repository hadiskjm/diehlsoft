<%@ page language="java" contentType="text/html; charset=utf-8"%>
<%@ taglib uri="/WEB-INF/tld-diehl/struts-html.tld" prefix="html" %>
<%@ taglib uri="/WEB-INF/tld-diehl/struts-bean.tld" prefix="bean" %>
<%@ taglib uri="/WEB-INF/tld-diehl/struts-logic.tld" prefix="logic" %>
<%@ taglib uri="/WEB-INF/tld-diehl/struts-nested.tld"  prefix="nested" %>
<%@ taglib uri="/WEB-INF/tlds/birt.tld" prefix="birt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>GESTIÓN DE PERSONAS</title>
</head>
<body>
<html:form action="criterioPublic.do" method="post" styleId="actualidadLaboralForm">
<div class="container bg1 clearfix">
	<div id="maincont" class="bodycontainer clearfix">
	<!-- =================================================== -->
      
       <h2><bean:message key="actualidadLaboralForm.actualidadLaboralPublicado.title"/> </h2>
       <hr>
       <br>
       
       
       
        <div class="mainForm">
				<div class="cbp-mc-form">
				
		<div class="cbp-mc-column60">
        
      <fieldset class="borde">
	  <div>
	  <logic:iterate name="actualidadLaboralForm" property="aclSearchListxestado" id="aclSearchListxestado">   
        <logic:match name="aclSearchListxestado" property="straclTitulo" value="3. GESTIÓN DE PERSONAS">                      
                 
             <h6><bean:write name="aclSearchListxestado" property="straclNombre"/></h6>       
             <html:html> ${aclSearchListxestado.straclContenido} </html:html>   
             <br>
         </logic:match>

      </logic:iterate>
      
      
      </div>
       </fieldset>
        
        </div>
				
		<div class="cbp-mc-column25">

              
	    <input class="buscar" name="buscador" id="buscador" type="text" /> 
	    <br>
	    
		<fieldset>

		<div>
		
		
		
		<div><p class="barra">ÁREA LABORAL</p></div>
		 
		  <ul>
		    <li><a href="mailto:palache@lazoabogados.com.pe">Percy Alache</a></li>
		    <li><a href="mailto:elapa@lazoabogados.com.pe">Edith Lapa</a></li>
		    <li><a href="mailto:rsaux@lazoabogados.com.pe">Rocío Saux</a></li>
		    <li><a href="mailto:stejada@lazoabogados.com.pe">Sergio Tejada</a></li>
		  </ul>
		</div>
       </fieldset>
       <br>
       <fieldset>
       <html:link styleClass="bolList" action="boletinAnteriores.do?event=bolAnteriores">PUBLICACIONES ANTERIORES</html:link>	
       </fieldset>
       
       <br>
       <span class="version" >Visítenos en:</span>
       <br>
       <a href="#"><html:img width="48" height="48" page="/image/social/Facebook-01.png"/></a>&nbsp;
       <a href="#"><html:img width="48" height="48" page="/image/social/Google Plus-01.png"/></a>&nbsp;
       <a href="#"><html:img width="48" height="48" page="/image/social/Twitter-01.png"/></a>&nbsp;
       <a href="https://www.linkedin.com/company/lazo-de-roma-a-&-gagliuffi-abogados?trk=tyah&trkInfo=tarId%3A1421082006832%2Ctas%3Alazo+de%2Cidx%3A2-1-6"><html:img width="48" height="48" page="/image/social/Linked In-01.png"/></a>
       
       <div>
       <br>
       <br>
        <span class="version" >Descargar Versión PDF</span>
       <br>
       <span class="pdf" ><a href="pdf/<bean:write name="actualidadLaboralForm" property="strbolFile"/>"><html:img width="48" height="48" page="/image/pdf-48_32.png"/></a></span>
       </div>
       
       </div>
        
        
        </div>
        </div>
        
        

	 <!-- =================================================== -->      
	</div>
	
</div>
</html:form>
</body>
</html>