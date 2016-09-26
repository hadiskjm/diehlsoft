package action;

import java.util.ArrayList;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;
import org.apache.struts.action.ActionMessage;
import org.apache.struts.action.ActionMessages;
import org.apache.struts.action.DynaActionForm;

import services.EstadoService;
import services.PaisService;
import services.PersonaService;
import services.UsuarioService;
import bean.BeanPersona;
import bean.BeanUsuario;

public class PersonaAction extends Action{
	
	PersonaService perservice=new PersonaService();
	PaisService pisservice=new PaisService();
	EstadoService estservice=new EstadoService();
	UsuarioService ususervice=new UsuarioService();
	
	public ActionForward execute(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {
	
	    	String forwardName = "error";
			String parametro = request.getParameter("event");
			System.out.println("parametro recibido"+parametro);
			
			if (parametro.equals("perListSearch")) {
				forwardName =perListSearch(mapping, form, request, response);
				System.out.println("Enviando al action :"+forwardName);
			}
			if (parametro.equals("perSearch")) {
				forwardName =perSearch(mapping, form, request, response);
				System.out.println("Enviando al action :"+forwardName);
			}
			if (parametro.equals("perNew")) {
				forwardName =perNew(mapping, form, request, response);
				System.out.println("Enviando al action :"+forwardName);
			}
			if (parametro.equals("perSave")) {
				forwardName =perInsert(mapping, form, request, response);
				System.out.println("Enviando al action :"+forwardName);
			}
	
			
			return mapping.findForward(forwardName);
	}

	private String perInsert(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response) {
		DynaActionForm personaForm = (DynaActionForm)form;
		String forwardName="";
		
		if((personaForm.getString("strusuPassword")).equals((personaForm.getString("strusuConfirPassword")))){
		
		try{
		BeanPersona perbean=perSave(personaForm, request);
		System.out.println("entro aqui primero ");
		if(perbean.getIntperId() == 0){
			ActionMessages mensaje = new ActionMessages();
			mensaje.add("mensaje", new ActionMessage("personaForm.personaNew.error.error"));
			saveErrors(request, mensaje);
			personaForm.set("flagConfirm","ERROR");
			personaForm.set("strperCorreo", perbean.getStrperCorreo());
			forwardName = "perNew";	
			
		}else{
			if(personaForm.getString("saveandadd").equals("saveandadd")){
			ActionMessages mensaje = new ActionMessages();
			mensaje.add("mensaje", new ActionMessage("personaForm.personaNew.ok.ok"));
			saveErrors(request, mensaje);
			personaForm.set("flagConfirm","OK");
			limpiar(personaForm);
			forwardName = "perNew";
			}else if(personaForm.getString("saveandadd").equals("save")){
			limpiar(personaForm);
			personaForm.set("flagConfirm","OKINSERT");
			forwardName = "perNew";
			}
				
		}	
		} catch (Exception e) {
			forwardName="error";
			e.printStackTrace();
		}
		}else{
			limpiar(personaForm);
			personaForm.set("flagConfirm","ERRORCLAVE");
			forwardName="perNew";
		}
		
		return forwardName;
	}

	private BeanPersona perSave(DynaActionForm form,
			HttpServletRequest request) throws Exception {
		Date dteperFechaIngreso=new Date();
	    Date dteperFechaUpdate=new Date();
	    //BeanPersona perbean=(BeanPersona)request.getSession().getAttribute("beanPersona");
	    //BeanUsuario usubean=ususervice.usuBuscarUserXId(perbean.getIntusuId());

		BeanUsuario usubean=usuSave(form);
	    
    	BeanPersona bean = new BeanPersona();
    	bean.setIntperId(0);
    	bean.setStrperNombre(form.getString("strperNombre"));;
    	bean.setStrperApellidoPaterno(form.getString("strperApellidoPaterno"));
    	bean.setStrperApellidoMaterno(form.getString("strperApellidoMaterno"));
    	bean.setStrperSexo(form.getString("strperSexo"));
    	bean.setStrperCorreo(form.getString("strperCorreo"));
    	bean.setStrperDireccion(form.getString("strperDireccion"));
    	bean.setStrperTelefono(form.getString("strperTelefono"));
    	bean.setStrperEstado("ACTIVO");
    	bean.setDteperFechaIngreso(dteperFechaIngreso);
    	bean.setDteperFechaUpdate(dteperFechaUpdate);
    	bean.setStrperUserIngreso(usubean.getStrusuUserDesc());
    	bean.setStrperUserUpdate(usubean.getStrusuUserDesc());
    	bean.setIntusuId(usubean.getIntusuId());
        bean.setStrperTheme("themeDiehl");
        bean.setStrperLocale("es_PE");
        bean.setIntpefId(1);
        bean.setIntpisId((Integer)form.get("intpisId"));
        
        if(usubean.getIntusuId()>0){
        perservice.perInsert(bean);
        }
       return bean;
	}

	private BeanUsuario usuSave(DynaActionForm form) throws Exception {
		Date dteusuFechaIngreso=new Date();
	    Date dteusuFechaUpdate=new Date();

    	BeanUsuario bean = new BeanUsuario();
	    	bean.setIntusuId(0);
	    	bean.setStrusuUser(form.getString("strusuUser"));
	    	bean.setStrusuPassword(form.getString("strusuPassword"));
	    	bean.setStrusuConfirPassword(form.getString("strusuConfirPassword"));
	    	bean.setDteusuFechaInicio(dteusuFechaIngreso);
	    	bean.setDteusuFechaFinal(dteusuFechaUpdate);
	    	bean.setStrusuEstado("ACTIVO");
	    	bean.setStrusuUserDesc(form.getString("strusuUser"));
	  	    
        ususervice.usuInsert(bean);
        
		return bean;
	}
	
	@SuppressWarnings("rawtypes")
	private String perNew(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response) {
		DynaActionForm personaForm = (DynaActionForm)form;
		
		//BeanPersona perbean=(BeanPersona)request.getSession().getAttribute("beanPersona");
		
		String forwardName="";
		
		try {
			
			ArrayList perListPais=pisservice.pisListaPais();
			System.out.println("Valor lista:"+perListPais.size());
			personaForm.set("perListPais", perListPais);
			//limpiar(personaForm);
			forwardName="perNew";
		
		} catch (Exception e) {
			forwardName="error";
			e.printStackTrace();
		}
		
		return forwardName;
	}

	@SuppressWarnings("rawtypes")
	private String perSearch(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response) throws Exception {
			DynaActionForm personaForm = (DynaActionForm)form;
		    
			BeanPersona perbean=new BeanPersona();
			perbean.setStrperNombre("%"+personaForm.getString("strperNombre")+"%");
			perbean.setStrperApellidoPaterno("%"+personaForm.getString("strperApellidoPaterno")+"%");
	
			ArrayList perListSearch=perservice.perSearchList(perbean);
			personaForm.set("perListSearch", perListSearch);
	
			personaForm.set("flagConfirm","FALSE");
			limpiar(personaForm);
			
			return "perListSearch";
	}

	@SuppressWarnings("rawtypes")
	private String perListSearch(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response) throws Exception {
		    DynaActionForm personaForm = (DynaActionForm)form;
		    limpiar(personaForm);
			BeanPersona perbean=new BeanPersona();
			perbean.setStrperNombre("%%");
			perbean.setStrperApellidoPaterno("%%");

			ArrayList perListSearch=perservice.perSearchList(perbean);
			personaForm.set("perListSearch", perListSearch);
			
			personaForm.set("flagConfirm","FALSE");
			
			return "perListSearch";
	}
	
	private void limpiar(DynaActionForm personaForm){		 
		personaForm.set("strperNombre","");
		personaForm.set("strperApellidoPaterno","");
		personaForm.set("strperApellidoMaterno","");
		personaForm.set("strperSexo","");
		personaForm.set("strperCorreo","");
		personaForm.set("strperDireccion","");
		personaForm.set("strperTelefono","");
		personaForm.set("strusuUser","");
		personaForm.set("strusuPassword","");
		personaForm.set("strusuConfirPassword","");

	}
}
