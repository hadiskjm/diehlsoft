<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="/WEB-INF/tld-diehl/struts-html.tld" prefix="html" %>
<%@ taglib uri="http://struts.apache.org/tags-tiles" prefix="tiles"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd"><html:html>
<head>
<script type="text/javascript" src="js/jquery-1.4.2.min.js"></script>
<script src="js/jquery.autocomplete.js"></script>
<script src="js/sliderman.1.3.7.js"></script>
<link href="css/themeDiehl.css" rel="stylesheet" type="text/css">
<link href="css/sliderman.css" rel="stylesheet" type="text/css">  
<link href="css/stylesMenu.css" rel="stylesheet" type="text/css"> 

<style type="text/css">
#cargando {
    position:fixed;
    left: 0;
    top: calc(100%/2 - 2*1em - 2*1px);
	height:     100%;
	width:      100%;
    background:url(../image/loadingDiehl.gif) no-repeat center;
}
</style>
<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script> 
<script type="text/javascript">
$(window).load(function () {
	  // Una vez se cargue al completo la página desaparecerá el div "cargando"
	  //$('#cargando').hide();
	  setTimeout("$('#cargando').fadeOut()", 500);
	});
</script>

<meta name="description" content="">
<meta name="keywords" content="">
<meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
<link rel="apple-touch-icon-precomposed" sizes="144x144" href="image/ico/logoDiehl144.png">
<link rel="apple-touch-icon-precomposed" sizes="114x114" href="image/ico/logoDiehl114.png">
<link rel="apple-touch-icon-precomposed" sizes="72x72" href="images/ico/logoDiehl72.png">
<link rel="apple-touch-icon-precomposed" href="image/ico/logoDiehl57.png">
<link rel="shortcut icon" href="image/ico/logoDiehl32.png">

<script src="js/jquery.js"></script>
<script src="js/scripts.js"></script>
<script src="js/scriptMenu.js"></script>
<script src="js/jquery-latest.min.js"></script>


<title>
	<tiles:getAsString name="title"/>
</title>
</head> 
<body id="pagetop" class="bgimg">
<div style="height:300px;">
</div>
<div>
<tiles:insert attribute="body" />
</div>
</body>
</html:html>