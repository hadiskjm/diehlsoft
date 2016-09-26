package action;

import java.io.BufferedOutputStream;
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
import org.apache.struts.upload.FormFile;

import services.EmailService;
import services.TrabajaNosotrosService;
import bean.BeanEmail;
import bean.BeanTrabajaNosotros;


public class TrabajaNosotrosAction extends Action{
	TrabajaNosotrosService tcnservice=new TrabajaNosotrosService();
	EmailService emaservice=new EmailService();
	
	public ActionForward execute(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {
	
	    	String forwardName = "error";
			String parametro = request.getParameter("event");
			System.out.println("parametro recibido"+parametro);
			
			if (parametro.equals("tcnSearch")) {
				forwardName =tcnSearch(mapping, form, request, response);
				System.out.println("Enviando al action :"+forwardName);
			}
			if (parametro.equals("tcnNew")) {
				forwardName =tcnNew(mapping, form, request, response);
				System.out.println("Enviando al action :"+forwardName);
			}
			if (parametro.equals("tcnSave")) {
				forwardName =tcnSave(mapping, form, request, response);
				System.out.println("Enviando al action :"+forwardName);
			}
			if (parametro.equals("tcnView")) {
				forwardName =tcnView(mapping, form, request, response);
				System.out.println("Enviando al action :"+forwardName);
			}
			if (parametro.equals("homeCorp")) {
				forwardName =homeCorp(mapping, form, request, response);
				System.out.println("Enviando al action :"+forwardName);
			}
			
			return mapping.findForward(forwardName);
	}
	private String homeCorp(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		return "homeCorp";
	}
	private String tcnView(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response) throws Exception {
		DynaActionForm trabajanosotrosForm = (DynaActionForm)form;
		
		Integer p_inttcnId=(Integer) trabajanosotrosForm.get("inttcnId");
		
		BeanTrabajaNosotros tcnbean=tcnservice.tcnSearchxid(p_inttcnId);
		//byte[] buffer = new byte[tcnbean.getLbltcnCurriculum().length];
	        //below is the different part
              System.out.println("valor :"+tcnbean.getStrtcnExtencion());
			
		    if(tcnbean.getStrtcnExtencion().equals("pdf")){
		       response.setContentType("application/pdf");
		       response.addHeader("Content-Disposition", "filename="+tcnbean.getStrtcnApellidos() );
		    }
		    
		    else if(tcnbean.getStrtcnExtencion().equals("docx") || tcnbean.getStrtcnExtencion().equals("doc")){
		       response.setContentType("application/vnd.ms-word");
		       response.addHeader("Content-Disposition", "filename="+tcnbean.getStrtcnApellidos() );
		    }

		    BufferedOutputStream fos1=null;
		    try {
		    	   	 if(fos1==null){
			    	 fos1= new BufferedOutputStream(response.getOutputStream());
			        fos1.write(tcnbean.getLbltcnCurriculum());
			        fos1.flush();
			        fos1.close();
			        fos1=null;
		    	   	 }
			       
				} catch (Exception e) {
					System.out.println("error de archivo :"+e.getMessage());
					
				}
		    
		    
		return "tcnVisor";
	}
	private String tcnSave(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response) {
		DynaActionForm trabajanosotrosForm = (DynaActionForm)form;
		String forwardName="";
		try{
		BeanTrabajaNosotros tcnbean=tcnSave(trabajanosotrosForm, request);
		System.out.println("entro aqui primero ");
		
		if(tcnbean.getInttcnId() == 0){
			ActionMessages mensaje = new ActionMessages();
			mensaje.add("mensaje", new ActionMessage("trabajanosotrosForm.tcnNew.error.error"));
			saveErrors(request, mensaje);
			trabajanosotrosForm.set("flagConfirm","ERROR");
			trabajanosotrosForm.set("strtcnCorreo", tcnbean.getStrtcnCorreo());
			forwardName = "tcnNew";	
			
		}else{
			if(trabajanosotrosForm.getString("saveandadd").equals("saveandadd")){
			ActionMessages mensaje = new ActionMessages();
			mensaje.add("mensaje", new ActionMessage("trabajanosotrosForm.tcnNew.ok.ok"));
			saveErrors(request, mensaje);
			trabajanosotrosForm.set("flagConfirm","OK");
			limpiar(trabajanosotrosForm);
			forwardName = "tcnNew";
			}else if(trabajanosotrosForm.getString("saveandadd").equals("save")){
			trabajanosotrosForm.set("flagConfirm","OKINSERT");
			emaSend(trabajanosotrosForm);
			limpiar(trabajanosotrosForm);
			forwardName = "tcnNew";
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
		propiedades.setProperty("mail.smtp.user", "trabajaconnosotros@drokhealthcare.com");
		propiedades.setProperty("mail.smtp.auth", "true");
		
			    			
		Session mailSession = Session.getDefaultInstance(propiedades, null); 
		mailSession.setDebug(true);
		
		// Autentificación y crea un mensaje nuevo 
		MimeMessage msg = new MimeMessage(mailSession); 
		try {
			BeanEmail bean=new BeanEmail();
			bean.setStremaTipo("TCNOSOTROS");
			bean.setStremaLocale("es_PE");
			
			BeanEmail emabean=emaservice.emaSearchXTipo(bean);
			
			msg.setFrom(new InternetAddress("trabajaconnosotros@drokhealthcare.com"));
			msg.setRecipients(Message.RecipientType.TO, form.getString("strtcnCorreo")); //to 
		    //msg.setRecipients(Message.RecipientType.CC, "harold.diehl@hotmail.com"); //cc
		    //msg.setRecipients(Message.RecipientType.BCC, "diehl.rojas@yahoo.com"); //bcc
			msg.setSentDate(new Date()); 
			msg.setSubject("TRABAJA CON NOSOTROS"); 

			String valor1=emabean.getStremaPrimera()+form.getString("strtcnNombres").toUpperCase()+" "+form.getString("strtcnApellidos").toUpperCase()+emabean.getStremaSegunda();
			
			msg.setContent(valor1, "text/html");
			// La Clase Transport envía el correo send() es una 
			//forma rapìda de emviar correos
			//Transport.send(msg); 
	        
			//Enviando el mensaje para el gmail
			
			Transport t = mailSession.getTransport("smtp"); // session.getTransport("smtp");
			//t.tcnnect("gmail.com", "hrtcntactenos", "pachacutec2809");
			t.connect("mail.drokhealthcare.com","trabajaconnosotros@drokhealthcare.com","$v$y$2014");
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
			
	private BeanTrabajaNosotros tcnSave(DynaActionForm form,
			HttpServletRequest request) throws Exception {
		Date dtetcnFechaIngreso=new Date();
	    String url="";
		String[] extencion={};
		 byte[]  v_blob=null;
		   
			try
			{   
				FormFile fichero =(FormFile) form.get("lbltcnCurriculum");
             v_blob=fichero.getFileData();
             url=fichero.getFileName().toString(); 
             System.out.println("cadena url :"+url);
             extencion=url.split("\\.");
             System.out.println("cadena ext :"+extencion);
           
			}finally{
				
			}
			
    	BeanTrabajaNosotros bean = new BeanTrabajaNosotros();
    	bean.setInttcnId(0);
    	bean.setStrtcnNombres(form.getString("strtcnNombres"));
    	bean.setStrtcnApellidos(form.getString("strtcnApellidos")+"."+extencion[1].toString());
    	bean.setInttcnEdad((Integer)form.get("inttcnEdad"));
    	bean.setStrtcnDireccion(form.getString("strtcnDireccion"));
    	bean.setStrtcnCorreo(form.getString("strtcnCorreo"));
    	bean.setLbltcnCurriculum(v_blob);
    	bean.setDtetcnFechaIngreso(dtetcnFechaIngreso);


        tcnservice.tcnInsert(bean);
       return bean;
	}

	private String tcnNew(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response) {
		DynaActionForm trabajanosotrosForm = (DynaActionForm)form;
		trabajanosotrosForm.set("flagConfirm","FALSE");
		String forwardName = "";
		limpiar(trabajanosotrosForm);

		try {
			
			forwardName="tcnNew";
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			forwardName = "error";
		}
		
		
		return forwardName;
	}

	@SuppressWarnings("rawtypes")
	private String tcnSearch(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response) {
        DynaActionForm trabajanosotrosForm = (DynaActionForm)form;
        String forwardName = "";

		try {
			
			ArrayList tcnListSearch = tcnservice.tcnSearchList();
			trabajanosotrosForm.set("tcnListSearch", tcnListSearch);
			trabajanosotrosForm.set("flagConfirm","FALSE");
			
			forwardName="tcnListSearch";
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			forwardName = "error";
		}
		
		
		return forwardName;
	}
	private void limpiar(DynaActionForm trabajanosotrosForm){		 
		        trabajanosotrosForm.set("strtcnNombres","");
				trabajanosotrosForm.set("strtcnApellidos","");
				trabajanosotrosForm.set("strtcnDireccion","");
				trabajanosotrosForm.set("strtcnCorreo","");
				trabajanosotrosForm.set("inttcnEdad",null);

	}
}
