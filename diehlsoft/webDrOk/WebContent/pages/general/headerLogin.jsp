<!-- resolucion de Carmen 1280x800 -->
<%@ taglib uri="/WEB-INF/tld-diehl/struts-bean.tld" prefix="bean" %>
<%@ taglib uri="/WEB-INF/tld-diehl/struts-logic.tld" prefix="logic" %>
<%@ taglib uri="/WEB-INF/tld-diehl/struts-html.tld" prefix="html" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
</head>
<body>
<div class="container bgimg clearfix">
	<div class="overlay clearfix">
		<div id="headercont" class="bodycontainer clearfix">

           <br/>
           <div>
           <h1><html:img border="0" page="/image/logoLazoRomana.png"/></h1>
           </div>
           <br/>
                   
           <div>       
           <h5>
           <bean:message key="menu.title"/>&nbsp;
<bean:write name="beanPersona" property="strperNombre"/>&nbsp;<bean:write name="beanPersona" property="strperApellidoPaterno"/>
           </h5>
           </div>  
           
           </div>
           </div>
           </div>


</body>
</html>