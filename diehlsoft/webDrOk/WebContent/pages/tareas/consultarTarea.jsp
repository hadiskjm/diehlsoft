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

<div class="container bg1 clearfix">
	<div id="maincont" class="bodycontainer clearfix">
	<h4>CONSULTAR TAREAS</h4>
	<hr/>
	<br>
	
	<fieldset>
	<legend>Filtros de Búsqueda</legend>
	
	<div class="mainForm">
				<div class="cbp-mc-form">
				<fieldset>
					<div class="cbp-mc-column50">

    <label>Área : </label>
      <select name="country">
	  						<option>Laboral</option>
	  						<option>Disputas</option>
	  						<option>Proyectos</option>
	  						<option>Finaciera</option>
	  					</select>

      </div>
     
     <div class="cbp-mc-column50">

     <label>Cliente :</label>
      <input name="Field1" type="text" value="" size="20">
      
    
      </div>
       </fieldset>
      </div>

      
    
    <br>
    <html:submit property="" styleClass="button green medium" onclick="autenticar()" ><bean:message key='usuarioForm.btn.login'/></html:submit>
    
    </div>
    
     
  </fieldset>
	
	<br>
	
	<div class="bodyDisplay">
<p> Lista de Tareas</p> 
    <br />
<p>9 registros encontrados. Mostrando 9 </p>

	   <table id="data" class="tableD">
	   <thead>
  <tr>
    <th >Dia</th>
    <th >Hora</th>
    <th >Expediente</th>
    <th >Cliente</th>
    <th >Tarea</th>
    <th >Contraparte</th>
    <th >Juzgado</th>
    <th >Responsable</th>
    <th >Dias</th>
    <th >¿Fin?</th>
  </tr>
  </thead>
    <tbody>
  <tr class="odd">
    <td >14/07/2008</td>
    <td >12:30</td>
    <td >322-2007</td>
    <td >TELEFÓNICA DEL    PERÚ S.A.A.</td>
    <td >AUDIENCIA UNICA</td>
    <td >VASQUEZ VIZCARDO,    DOMINGO GERARDO</td>
    <td >22 JUZGADO    LABORAL</td>
    <td >CASTAÑEDA    VELASQUEZ, ELVIRA</td>
    <td >-2.339</td>
    <td >NO</td>
  </tr>
  <tr class="even">
  <td >30/10/2014</td>
    <td >8:00</td>
    <td >00431-2004</td>
    <td >TELEFÓNICA    DEL PERÚ S.A.A.</td>
    <td >OTROS    - RLR: Ver si demandante cumplio con arancel. NO HA CUMPLIDO AL 29.10.14</td>
    <td >NACARINO    INSUA, ALEJANDRO JOSE</td>
    <td >3    JUZGADO LABORAL TRANSITORIO</td>
    <td >ORTIZ    HIDALGO, GONZALO</td>
    <td >-40</td>
    <td >NO</td>
  </tr>
  <tr class="odd">
  <td >30/10/2014</td>
    <td >12:00</td>
    <td >00162-2005</td>
    <td >TELEFÓNICA    DEL PERÚ S.A.A.</td>
    <td >OTROS    - RLR: Ver si demandante cumplio con arancel. AL 29.10.14 NO HA CUMPLIDO</td>
    <td >VILCHEZ    CHUMPITAZ, JANNETT</td>
    <td >3    JUZGADO LABORAL TRANSITORIO</td>
    <td >ORTIZ    HIDALGO, GONZALO</td>
    <td >-40</td>
    <td >NO</td>
  </tr>
  <tr class="even">
  <td >31/10/2014</td>
    <td >8:00</td>
    <td >00119-2005</td>
    <td >TELEFÓNICA    DEL PERÚ S.A.A.</td>
    <td >OTROS    - RICARDO: Revisar si cumplio el demandante con adjuntar tasa por apelacion    de sentencia. DEMANDANTE NO HA CUMPLIDO AL DIA DE HOY 27/10.</td>
    <td >DULANTO    CHAVEZ, ALBERTO CESAR</td>
    <td >3    JUZGADO LABORAL TRANSITORIO</td>
    <td >ORTIZ    HIDALGO, GONZALO</td>
    <td >-39</td>
    <td >NO</td>
  </tr>
  <tr class="odd">
  <td >04/11/2014</td>
    <td >0:00</td>
    <td >6390-2011</td>
    <td >REPSOL    EXPLOTACIÓN PERU SUCURSAL PERÚ - REPEXA</td>
    <td >RESOLUCION    - Infundadas las tachas deducidas por la parte Ddte; sin perjuicio a lo    resuelto y atendiendo que la parte demandada no ha acompañado los originales    del registro de arboles y planilla de asistencia, sino solo copias simples.    se disppon requerir a la parte demandada para que dentro del tercer dia de    notidicado cumpla con acompañar dicha documentacion en original o copia    certificada.</td>
    <td >VALDERRAMA  CABRERA, RUBER</td>
    <td >12    JUZGADO LABORAL TRANSITORIO</td>
    <td >SOLTAU    SALAZAR, SEBASTIAN</td>
    <td >-35</td>
    <td >NO</td>
  </tr>
  <tr class="even">
  <td >05/11/2014</td>
    <td >0:00</td>
    <td >766-2012    (310-2010)</td>
    <td >CEMENTOS    PACASMAYO S.A.A.</td>
    <td >OTROS    - Verificar si el expediente ya fue derivado a la Sala en Trujillo al haberse    concedido apelación en junio 2014.</td>
    <td >POLANCO    SANDOVAL, FRANCISCO ENRIQUE</td>
    <td >SALA    CIVIL</td>
    <td >MERCADO    VILLARAN, EDUARDO</td>
    <td >-34</td>
    <td >NO</td>
  </tr>
  <tr class="odd">
  <td >05/11/2014</td>
    <td >0:00</td>
    <td >153-2008</td>
    <td >CEMENTOS    PACASMAYO S.A.A.</td>
    <td >OTROS    - Coordinar pendiente con Estudio Villarán: Verificar si el expediente ya    está en Despacho para que se expida sentencia y si ya se ha expedido la misma    o cuando es la fecha probable.</td>
    <td >MIRANDA    GRADOS, JUAN VICENTE</td>
    <td >JUZGADO    CIVIL</td>
    <td >MERCADO    VILLARAN, EDUARDO</td>
    <td >-34</td>
    <td >NO</td>
  </tr>
  <tr class="even">
  <td >05/11/2014</td>
    <td >8:00</td>
    <td >16115-2013</td>
    <td >TELEFÓNICA    DEL PERÚ S.A.A.</td>
    <td >OTROS    - JJEM: Verificar en web si Suprema ya expidió sentencia</td>
    <td >RAMIREZ    PANTA, KARLA JOHANA</td>
    <td >SALA    DE DERECHO CONSTITUCIONAL Y SOCIAL PERMANENTE DE LA CORTE SUPREMA</td>
    <td >MORALES    POMASONCCO, CARLOS</td>
    <td >-34</td>
    <td >NO</td>
  </tr>
  <tr class="odd">
  <td >05/11/2014</td>
    <td >8:00</td>
    <td >00680-2009</td>
    <td >BACKUS</td>
    <td >FECHA    DE ALEGATOS</td>
    <td >VIDAL    SANCHEZ, OLMEDO DE JESUS</td>
    <td >12    JUZGADO LABORAL TRANSITORIO</td>
    <td >MORALES    POMASONCCO, CARLOS</td>
    <td >-34</td>
    <td >NO</td>
  </tr>
  
  </tbody>
</table>
 </div>
 
	</div>
	</div>

</body>
</html>