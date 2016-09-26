package action;


import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Properties;

import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.AddressException;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;
import org.apache.struts.action.ActionMessage;
import org.apache.struts.action.ActionMessages;
import org.apache.struts.action.DynaActionForm;
import org.apache.struts.upload.FormFile;

import services.ActualidadLaboralService;
import services.BoletinService;
import services.EstadoService;
import services.PerfilService;
import services.UsuarioService;
import bean.BeanActualidadLaboral;
import bean.BeanBoletin;
import bean.BeanEstado;
import bean.BeanPerfil;
import bean.BeanPersona;
import bean.BeanUsuario;

public class RegulacionLaboralAction extends Action{
	String url="";
	
	UsuarioService ususervice=new UsuarioService();
	PerfilService pefservice=new PerfilService();
	EstadoService estservice=new EstadoService();
	ActualidadLaboralService aclservice=new ActualidadLaboralService();
	BoletinService bolservice=new BoletinService();
	
	public ActionForward execute(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {
	
	    	String forwardName = "error";
			String parametro = request.getParameter("event");
			System.out.println("parametro recibido"+parametro);
			
			if (parametro.equals("aclSave")) {
				forwardName =aclInsert(mapping, form, request, response);
				System.out.println("Enviando al action :"+forwardName);
			}
			if (parametro.equals("actualidadLaboralSearch")) {
				forwardName =actualidadLaboralSearch(mapping, form, request, response);
				System.out.println("Enviando al action :"+forwardName);
			}/*
			if (parametro.equals("aclSearch")) {
				forwardName =aclSearch(mapping, form, request, response);
				System.out.println("Enviando al action :"+forwardName);
			}*/
			if (parametro.equals("aclNew")) {
				forwardName =aclNew(mapping, form, request, response);
				System.out.println("Enviando al action :"+forwardName);
			}
			if (parametro.equals("aclUpdate")) {
				forwardName =aclUpdate(mapping, form, request, response);
				System.out.println("Enviando al action :"+forwardName);
			}
			if (parametro.equals("aclsaveUpdate")) {
				forwardName =aclsaveUpdate(mapping, form, request, response);
				System.out.println("Enviando al action :"+forwardName);
			}
			if (parametro.equals("pefDelete")) {
				forwardName =saveActiveInactive(mapping, form, request, response);
				System.out.println("Enviando al action :"+forwardName);
			}
			if (parametro.equals("regulacionLaboralPublic")) {
				forwardName =regulacionLaboralPublic(mapping, form, request, response);
				System.out.println("Enviando al action :"+forwardName);
			}
			if (parametro.equals("aclVistaPrevia")) {
				forwardName =aclVistaPrevia(mapping, form, request, response);
				System.out.println("Enviando al action :"+forwardName);
			}
			if (parametro.equals("actualidadLaboralSendPrevio")) {
				forwardName =actualidadLaboralSendPrevio(mapping, form, request, response);
				System.out.println("Enviando al action :"+forwardName);
			}
			if (parametro.equals("aclInvitacion")) {
				forwardName =aclInvitacion(mapping, form, request, response);
				System.out.println("Enviando al action :"+forwardName);
			}
			if (parametro.equals("aclSendInvitacion")) {
				forwardName =aclSendInvitacion(mapping, form, request, response);
				System.out.println("Enviando al action :"+forwardName);
			}
			return mapping.findForward(forwardName);
	}
	private String aclSendInvitacion(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response) throws AddressException, MessagingException {
		// Configuración de parámetros 
		DynaActionForm actualidadLaboralForm = (DynaActionForm)form;
		Properties propiedades = new Properties();
		
		BeanActualidadLaboral aclbean=(BeanActualidadLaboral)request.getSession().getAttribute("bean");
		/*
		propiedades.setProperty("mail.smtp.host", "127.0.0.1");    
		propiedades.setProperty("mail.smtp.port", "25"); 
		*/
		//Configurando parametros para el gmail
		
		propiedades.setProperty("mail.smtp.host", "smtp.gmail.com");
		propiedades.setProperty("mail.smtp.starttls.enable", "true");
		propiedades.setProperty("mail.smtp.port", "587");
		propiedades.setProperty("mail.smtp.user", "hrcontactenos@gmail.com");
		propiedades.setProperty("mail.smtp.auth", "true");  
			    			
		Session mailSession = Session.getDefaultInstance(propiedades, null); 
		mailSession.setDebug(true);
		
		// Autentificación y crea un mensaje nuevo 
		MimeMessage msg = new MimeMessage(mailSession); 
		msg.setFrom(new InternetAddress("hrcontactenos@gmail.com")); 
		msg.setRecipients(Message.RecipientType.TO, actualidadLaboralForm.getString("straclCorreo")); //to 
	    msg.setRecipients(Message.RecipientType.CC, "harold.diehl@hotmail.com"); //cc
	    msg.setRecipients(Message.RecipientType.BCC, "diehl.rojas@yahoo.com,jenny.huaman@claroperu.blackberry.com"); //bcc
		msg.setSentDate(new Date()); 
		msg.setSubject("INFORMATIVO LABORAL - "+aclbean.getStraclNombre()+" - "+actualidadLaboralForm.getString("straclCorreoMensaje")); 

		String valor1="<!DOCTYPE html PUBLIC '-//W3C//DTD XHTML 1.0 Transitional//EN' 'http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd'>"+
"<html xmlns='http://www.w3.org/1999/xhtml'>"+
"<head>"+
 " <meta http-equiv='Content-Type' content='text/html; charset=utf-8' />"+
  "<title>A Simple Responsive HTML Email</title>"+
  "<style type='text/css'>"+
  "body {margin: 0; padding: 0; min-width: 100%!important;}"+
  "img {height: auto;}"+
  "h4 {font-family:sans-serif; color:#FFF;}"+
  ".imagentd {background-image:url(http://www.lazoabogados.com.pe/wp-content/themes/abogados/images/logo.png);}"+
  ".content {width: 100%; max-width: 600px;}"+
  ".header {padding: 40px 30px 20px 30px;background-color:#281E43}"+
  ".innerpadding {padding: 30px 30px 30px 30px;}"+
  ".borderbottom {border-bottom: 1px solid #f2eeed;}"+
  ".subhead {font-size: 15px; color: #ffffff; font-family: sans-serif; letter-spacing: 10px;}"+
  ".h1, .h2 {color: #D87D27; font-family: sans-serif;}"+
  ".h1 {font-size: 33px; line-height: 38px; font-weight: bold;}"+
  ".h2 {padding: 0 0 15px 0; font-size: 24px; line-height: 28px; font-weight: bold;}"+
  ".bodycopy {font-family: sans-serif;font-size: 16px; line-height: 22px;text-align:justify}"+
  ".button {text-align: center; font-size: 18px; font-family: sans-serif; font-weight: bold; padding: 0 30px 0 30px;}"+
  ".button a {color: #ffffff; text-decoration: none;}"+
  ".footer {padding: 20px 30px 15px 30px;}"+
  ".footercopy {font-family: sans-serif; font-size: 14px; color: #ffffff;}"+
  ".footercopy a {color: #ffffff; text-decoration: underline;}"+
  "@media only screen and (max-width: 550px), screen and (max-device-width: 550px) {"+
  "body[yahoo] .hide {display: none!important;}"+
  "body[yahoo] .buttonwrapper {background-color: transparent!important;}"+
  "body[yahoo] .button {padding: 0px!important;}"+
  "body[yahoo] .button a {background-color: #e05443; padding: 15px 15px 13px!important;}"+
  "body[yahoo] .unsubscribe {display: block; margin-top: 20px; padding: 10px 50px; background: #2f3942; border-radius: 5px; text-decoration: none!important; font-weight: bold;}"+
  "}"+
  "/*@media only screen and (min-device-width: 601px) {"+
    ".content {width: 600px !important;}"+
    ".col425 {width: 425px!important;}"+
    ".col380 {width: 380px!important;}"+
   " }*/"+
 " </style>"+
"</head>"+
"<body yahoo bgcolor='#f6f8f1'>"+
"<table width='100%' bgcolor='#f6f8f1' border='0' cellpadding='0' cellspacing='0'>"+
"<tr>"+
 " <td>"+
  "  <!--[if (gte mso 9)|(IE)]>"+
   "   <table width='600' align='center' cellpadding='0' cellspacing='0' border='0'>"+
    "    <tr>"+
     "     <td>"+
    "<![endif]-->  "+   
 "   <table bgcolor='#ffffff' class='content' align='center' cellpadding='0' cellspacing='0' border='0'>"+
  "    <tr>"+
   "     <td background='https://lh5.googleusercontent.com/-cXOrZ24_hZY/VLM5a1mWOkI/AAAAAAAAFKg/LBvtGrDeT7o/w1294-h865-no/bg-tobgimg.jpg' class='header'>"+
    "      <table width='100%'  align='left' border='0' cellpadding='0' cellspacing='0'>  "+
     "       <tr>"+
      "        <td height='70' style='padding: 0 20px 20px 0;'>"+
             "   <h1><img class='imagentd' src='http://www.lazoabogados.com.pe/wp-content/themes/abogados/images/logo.png' width='300' height='61' border='0'/><h1/>"+
            "  </td>"+
           " </tr>"+
          "</table>"+
          "<!--[if (gte mso 9)|(IE)]>"+
            "<table width='425' align='left' cellpadding='0' cellspacing='0' border='0'>"+
            "  <tr>"+
           "     <td>"+
          "<![endif]-->"+
         " <table width='93%' border='0' align='left' cellpadding='0' cellspacing='0'>  "+
            "<tr>"+
               "    <td style='color:#D87D27; font-family:sans-serif;padding: 5px 0 0 0;' align='right'>"+
              "        <h1 style='color:#D87D27;font-weight: bold;'>ACTUALIDAD LABORAL</h1>"+
             " </td>"+
            "</tr>"+
           " <tr>"+
              "     <td align='right' style='color:#D87D27; font-family:sans-serif'>"+
             "         <p>"+aclbean.getStraclNombre() +"</p>"+
            "     </td>"+
           " </tr>"+
          "</table>"+
          "<!--[if (gte mso 9)|(IE)]>"+
           "     </td>"+
          "    </tr>"+
         " </table>"+
        "  <![endif]-->"+
       " </td>"+
      "</tr>"+
     " <tr>"+
      "  <td class='innerpadding borderbottom'>"+
       "   <table width='100%' border='0' cellspacing='0' cellpadding='0'>"+
            "<tr>"+
             " <td class='bodycopy'>"+
            "<div>"+
		    aclbean.getStraclContenido()+
		    "</div>"+
		    "<div>"+
		    "<a href='http://localhost:8084/webInformativo/redireccionando.do?event=actualidadLaboralPublicado'>Ver en Linea</a>"+
		    	"</div>"+
         "     </td>"+
        "    </tr>"+
       "   </table>"+
      "  </td>"+
     " </tr>"+
      "<tr>"+
        "<td class='innerpadding borderbottom'><!--[if (gte mso 9)|(IE)]>"+
            "<table width='380' align='left' cellpadding='0' cellspacing='0' border='0'>"+
            "  <tr>"+
           "     <td>"+
          "<![endif]--><!--[if (gte mso 9)|(IE)]>"+
           "     </td>"+
          "    </tr>"+
         " </table>"+
        "  <![endif]-->"+
       " </td>"+
      "</tr>"+
      "<tr>"+
       " <td class='footer' bgcolor='#D87D27'>"+
          "<table width='100%' border='0' cellspacing='0' cellpadding='0'>"+
            "<tr>"+
              "<td align='left' class='footercopy'>"+
               " <p>Dirección: Av. Pardo y Aliaga 699, Piso 7, San Isidro, Lima – Perú<br />"+
               "   Teléfono: 511-6121700 / Fax:511-6121701<br />"+
                "  Correo electrónico: contacto@lazoabogados.com.pe</p>"+
               
              "  </td>"+
             " </tr>"+
            "<tr>"+
              "<td align='right' style='padding: 20px 0 0 0;'>"+
               " <table border='0' cellspacing='0' cellpadding='0'>"+
               "   <tr>"+
              "      <td style='text-align: right; padding: 0 10px 0 10px; font-family:sans-serif ; font-size:12px'>"+
             "         &reg; Todos los derechos reservados a Lazo, De Romaña & Gagliuffi Abogados.<br/> "+
            "          </td>"+
           "         </tr>"+
          "        </table>"+
         "       </td>"+
        "      </tr>"+
       "     </table>"+
      "    </td>"+
     " </tr>"+
    "</table>"+
    "<!--[if (gte mso 9)|(IE)]>"+
      "    </td>"+
     "   </tr>"+
    "</table>"+
   " <![endif]-->"+
  "  </td>"+
 " </tr>"+
"</table>"+
"</body>"+
"</html>";
		
		msg.setContent(valor1, "text/html");
		// La Clase Transport envía el correo send() es una 
		//forma rapìda de emviar correos
		//Transport.send(msg); 
        
		//Enviando el mensaje para el gmail
		
		Transport t = mailSession.getTransport("smtp"); // session.getTransport("smtp");
		//t.connect("gmail.com", "hrcontactenos", "pachacutec2809");
		t.connect("smtp.gmail.com","harold.diehl@gmail.com","Mitiger23");
		t.sendMessage(msg,msg.getAllRecipients());
		t.close();
		return "actualidadLaboralPublicado";
	}
	private String aclInvitacion(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response) {
		DynaActionForm actualidadLaboralForm = (DynaActionForm)form;
		actualidadLaboralForm.set("straclCorreo", "");
		actualidadLaboralForm.set("straclCorreoMensaje", "");
		return "aclInvitacion";
	}
	private String actualidadLaboralSendPrevio(ActionMapping mapping,
			ActionForm form, HttpServletRequest request,
			HttpServletResponse response) throws AddressException, MessagingException {
		// Configuración de parámetros 
				Properties propiedades = new Properties();
				
				BeanActualidadLaboral aclbean=(BeanActualidadLaboral)request.getSession().getAttribute("aclbean");
				/*
				propiedades.setProperty("mail.smtp.host", "127.0.0.1");    
				propiedades.setProperty("mail.smtp.port", "25"); 
				*/
				//Configurando parametros para el gmail
				
				propiedades.setProperty("mail.smtp.host", "smtp.gmail.com");
				propiedades.setProperty("mail.smtp.starttls.enable", "true");
				propiedades.setProperty("mail.smtp.port", "587");
				propiedades.setProperty("mail.smtp.user", "hrcontactenos@gmail.com");
				propiedades.setProperty("mail.smtp.auth", "true");  
					    			
				Session mailSession = Session.getDefaultInstance(propiedades, null); 
				mailSession.setDebug(true);
				
				// Autentificación y crea un mensaje nuevo 
				MimeMessage msg = new MimeMessage(mailSession); 
				msg.setFrom(new InternetAddress("hrcontactenos@gmail.com")); 
				msg.setRecipients(Message.RecipientType.TO, "harold.diehl@gmail.com"); //to 
			    msg.setRecipients(Message.RecipientType.CC, "harold.diehl@hotmail.com"); //cc
			    msg.setRecipients(Message.RecipientType.BCC, "diehl.rojas@yahoo.com,jenny.huaman@claroperu.blackberry.com"); //bcc
				msg.setSentDate(new Date()); 
				msg.setSubject("INFORMATIVO LABORAL - "+aclbean.getStraclNombre()); 

				String valor1="<!DOCTYPE html PUBLIC '-//W3C//DTD XHTML 1.0 Transitional//EN' 'http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd'>"+
		"<html xmlns='http://www.w3.org/1999/xhtml'>"+
		"<head>"+
		 " <meta http-equiv='Content-Type' content='text/html; charset=utf-8' />"+
		  "<title>A Simple Responsive HTML Email</title>"+
		  "<style type='text/css'>"+
		  "body {margin: 0; padding: 0; min-width: 100%!important;}"+
		  "img {height: auto;}"+
		  "h4 {font-family:sans-serif; color:#FFF;}"+
		  ".imagentd {background-image:url(http://www.lazoabogados.com.pe/wp-content/themes/abogados/images/logo.png);}"+
		  ".content {width: 100%; max-width: 600px;}"+
		  ".header {padding: 40px 30px 20px 30px;background-color:#281E43}"+
		  ".innerpadding {padding: 30px 30px 30px 30px;}"+
		  ".borderbottom {border-bottom: 1px solid #f2eeed;}"+
		  ".subhead {font-size: 15px; color: #ffffff; font-family: sans-serif; letter-spacing: 10px;}"+
		  ".h1, .h2 {color: #D87D27; font-family: sans-serif;}"+
		  ".h1 {font-size: 33px; line-height: 38px; font-weight: bold;}"+
		  ".h2 {padding: 0 0 15px 0; font-size: 24px; line-height: 28px; font-weight: bold;}"+
		  ".bodycopy {font-family: sans-serif;font-size: 16px; line-height: 22px;text-align:justify}"+
		  ".button {text-align: center; font-size: 18px; font-family: sans-serif; font-weight: bold; padding: 0 30px 0 30px;}"+
		  ".button a {color: #ffffff; text-decoration: none;}"+
		  ".footer {padding: 20px 30px 15px 30px;}"+
		  ".footercopy {font-family: sans-serif; font-size: 14px; color: #ffffff;}"+
		  ".footercopy a {color: #ffffff; text-decoration: underline;}"+
		  "@media only screen and (max-width: 550px), screen and (max-device-width: 550px) {"+
		  "body[yahoo] .hide {display: none!important;}"+
		  "body[yahoo] .buttonwrapper {background-color: transparent!important;}"+
		  "body[yahoo] .button {padding: 0px!important;}"+
		  "body[yahoo] .button a {background-color: #e05443; padding: 15px 15px 13px!important;}"+
		  "body[yahoo] .unsubscribe {display: block; margin-top: 20px; padding: 10px 50px; background: #2f3942; border-radius: 5px; text-decoration: none!important; font-weight: bold;}"+
		  "}"+
		  "/*@media only screen and (min-device-width: 601px) {"+
		    ".content {width: 600px !important;}"+
		    ".col425 {width: 425px!important;}"+
		    ".col380 {width: 380px!important;}"+
		   " }*/"+
		 " </style>"+
		"</head>"+
		"<body yahoo bgcolor='#f6f8f1'>"+
		"<table width='100%' bgcolor='#f6f8f1' border='0' cellpadding='0' cellspacing='0'>"+
		"<tr>"+
		 " <td>"+
		  "  <!--[if (gte mso 9)|(IE)]>"+
		   "   <table width='600' align='center' cellpadding='0' cellspacing='0' border='0'>"+
		    "    <tr>"+
		     "     <td>"+
		    "<![endif]-->  "+   
		 "   <table bgcolor='#ffffff' class='content' align='center' cellpadding='0' cellspacing='0' border='0'>"+
		  "    <tr>"+
		   "     <td background='https://lh5.googleusercontent.com/-cXOrZ24_hZY/VLM5a1mWOkI/AAAAAAAAFKg/LBvtGrDeT7o/w1294-h865-no/bg-tobgimg.jpg' class='header'>"+
		    "      <table width='100%'  align='left' border='0' cellpadding='0' cellspacing='0'>  "+
		     "       <tr>"+
		      "        <td height='70' style='padding: 0 20px 20px 0;'>"+
		             "   <h1><img class='imagentd' src='http://www.lazoabogados.com.pe/wp-content/themes/abogados/images/logo.png' width='300' height='61' border='0'/><h1/>"+
		            "  </td>"+
		           " </tr>"+
		          "</table>"+
		          "<!--[if (gte mso 9)|(IE)]>"+
		            "<table width='425' align='left' cellpadding='0' cellspacing='0' border='0'>"+
		            "  <tr>"+
		           "     <td>"+
		          "<![endif]-->"+
		         " <table width='93%' border='0' align='left' cellpadding='0' cellspacing='0'>  "+
		            "<tr>"+
		               "    <td style='color:#D87D27; font-family:sans-serif;padding: 5px 0 0 0;' align='right'>"+
		              "        <h1 style='color:#D87D27;font-weight: bold;'>ACTUALIDAD LABORAL</h1>"+
		             " </td>"+
		            "</tr>"+
		           " <tr>"+
		              "     <td align='right' style='color:#D87D27; font-family:sans-serif'>"+
		             "         <p>"+aclbean.getStraclNombre() +"</p>"+
		            "     </td>"+
		           " </tr>"+
		          "</table>"+
		          "<!--[if (gte mso 9)|(IE)]>"+
		           "     </td>"+
		          "    </tr>"+
		         " </table>"+
		        "  <![endif]-->"+
		       " </td>"+
		      "</tr>"+
		     " <tr>"+
		      "  <td class='innerpadding borderbottom'>"+
		       "   <table width='100%' border='0' cellspacing='0' cellpadding='0'>"+
		            "<tr>"+
		             " <td class='bodycopy'>"+
		            "<div>"+
				    aclbean.getStraclContenido()+
				    "</div>"+		             
		         "     </td>"+
		        "    </tr>"+
		       "   </table>"+
		      "  </td>"+
		     " </tr>"+
		      "<tr>"+
		        "<td class='innerpadding borderbottom'><!--[if (gte mso 9)|(IE)]>"+
		            "<table width='380' align='left' cellpadding='0' cellspacing='0' border='0'>"+
		            "  <tr>"+
		           "     <td>"+
		          "<![endif]--><!--[if (gte mso 9)|(IE)]>"+
		           "     </td>"+
		          "    </tr>"+
		         " </table>"+
		        "  <![endif]-->"+
		       " </td>"+
		      "</tr>"+
		      "<tr>"+
		       " <td class='footer' bgcolor='#D87D27'>"+
		          "<table width='100%' border='0' cellspacing='0' cellpadding='0'>"+
		            "<tr>"+
		              "<td align='left' class='footercopy'>"+
		               " <p>Dirección: Av. Pardo y Aliaga 699, Piso 7, San Isidro, Lima – Perú<br />"+
		               "   Teléfono: 511-6121700 / Fax:511-6121701<br />"+
		                "  Correo electrónico: contacto@lazoabogados.com.pe</p>"+
		               
		              "  </td>"+
		             " </tr>"+
		            "<tr>"+
		              "<td align='right' style='padding: 20px 0 0 0;'>"+
		               " <table border='0' cellspacing='0' cellpadding='0'>"+
		               "   <tr>"+
		              "      <td style='text-align: right; padding: 0 10px 0 10px; font-family:sans-serif ; font-size:12px'>"+
		             "         &reg; Todos los derechos reservados a Lazo, De Romaña & Gagliuffi Abogados.<br/> "+
		            "          </td>"+
		           "         </tr>"+
		          "        </table>"+
		         "       </td>"+
		        "      </tr>"+
		       "     </table>"+
		      "    </td>"+
		     " </tr>"+
		    "</table>"+
		    "<!--[if (gte mso 9)|(IE)]>"+
		      "    </td>"+
		     "   </tr>"+
		    "</table>"+
		   " <![endif]-->"+
		  "  </td>"+
		 " </tr>"+
		"</table>"+
		"</body>"+
		"</html>";
				
				msg.setContent(valor1, "text/html");
				// La Clase Transport envía el correo send() es una 
				//forma rapìda de emviar correos
				//Transport.send(msg); 
		        
				//Enviando el mensaje para el gmail
				
				Transport t = mailSession.getTransport("smtp"); // session.getTransport("smtp");
				//t.connect("gmail.com", "hrcontactenos", "pachacutec2809");
				t.connect("smtp.gmail.com","harold.diehl@gmail.com","Mitiger23");
				t.sendMessage(msg,msg.getAllRecipients());
				t.close();
		return "actualidadLaboralSendPrevio";
	}
	private String aclVistaPrevia(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response) throws Exception {
		DynaActionForm actualidadLaboralForm = (DynaActionForm)form;
		Integer p_intaclId=(Integer)actualidadLaboralForm.get("intaclId");
		BeanActualidadLaboral aclbean=aclservice.aclSearchxid(p_intaclId);
		HttpSession sessionACLprevia = request.getSession(true);
		sessionACLprevia.setAttribute("aclbean", aclbean);
		return "aclVistaPrevia";
	}
	private String regulacionLaboralPublic(ActionMapping mapping,
			ActionForm form, HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		
		int p_intbolId=0;
		DynaActionForm actualidadLaboralForm = (DynaActionForm)form;
		

		List<BeanActualidadLaboral> aclSearchListxestado=aclservice.aclSearchListxestado("PUBLICADO");
		actualidadLaboralForm.set("aclSearchListxestado", aclSearchListxestado);
		
		if(aclSearchListxestado !=null){
			for(BeanActualidadLaboral aclbean : aclSearchListxestado){
				p_intbolId=aclbean.getIntbolId();
			}}else{
				System.out.println("no hay data la tabla");
			}
		
        BeanBoletin bolbean=bolservice.bolSearchxid(p_intbolId);
		
		actualidadLaboralForm.set("intbolId", bolbean.getIntbolId());
		actualidadLaboralForm.set("strbolFile", bolbean.getStrbolFile());
		return "regulacionLaboralPublic";
	}
	
	private String saveActiveInactive(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response) throws Exception {
		DynaActionForm perfilForm = (DynaActionForm)form;
		Integer p_intpefId=(Integer)perfilForm.get("intpefId");
		BeanPerfil pefbean=pefservice.pefSearchxid(p_intpefId);
		String strEstado="";
		if(pefbean.getStrpefEstado().equals("ACTIVO")){
			strEstado="INACTIVO";
		}else if(pefbean.getStrpefEstado().equals("INACTIVO")){
			strEstado="ACTIVO";
		}else if(pefbean.getStrpefEstado().equals("ACTIVE")){
			strEstado="INACTIVE";
		}else if(pefbean.getStrpefEstado().equals("INACTIVE")){
			strEstado="ACTIVE";
		}
		pefSaveActiveInactive(request, p_intpefId,strEstado );
		
		return "perfilSearch";
	}
	private String aclsaveUpdate(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response) throws Exception {
		DynaActionForm actualidadLaboralForm = (DynaActionForm)form;
		BeanActualidadLaboral aclbean=aclSaveUpdate(actualidadLaboralForm, request);
		String forwardName="";
		if(aclbean.getIntaclMensaje()==1){
			limpiar(actualidadLaboralForm);
			actualidadLaboralForm.set("flagConfirm","OKOKOK");
			forwardName="actualidadLaboralSearch";
		}else if(aclbean.getIntaclMensaje()==2){
			ActionMessages mensaje = new ActionMessages();
			mensaje.add("mensaje", new ActionMessage("actualidadLaboralForm.actualidadLaboralUpdate.error.error"));
			saveErrors(request, mensaje);
			actualidadLaboralForm.set("flagConfirm","ERROR");
			actualidadLaboralForm.set("straclNombre", aclbean.getStraclNombre());
			forwardName = "aclUpdate";
			}
		return forwardName;
	}
	private String aclUpdate(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response) throws Exception {
		DynaActionForm actualidadLaboralForm = (DynaActionForm)form;
		Integer p_intaclId=(Integer)actualidadLaboralForm.get("intaclId");
		BeanActualidadLaboral aclbean=aclservice.aclSearchxid(p_intaclId);
		String forwardName="";
		
		if(aclbean != null){
			actualidadLaboralForm.set("intaclId", aclbean.getIntaclId());
			actualidadLaboralForm.set("straclTitulo", aclbean.getStraclTitulo());
			actualidadLaboralForm.set("straclNombre", aclbean.getStraclNombre());
			actualidadLaboralForm.set("straclContenido", aclbean.getStraclContenido());
			actualidadLaboralForm.set("straclResumen", aclbean.getStraclResumen());
			actualidadLaboralForm.set("straclEstado", aclbean.getStraclEstado());
		
			actualidadLaboralForm.set("flagConfirm","FALSE");
		
		forwardName="aclUpdate";
		}else{
			forwardName="actualidadLaboralSearch";
			limpiar(actualidadLaboralForm);
		}
		return forwardName;
	}
	private String aclNew(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response) {
		DynaActionForm actualidadLaboralForm = (DynaActionForm)form;
		actualidadLaboralForm.set("flagConfirm","FALSE");
		limpiar(actualidadLaboralForm);
		return "aclNew";
	}
	
	/*private String aclSearch(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response) throws Exception {
		DynaActionForm actualidadLaboralForm = (DynaActionForm)form;
		
		BeanActualidadLaboral bean=new BeanActualidadLaboral();
		bean.setStraclNombre("%"+actualidadLaboralForm.getString("straclNombre")+"%");
		bean.setStraclEstado(actualidadLaboralForm.getString("straclEstado")+"%");
		bean.setStraclResumen("%"+actualidadLaboralForm.getString("straclResumen")+"%");
		
		ArrayList aclSearchList=aclservice.aclSearchList(bean);

		actualidadLaboralForm.set("aclSearchList", aclSearchList);
		actualidadLaboralForm.set("flagConfirm","FALSE");
		limpiar(actualidadLaboralForm);
		return "aclSearchList";
	}*/
	@SuppressWarnings("rawtypes")
	private String actualidadLaboralSearch(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response) throws Exception {
		DynaActionForm actualidadLaboralForm = (DynaActionForm)form;
		Integer p_intbolId=(Integer)actualidadLaboralForm.get("intbolId");
		BeanPersona perbean=(BeanPersona)request.getSession().getAttribute("beanPersona");
		BeanEstado  estbean= new BeanEstado();
		estbean.setStrestLocale(perbean.getStrperLocale());
		estbean.setStrestParaModulo("actualidadLaboral");
		
		BeanBoletin bolBean=bolservice.bolSearchxid(p_intbolId);
		
		actualidadLaboralForm.set("intbolId", bolBean.getIntbolId());
		actualidadLaboralForm.set("strbolNombre", bolBean.getStrbolNombre());
		
		ArrayList aclModuloEstado=estservice.allEstadoModulo(estbean);
		actualidadLaboralForm.set("aclModuloEstado",aclModuloEstado);	

		ArrayList aclSearchList=aclservice.aclSearchList(p_intbolId);
		actualidadLaboralForm.set("aclSearchList", aclSearchList);
		actualidadLaboralForm.set("flagConfirm","FALSE");
		
		return "aclModuloEstado";
	}
	private String aclInsert(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response) throws Exception {
		DynaActionForm actualidadLaboralForm = (DynaActionForm)form;
		BeanActualidadLaboral aclbean=aclSave(actualidadLaboralForm, request);
		System.out.println("entro aqui primero ");
		String forwardName="";
		if(aclbean.getIntaclId() == 0){
			ActionMessages mensaje = new ActionMessages();
			mensaje.add("mensaje", new ActionMessage("actualidadLaboralForm.actualidadLaboralNew.error.error"));
			saveErrors(request, mensaje);
			actualidadLaboralForm.set("flagConfirm","ERROR");
			actualidadLaboralForm.set("straclNombre", aclbean.getStraclNombre());
			forwardName = "aclNew";	
			
		}else{
			if(actualidadLaboralForm.getString("saveandadd").equals("saveandadd")){
			System.out.println("url :"+url);
			ActionMessages mensaje = new ActionMessages();
			mensaje.add("mensaje", new ActionMessage("actualidadLaboralForm.actualidadLaboralNew.ok.ok"));
			saveErrors(request, mensaje);
			actualidadLaboralForm.set("flagConfirm","OK");
			limpiar(actualidadLaboralForm);
			forwardName = "aclNew";
			}else if(actualidadLaboralForm.getString("saveandadd").equals("save")){
		    System.out.println("url :"+url);
			limpiar(actualidadLaboralForm);
			actualidadLaboralForm.set("flagConfirm","OKOK");
			forwardName = "actualidadLaboralSearch";
			}
				
		}	
		return forwardName;
	}
	
	 private BeanActualidadLaboral aclSave(DynaActionForm form,HttpServletRequest request) throws Exception {
		    Date dteaclFechaIngreso=new Date();
		    Date dteaclFechaUpdate=new Date();
		    BeanPersona perbean=(BeanPersona)request.getSession().getAttribute("beanPersona");
		    BeanUsuario usubean=ususervice.usuBuscarUserXId(perbean.getIntusuId());
			
		    aclFile(form);	
			
	    	BeanActualidadLaboral bean = new BeanActualidadLaboral();
	    	bean.setIntaclId(0);
	    	bean.setStraclTitulo(form.getString("straclTitulo"));
	    	bean.setStraclNombre(form.getString("straclNombre"));
	    	bean.setStraclContenido(form.getString("straclContenido"));
	    	System.out.println("el contenido :"+form.getString("straclContenido"));
	    	bean.setStraclResumen(form.getString("straclResumen"));
	    	bean.setDteaclFechaIngreso(dteaclFechaIngreso);
	    	bean.setDteaclFechaUpdate(dteaclFechaUpdate);
	    	bean.setStraclUserIngreso(usubean.getStrusuUserDesc());
	    	bean.setStraclUserUpdate(usubean.getStrusuUserDesc());
	    	bean.setStraclEstado(form.getString("straclEstado"));
	    	bean.setStraclFile(url);
	    	bean.setIntbolId((Integer)form.get("intbolId"));
	    	bean.setIntusuId(usubean.getIntusuId());
	
	        aclservice.aclInsert(bean);
	       return bean;
	}
	 private BeanActualidadLaboral aclSaveUpdate(DynaActionForm form,HttpServletRequest request) throws Exception {
		    Date dteaclFechaUpdate=new Date();
		    BeanPersona perbean=(BeanPersona)request.getSession().getAttribute("beanPersona");
		    BeanUsuario usubean=ususervice.usuBuscarUserXId(perbean.getIntusuId());
            
		    aclFile(form);	
		    
	    	BeanActualidadLaboral bean = new BeanActualidadLaboral();
	    	bean.setIntaclId((int) form.get("intaclId"));
	    	bean.setStraclTitulo(form.getString("straclTitulo"));
	    	bean.setStraclNombre(form.getString("straclNombre"));
	    	bean.setStraclContenido(form.getString("straclContenido"));
	    	bean.setStraclResumen(form.getString("straclResumen"));
	    	bean.setDteaclFechaUpdate(dteaclFechaUpdate);
	    	bean.setStraclUserUpdate(usubean.getStrusuUserDesc());
	    	bean.setStraclEstado(form.getString("straclEstado"));
	    	bean.setStraclFile(url);
	    	bean.setIntbolId((Integer)form.get("intbolId"));
	    	bean.setIntusuId(usubean.getIntusuId());
	    	bean.setIntaclMensaje(0);
	
	       aclservice.aclUpdate(bean);
	       return bean;
	}
	 private BeanPerfil pefSaveActiveInactive(HttpServletRequest request,int intpefId,String strpefEstado) throws Exception {
		    Date dtepefFechaUpdate=new Date();
		    BeanPersona perbean=(BeanPersona)request.getSession().getAttribute("beanPersona");
		    BeanUsuario usubean=ususervice.usuBuscarUserXId(perbean.getIntusuId());
		    
	    	BeanPerfil bean = new BeanPerfil();
	    	bean.setIntpefId(intpefId);
	    	bean.setDtepefFechaUpdate(dtepefFechaUpdate);
	    	bean.setStrpefUserUpdate(usubean.getStrusuUserDesc());
	    	bean.setStrpefEstado(strpefEstado);
	
	        pefservice.pefActiveOInactive(bean);
	       return bean;
	}
	 private void limpiar(DynaActionForm actualidadLaboralForm){	
		 actualidadLaboralForm.set("straclTitulo", "");
		 actualidadLaboralForm.set("straclNombre","");
		 actualidadLaboralForm.set("straclContenido","");
		 actualidadLaboralForm.set("straclResumen","");

	}
	
	 private void  aclFile(ActionForm form){
		 DynaActionForm actualidadLaboralForm =(DynaActionForm)form;
		 FileOutputStream fileoutputstream = null;
		 
			try
			{
				FormFile fichero =(FormFile) actualidadLaboralForm.get("straclFile");
				String ruta = this.getServlet().getServletContext().getRealPath("\\pdf\\")+"\\"+fichero.getFileName();
				//String ruta = destino+"\\"+fichero.getFileName();
				fileoutputstream = new FileOutputStream(new File(ruta));
				fileoutputstream.write(fichero.getFileData());
				System.out.println("esta es la ruta :"+ruta);
				System.out.println("TAMAÑO DEL FICHERO :"+fichero.getFileSize());
	            url=fichero.getFileName();
	            //urlCompleto=this.getServlet().getServletContext().getRealPath("\\")+"web.xml";

			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
				System.out.println("Error del file :"+e);
			}
			finally
			{
			  if(fileoutputstream !=null)
			  {
				  try {
					fileoutputstream.close();
				} catch (IOException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			  }
			}
		
	 }

	
}
