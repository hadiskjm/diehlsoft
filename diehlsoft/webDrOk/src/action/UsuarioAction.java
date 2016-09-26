package action;

import java.util.*;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.struts.Globals;
import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;
import org.apache.struts.action.ActionMessage;
import org.apache.struts.action.ActionMessages;
import org.apache.struts.action.DynaActionForm;

import services.PaisService;
import services.PersonaService;
import services.UsuarioService;

import bean.BeanPersona;
import bean.BeanUsuario;

public class UsuarioAction extends Action{
	//autentica	
	UsuarioService serviceu=new UsuarioService();
	PersonaService sercicep=new PersonaService();
	PaisService sercicepa=new PaisService();
	
	public ActionForward execute(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		
		System.out.println("entro a usuario action");
	     	String forwardName = "error";
			String parametro = request.getParameter("event");
			System.out.println("parametro recibido"+parametro);
			
			if (parametro.equals("changePais")) {
				forwardName =changePais(mapping, form, request, response);
				System.out.println("Enviando al action :"+forwardName);
			}
			if (parametro.equals("changeLanguage")) {
				forwardName =changeLanguage(mapping, form, request, response);
				System.out.println("Enviando al action :"+forwardName);
			}
			if (parametro.equals("autenticar")) {
				forwardName =autenticar(mapping, form, request, response);
				System.out.println("Enviando al action :"+forwardName);
			}
			return mapping.findForward(forwardName);
	}

	private String changePais(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response) throws Exception {
		DynaActionForm usuarioForm=(DynaActionForm)form;
		
		@SuppressWarnings("rawtypes")
		ArrayList listaPais=sercicepa.pisListaPais();
		usuarioForm.set("listaPais", listaPais);
		System.out.println("entro : "+listaPais);
		return "changePaisLogin";
	}

	private String changeLanguage(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response) throws Exception {
		DynaActionForm usuarioForm=(DynaActionForm)form;
		String strIdioma=(String) usuarioForm.get("strusuIdioma");
		String strIdioma1,strIdioma2;
		strIdioma1=strIdioma.substring(0,2);
		strIdioma2=strIdioma.substring(3,5);
		System.out.println("parte 1 "+strIdioma1+"parte 2 "+strIdioma2);
		request.getSession().setAttribute(Globals.LOCALE_KEY,
				new Locale(strIdioma1,strIdioma2));
		return "fLogin"; 
	}
	private String autenticar(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response) throws Exception {
		DynaActionForm usuarioForm=(DynaActionForm)form;
		String strusuUser= (String) usuarioForm.get("strusuUser");
		String strusuPassword= (String) usuarioForm.get("strusuPassword");			 	

		BeanUsuario usuario=serviceu.usuAutenticar(strusuUser, strusuPassword);

		if(usuario!=null) {
		BeanPersona beanPersona=sercicep.perObtenerxUsuarioId(usuario.getIntusuId());
		changingLanguage(mapping, usuarioForm, request, response);
		HttpSession sessionUsu = request.getSession(true);
		sessionUsu.setAttribute("beanPersona", beanPersona);
		
		
	    
		limpiarUser(usuarioForm);
		// esto envia al que se loguea
		return "success";
		}else{
			   ActionMessages mensaje = new ActionMessages();
			   mensaje.add("mensaje", new ActionMessage("usuarioForm.error.autenticar"));
			   saveErrors(request, mensaje);
			   }
		return "failure"; 
	}
	
	private void changingLanguage(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response) throws Exception {
		DynaActionForm usuarioForm=(DynaActionForm)form;
		String strIdioma=(String) usuarioForm.get("strusuIdioma");
		String strIdioma1,strIdioma2;
		strIdioma1=strIdioma.substring(0,2);
		strIdioma2=strIdioma.substring(3,5);
		request.getSession().setAttribute(Globals.LOCALE_KEY,
				new Locale(strIdioma1,strIdioma2));
	}
	
	private void limpiarUser(DynaActionForm usuarioForm){		 
		usuarioForm.set("strusuUser","");
		usuarioForm.set("strusuPassword","");

}

}
