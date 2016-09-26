package action;

import java.util.ArrayList;
import java.util.Date;
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

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;
import org.apache.struts.action.ActionMessage;
import org.apache.struts.action.ActionMessages;
import org.apache.struts.action.DynaActionForm;

import services.ContactenosService;
import services.EmailService;
import bean.BeanContactenos;
import bean.BeanEmail;


public class ContactenosAction extends Action{
	ContactenosService conservice=new ContactenosService();
	EmailService emaservice=new EmailService();
	
	public ActionForward execute(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {
	
	    	String forwardName = "error";
			String parametro = request.getParameter("event");
			System.out.println("parametro recibido"+parametro);
			
			if (parametro.equals("conSearch")) {
				forwardName =conSearch(mapping, form, request, response);
				System.out.println("Enviando al action :"+forwardName);
			}
			if (parametro.equals("conNew")) {
				forwardName =conNew(mapping, form, request, response);
				System.out.println("Enviando al action :"+forwardName);
			}
			if (parametro.equals("conSave")) {
				forwardName =conSave(mapping, form, request, response);
				System.out.println("Enviando al action :"+forwardName);
			}
			
			return mapping.findForward(forwardName);
	}

	private String conSave(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response) {
		DynaActionForm contactenosForm = (DynaActionForm)form;
		String forwardName="";
		try{
		BeanContactenos conbean=conSave(contactenosForm, request);
		System.out.println("entro aqui primero ");
		
		if(conbean.getIntconId() == 0){
			ActionMessages mensaje = new ActionMessages();
			mensaje.add("mensaje", new ActionMessage("contactenosForm.conNew.error.error"));
			saveErrors(request, mensaje);
			contactenosForm.set("flagConfirm","ERROR");
			contactenosForm.set("strconNombreMenu", conbean.getStrconNombresCompletos());
			forwardName = "conNew";	
			
		}else{
			if(contactenosForm.getString("saveandadd").equals("saveandadd")){
			ActionMessages mensaje = new ActionMessages();
			mensaje.add("mensaje", new ActionMessage("contactenosForm.conNew.ok.ok"));
			saveErrors(request, mensaje);
			contactenosForm.set("flagConfirm","OK");
			limpiar(contactenosForm);
			forwardName = "conNew";
			}else if(contactenosForm.getString("saveandadd").equals("save")){
			contactenosForm.set("flagConfirm","OKINSERT");
			emaSend(contactenosForm);
			limpiar(contactenosForm);
			forwardName = "conNew";
			}
				
		}	
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			System.out.println("cual es el error :"+e);
			forwardName = "error";
		}
		return forwardName;
	}
    
	private void emaSend(DynaActionForm form){
		System.out.println("Entro a enviar correo");
		// Configuración de parámetros 
		Properties propiedades = new Properties();
		/*
		propiedades.setProperty("mail.smtp.host", "127.0.0.1");    
		propiedades.setProperty("mail.smtp.port", "25"); 
		*/
		//Configurando parametros para el gmail
		
		propiedades.setProperty("mail.smtp.host", "mail.drokhealthcare.com");
		propiedades.setProperty("mail.smtp.starttls.enable", "false");
		propiedades.setProperty("mail.smtp.port", "26");
		propiedades.setProperty("mail.smtp.user", "contactenos@drokhealthcare.com");
		propiedades.setProperty("mail.smtp.auth", "true");  
			    			
		Session mailSession = Session.getDefaultInstance(propiedades, null); 
		mailSession.setDebug(true);
		
		// Autentificación y crea un mensaje nuevo 
		MimeMessage msg = new MimeMessage(mailSession); 
		try {
			BeanEmail bean=new BeanEmail();
			bean.setStremaTipo("CONTACTENOS");
			bean.setStremaLocale("es_PE");
			
			BeanEmail emabean=emaservice.emaSearchXTipo(bean);
			
			msg.setFrom(new InternetAddress("contactenos@drokhealthcare.com"));
			msg.setRecipients(Message.RecipientType.TO, form.getString("strconCorreo")); //to 
		    //msg.setRecipients(Message.RecipientType.CC, "harold.diehl@hotmail.com"); //cc
		    msg.setRecipients(Message.RecipientType.BCC, "diehl.rojas@yahoo.com"); //bcc
			msg.setSentDate(new Date()); 
			msg.setSubject("CONTACTENOS"); 

			String valor1=emabean.getStremaPrimera()+form.getString("strconNombresCompletos").toUpperCase()+emabean.getStremaSegunda();
			
			msg.setContent(valor1, "text/html");
			// La Clase Transport envía el correo send() es una 
			//forma rapìda de emviar correos
			//Transport.send(msg); 
	        
			//Enviando el mensaje para el gmail
			
			Transport t = mailSession.getTransport("smtp"); // session.getTransport("smtp");
			//t.connect("gmail.com", "hrcontactenos", "pachacutec2809");
			t.connect("mail.drokhealthcare.com","contactenos@drokhealthcare.com","$v$y$2014");
			t.sendMessage(msg,msg.getAllRecipients());
			t.close();
		} catch (AddressException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (MessagingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} 
		
	
	}	
			
	private BeanContactenos conSave(DynaActionForm form,
			HttpServletRequest request) throws Exception {
		Date dteconFechaIngreso=new Date();
	    
	
    	BeanContactenos bean = new BeanContactenos();
    	bean.setIntconId(0);
    	bean.setStrconNombresCompletos(form.getString("strconNombresCompletos"));
    	bean.setStrconCorreo(form.getString("strconCorreo"));
    	bean.setStrconComentario(form.getString("strconComentario"));
    	bean.setDteconFechaIngreso(dteconFechaIngreso);


        conservice.conInsert(bean);
       return bean;
	}

	private String conNew(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response) {
		DynaActionForm contactenosForm = (DynaActionForm)form;
		contactenosForm.set("flagConfirm","FALSE");
		String forwardName = "";
		limpiar(contactenosForm);

		try {
			
			forwardName="conNew";
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			forwardName = "error";
		}
		
		
		return forwardName;
	}

	@SuppressWarnings("rawtypes")
	private String conSearch(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response) {
        DynaActionForm contactenosForm = (DynaActionForm)form;
        String forwardName = "";

		try {
			
			ArrayList conListSearch = conservice.conSearchList();
			contactenosForm.set("conListSearch", conListSearch);
			contactenosForm.set("flagConfirm","FALSE");
			
			forwardName="conListSearch";
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			forwardName = "error";
		}
		
		
		return forwardName;
	}
	private void limpiar(DynaActionForm contactenosForm){		 
		        contactenosForm.set("strconNombresCompletos","");
				contactenosForm.set("strconCorreo","");
				contactenosForm.set("strconComentario","");

	}
}
