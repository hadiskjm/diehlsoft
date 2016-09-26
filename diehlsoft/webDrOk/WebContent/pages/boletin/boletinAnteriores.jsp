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
<title>Insert title here</title>
</head>
<body>
<html:form action="boletinAnteriores.do" method="post" styleId="boletinForm">
<div class="container bg1 clearfix">
	<div id="maincont" class="bodycontainer clearfix">
	<!-- =================================================== -->
      
       <h2><bean:message key="boletinForm.boletinAnteriores.title"/> </h2>
       <hr>
       <br>
        <div class="mainForm">
				<div class="cbp-mc-form">
				
		<div class="cbp-mc-column60">
        
  
	  <div>
 
         <nested:iterate name="boletinForm" property="bolSearchListBack" id="bolSearchListBack">
             <h5 class="bolList"><nested:write name="bolSearchListBack" property="strbolNombre"/>&nbsp;N°&nbsp;<nested:write name="bolSearchListBack" property="intbolId"/></h5>       
             <html:img width="9" height="18" page="/image/icon/intro.png"/> <nested:link styleClass="bolList" action="actualidadLaboralListBol.do?event=aclListxbolId" paramId="intbolId" paramProperty="intbolId"><nested:write name="bolSearchListBack" property="strbolNombre"/></nested:link>
              <br>
              <a href="pdf/${bolSearchListBack.strbolFile}"><html:img page="/image/pdf-48_32.png"/></a>
             <br>
             <br>
             
        </nested:iterate>

      </div>

        
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
       <a href="https://www.facebook.com/pages/Estudio-Lazo-de-Roma%C3%B1a-y-Gagliuffi/597071900335200?ref=ts&fref=ts"><html:img width="48" height="48" page="/image/social/Facebook-01.png"/></a>&nbsp;
       <a href="#"><html:img width="48" height="48" page="/image/social/Google Plus-01.png"/></a>&nbsp;
       <a href="#"><html:img width="48" height="48" page="/image/social/Twitter-01.png"/></a>&nbsp;
       <a href="https://www.linkedin.com/company/lazo-de-roma-a-&-gagliuffi-abogados?trk=tyah&trkInfo=tarId%3A1421082006832%2Ctas%3Alazo+de%2Cidx%3A2-1-6"><html:img width="48" height="48" page="/image/social/Linked In-01.png"/></a>
              
        
        </div>
        </div>
        
        
</div>
	 <!-- =================================================== -->      
	</div>
	
</div>
</html:form>
</body>
</html>