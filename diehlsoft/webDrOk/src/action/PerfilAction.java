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
import services.PerfilService;
import services.UsuarioService;
import bean.BeanEstado;
import bean.BeanPerfil;
import bean.BeanPersona;
import bean.BeanUsuario;

public class PerfilAction extends Action{
	
	UsuarioService ususervice=new UsuarioService();
	PerfilService pefservice=new PerfilService();
	EstadoService estservice=new EstadoService();
	public ActionForward execute(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {
	
	    	String forwardName = "error";
			String parametro = request.getParameter("event");
			System.out.println("parametro recibido"+parametro);
			
			if (parametro.equals("save")) {
				forwardName =perfilInsert(mapping, form, request, response);
				System.out.println("Enviando al action :"+forwardName);
			}
			if (parametro.equals("perfilSearch")) {
				forwardName =perfilSearch(mapping, form, request, response);
				System.out.println("Enviando al action :"+forwardName);
			}
			if (parametro.equals("pefSearch")) {
				forwardName =pefSearch(mapping, form, request, response);
				System.out.println("Enviando al action :"+forwardName);
			}
			if (parametro.equals("pefNew")) {
				forwardName =pefNew(mapping, form, request, response);
				System.out.println("Enviando al action :"+forwardName);
			}
			if (parametro.equals("pefUpdate")) {
				forwardName =pefUpdate(mapping, form, request, response);
				System.out.println("Enviando al action :"+forwardName);
			}
			if (parametro.equals("saveUpdate")) {
				forwardName =saveUpdate(mapping, form, request, response);
				System.out.println("Enviando al action :"+forwardName);
			}
			if (parametro.equals("pefDelete")) {
				forwardName =saveActiveInactive(mapping, form, request, response);
				System.out.println("Enviando al action :"+forwardName);
			}
			return mapping.findForward(forwardName);
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
	private String saveUpdate(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response) throws Exception {
		DynaActionForm perfilForm = (DynaActionForm)form;
		BeanPerfil pefbean=pefSaveUpdate(perfilForm, request);
		String forwardName="";
		if(pefbean.getIntpefMensaje()==1){
			limpiar(perfilForm);
			perfilForm.set("flagConfirm","OKOKOK");
			forwardName="perfilSearch";
		}else if(pefbean.getIntpefMensaje()==2){
			ActionMessages mensaje = new ActionMessages();
			mensaje.add("mensaje", new ActionMessage("perfilForm.perfilUpdate.error.error"));
			saveErrors(request, mensaje);
			perfilForm.set("flagConfirm","ERROR");
			perfilForm.set("strpefDescripcion", pefbean.getStrpefDescripcion());
			forwardName = "pefUpdate";
			}
		return forwardName;
	}
	private String pefUpdate(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response) throws Exception {
		DynaActionForm perfilForm = (DynaActionForm)form;
		Integer p_intpefId=(Integer)perfilForm.get("intpefId");
		BeanPerfil pefbean=pefservice.pefSearchxid(p_intpefId);
		String forwardName="";
		if(pefbean != null){
		perfilForm.set("intpefId", pefbean.getIntpefId());
		perfilForm.set("strpefDescripcion", pefbean.getStrpefDescripcion());
		perfilForm.set("strpefEstado", pefbean.getStrpefEstado());
		perfilForm.set("strpefLocale", pefbean.getStrpefLocale());
		
		perfilForm.set("flagConfirm","FALSE");
		
		forwardName="pefUpdate";
		}else{
			forwardName="perfilSearch";
			limpiar(perfilForm);
		}
		return forwardName;
	}
	private String pefNew(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response) {
		DynaActionForm perfilForm = (DynaActionForm)form;
		perfilForm.set("flagConfirm","FALSE");
		limpiar(perfilForm);
		return "pefNew";
	}
	@SuppressWarnings("rawtypes")
	private String pefSearch(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response) throws Exception {
		DynaActionForm perfilForm = (DynaActionForm)form;
		
		BeanPerfil bean=new BeanPerfil();
		bean.setStrpefDescripcion("%"+perfilForm.getString("strpefDescripcion")+"%");
		bean.setStrpefEstado(perfilForm.getString("strpefEstado")+"%");
		bean.setStrpefLocale(perfilForm.getString("strpefLocale"));
		
		ArrayList pefSearchList=pefservice.pefSearchList(bean);

		perfilForm.set("pefSearchList", pefSearchList);
		perfilForm.set("flagConfirm","FALSE");
		limpiar(perfilForm);
		return "pefSearchList";
	}
	@SuppressWarnings("rawtypes")
	private String perfilSearch(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response) throws Exception {
		DynaActionForm perfilForm = (DynaActionForm)form;
		
		BeanPersona perbean=(BeanPersona)request.getSession().getAttribute("beanPersona");
		BeanEstado  estbean= new BeanEstado();
		estbean.setStrestLocale(perbean.getStrperLocale());
		estbean.setStrestParaModulo("perfil");
		
		ArrayList estModuloPef=estservice.allEstadoModulo(estbean);
		perfilForm.set("estModuloPef",estModuloPef);	

		BeanPerfil beanPef=new BeanPerfil();
		beanPef.setStrpefDescripcion("%%");
		beanPef.setStrpefEstado("%%");
		beanPef.setStrpefLocale(perbean.getStrperLocale());
		
		ArrayList pefSearchList=pefservice.pefSearchList(beanPef);
		perfilForm.set("strpefLocale", perbean.getStrperLocale());
		perfilForm.set("pefSearchList", pefSearchList);
		perfilForm.set("flagConfirm","FALSE");
		
		return "estModuloPef";
	}
	private String perfilInsert(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response) throws Exception {
		DynaActionForm perfilForm = (DynaActionForm)form;
		BeanPerfil pefbean=pefSave(perfilForm, request);
		System.out.println("entro aqui primero y el bean es :"+pefbean.getIntpefId()+"---"+pefbean.getIntpefMensaje()+"---"+pefbean.getStrpefDescripcion());
		String forwardName="";
		if(pefbean.getIntpefId() == 0){
			ActionMessages mensaje = new ActionMessages();
			mensaje.add("mensaje", new ActionMessage("perfilForm.perfilMn.error.error"));
			saveErrors(request, mensaje);
			perfilForm.set("flagConfirm","ERROR");
			perfilForm.set("strpefDescripcion", pefbean.getStrpefDescripcion());
			forwardName = "pefNew";	
			
		}else{
			if(perfilForm.getString("saveandadd").equals("saveandadd")){	
			ActionMessages mensaje = new ActionMessages();
			mensaje.add("mensaje", new ActionMessage("perfilForm.perfilMn.ok.ok"));
			saveErrors(request, mensaje);
			perfilForm.set("flagConfirm","OK");
			limpiar(perfilForm);
			forwardName = "pefNew";
			}else if(perfilForm.getString("saveandadd").equals("save")){
			limpiar(perfilForm);
			perfilForm.set("flagConfirm","OKOK");
			forwardName = "perfilSearch";
			}
				
		}	
		return forwardName;
	}
	
	 private BeanPerfil pefSave(DynaActionForm form,HttpServletRequest request) throws Exception {
		    Date dtepefFechaIngreso=new Date();
		    Date dtepefFechaUpdate=new Date();
		    BeanPersona perbean=(BeanPersona)request.getSession().getAttribute("beanPersona");
		    BeanUsuario usubean=ususervice.usuBuscarUserXId(perbean.getIntusuId());
		    
	    	BeanPerfil bean = new BeanPerfil();
	    	bean.setIntpefId(0);
	    	bean.setStrpefDescripcion(form.getString("strpefDescripcion"));
	    	bean.setDtepefFechaIngreso(dtepefFechaIngreso);
	    	bean.setDtepefFechaUpdate(dtepefFechaUpdate);
	    	bean.setStrpefUserIngreso(usubean.getStrusuUserDesc());
	    	bean.setStrpefUserUpdate(usubean.getStrusuUserDesc());
	    	bean.setStrpefEstado(form.getString("strpefEstado"));
	    	bean.setStrpefLocale(form.getString("strpefLocale"));
	
	        pefservice.pefInsert(bean);
	       return bean;
	}
	 private BeanPerfil pefSaveUpdate(DynaActionForm form,HttpServletRequest request) throws Exception {
		    Date dtepefFechaUpdate=new Date();
		    BeanPersona perbean=(BeanPersona)request.getSession().getAttribute("beanPersona");
		    BeanUsuario usubean=ususervice.usuBuscarUserXId(perbean.getIntusuId());

	    	BeanPerfil bean = new BeanPerfil();
	    	bean.setIntpefId((int) form.get("intpefId"));
	    	bean.setStrpefDescripcion(form.getString("strpefDescripcion"));
	    	bean.setDtepefFechaUpdate(dtepefFechaUpdate);
	    	bean.setStrpefUserUpdate(usubean.getStrusuUserDesc());
	    	bean.setStrpefEstado(form.getString("strpefEstado"));
	    	bean.setStrpefLocale(form.getString("strpefLocale"));
	    	bean.setIntpefMensaje(0);
	
	       pefservice.pefUpdate(bean);
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
	 private void limpiar(DynaActionForm perfilForm){		 
		 perfilForm.set("strpefDescripcion","");

	}

	
}
