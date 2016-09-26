<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="/WEB-INF/tld-diehl/struts-html.tld" prefix="html" %>
<%@ taglib uri="/WEB-INF/tld-diehl/struts-bean.tld" prefix="bean" %>
<%@ taglib uri="/WEB-INF/tld-diehl/struts-logic.tld" prefix="logic" %>
<%@ taglib uri="/WEB-INF/tld-diehl/struts-nested.tld"  prefix="nested" %>
<%@taglib uri="/WEB-INF/tld-diehl/displaytag.tld" prefix="display" %>
<%@ taglib uri="/WEB-INF/tlds/birt.tld" prefix="birt" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<!-- DrOk Healthcare para Google+ -->
<meta itemprop="name" content='${metbean.strmetGoogleName}'>
<meta itemprop="description" content='${metbean.strmetGoogleDescription}'>
<meta itemprop="image" content='${metbean.strmetGoogleImage}'>

<!-- DrOk Healthcare Twitter Card data -->
<meta name="twitter:card" content='${metbean.strmetTwitterCard}'>
<meta name="twitter:site" content='${metbean.strmetTwitterSite}'>
<meta name="twitter:creator" content='${metbean.strmetTwitterCreator}'>
<meta name="twitter:title" content='${metbean.strmetTwitterTitle}'>
<meta name="twitter:description" content='${metbean.strmetTwitterDescription}'>
<meta name="twitter:image" content='${metbean.strmetTwitterImage}'>

<!-- DrOk Healthcare Open Graph data -->
<meta property="og:title" content='${metbean.strmetOgTitle}' />
<meta property="og:type" content='${metbean.strmetOgType}' />
<meta property="og:url" content='${metbean.strmetOgUrl}' />
<meta property="og:image" content='${metbean.strmetOgImage}' />
<meta property="og:description" content='${metbean.strmetOgDescription}' />
<meta property="og:site_name" content='${metbean.strmetOgSite_name}' />
   
</head>

<body>
<html:form action="menunivel3ViewCorp.do" method="post" styleId="menunivel2Form">

<div class="container bg2 clearfix">
    <div id="maincont" class="bodycontainer clearfix">

<!-- =================================================== -->

     <html:html>
     ${metbean.strmetMenu}
      </html:html>


<!-- ================================================= -->
</div>
</div>
    </html:form>

	
</body>
</html>