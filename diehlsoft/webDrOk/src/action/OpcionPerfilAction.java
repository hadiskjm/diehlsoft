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
import services.OpcionPerfilService;
import services.PerfilService;
import services.UsuarioService;
import bean.BeanEstado;
import bean.BeanOpcionPerfil;
import bean.BeanPerfil;
import bean.BeanPersona;
import bean.BeanUsuario;

public class OpcionPerfilAction extends Action{
	
	UsuarioService ususervice=new UsuarioService();
	OpcionPerfilService oppservice=new OpcionPerfilService();
	EstadoService estservice=new EstadoService();
	PerfilService pefservice=new PerfilService();
	public ActionForward execute(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {
	
	    	String forwardName = "error";
			String parametro = request.getParameter("event");
			System.out.println("parametro recibido"+parametro);

			if (parametro.equals("opcionPerfilSearch")) {
				forwardName =opcionPerfilSearch(mapping, form, request, response);
				System.out.println("Enviando al action :"+forwardName);
			}
			if (parametro.equals("oppSearch")) {
				forwardName =oppSearch(mapping, form, request, response);
				System.out.println("Enviando al action :"+forwardName);
			}
			if (parametro.equals("oppNew")) {
				forwardName =oppNew(mapping, form, request, response);
				System.out.println("Enviando al action :"+forwardName);
			}
			if (parametro.equals("save")) {
				forwardName =oppInsert(mapping, form, request, response);
				System.out.println("Enviando al action :"+forwardName);
			}
			return mapping.findForward(forwardName);
	}
	private String oppInsert(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response) throws Exception {
		DynaActionForm opcionPerfilForm = (DynaActionForm)form;
		BeanOpcionPerfil oppbean=oppSave(opcionPerfilForm, request);
		System.out.println("entro aqui en oppInsert");
		String forwardName="";
		if(oppbean.getIntoppId() == 0){
			ActionMessages mensaje = new ActionMessages();
			mensaje.add("mensaje", new ActionMessage("opcionPerfilForm.opcionPerfilNew.error.error"));
			saveErrors(request, mensaje);
			opcionPerfilForm.set("flagConfirm","ERROR");
			opcionPerfilForm.set("stroppDescripcion", oppbean.getStroppDescripcion());
			forwardName = "oppNew";	
			
		}else{
			if(opcionPerfilForm.getString("saveandadd").equals("saveandadd")){	
			ActionMessages mensaje = new ActionMessages();
			mensaje.add("mensaje", new ActionMessage("opcionPerfilForm.opcionPerfilNew.ok.ok"));
			saveErrors(request, mensaje);
			opcionPerfilForm.set("flagConfirm","OK");
			limpiar(opcionPerfilForm);
			forwardName = "oppNew";
			}else if(opcionPerfilForm.getString("saveandadd").equals("save")){
			limpiar(opcionPerfilForm);
			opcionPerfilForm.set("flagConfirm","OKOK");
			forwardName = "opcionPerfilSearch";
			}
				
		}	
		return forwardName;
	}
	private BeanOpcionPerfil oppSave(DynaActionForm form,HttpServletRequest request) throws Exception {
	    Date dtepefFechaIngreso=new Date();
	    Date dtepefFechaUpdate=new Date();
	    BeanPersona perbean=(BeanPersona)request.getSession().getAttribute("beanPersona");
	    BeanUsuario usubean=ususervice.usuBuscarUserXId(perbean.getIntusuId());
	    
    	BeanOpcionPerfil bean = new BeanOpcionPerfil();
    	bean.setIntoppId(0);
    	bean.setStroppDescripcion(form.getString("stroppDescripcion"));
    	bean.setDteoppFechaIngreso(dtepefFechaIngreso);
    	bean.setDteoppFechaUpdate(dtepefFechaUpdate);
    	bean.setStroppUserIngreso(usubean.getStrusuUserDesc());
    	bean.setStroppUserUpdate(usubean.getStrusuUserDesc());
    	bean.setStroppEstado(form.getString("stroppEstado"));
    	bean.setIntpefId((int) form.get("intpefId"));
    	bean.setStroppLocale(form.getString("stroppLocale"));

        oppservice.oppInsert(bean);
       return bean;
}
	
	private String oppNew(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response) throws Exception {
		DynaActionForm opcionPerfilForm = (DynaActionForm)form;
		opcionPerfilForm.set("flagConfirm","FALSE");
		
		BeanPersona perbean=(BeanPersona)request.getSession().getAttribute("beanPersona");
		
		BeanPerfil bean=new BeanPerfil();
		bean.setStrpefDescripcion("%%");
		bean.setStrpefEstado(perbean.getStrperEstado());
		bean.setStrpefLocale(perbean.getStrperLocale());
		
		ArrayList<?> pefSearchList=pefservice.pefSearchList(bean);
		opcionPerfilForm.set("pefSearchList", pefSearchList);
		return "oppNew";
	}
	private String oppSearch(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response) throws Exception {
		DynaActionForm opcionPerfilForm = (DynaActionForm)form;
		
		BeanOpcionPerfil bean= new BeanOpcionPerfil();
		bean.setStroppDescripcion("%"+opcionPerfilForm.getString("stroppDescripcion")+"%");
		bean.setStroppEstado(opcionPerfilForm.getString("stroppEstado")+"%");
		bean.setStroppLocale(opcionPerfilForm.getString("stroppLocale"));
		
		@SuppressWarnings("rawtypes")
		ArrayList oppSearchList=oppservice.oppSearchList(bean);
		
		opcionPerfilForm.set("oppSearchList", oppSearchList);
		opcionPerfilForm.set("flagConfirm", "FALSE");
		
		return "oppSearchList";
	}
	@SuppressWarnings("rawtypes")
	private String opcionPerfilSearch(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response) throws Exception {
		DynaActionForm opcionPerfilForm = (DynaActionForm)form;
		
		BeanPersona perbean=(BeanPersona)request.getSession().getAttribute("beanPersona");
		BeanEstado  estbean= new BeanEstado();
		estbean.setStrestLocale(perbean.getStrperLocale());
		estbean.setStrestParaModulo("opcionperfil");
		
		ArrayList estModuloOpp=estservice.allEstadoModulo(estbean);
		opcionPerfilForm.set("estModuloOpp",estModuloOpp);	

		BeanOpcionPerfil beanOpp=new BeanOpcionPerfil();
		beanOpp.setStroppDescripcion("%%");
		beanOpp.setStroppEstado("%%");
		beanOpp.setStroppLocale(perbean.getStrperLocale());
		
		ArrayList oppSearchList=oppservice.oppSearchList(beanOpp);
		opcionPerfilForm.set("stroppLocale", perbean.getStrperLocale());
		opcionPerfilForm.set("oppSearchList", oppSearchList);
		opcionPerfilForm.set("flagConfirm","FALSE");
		
		return "estModuloOpp";
	}
	private void limpiar(DynaActionForm opcionPerfilForm){		 
		opcionPerfilForm.set("stroppDescripcion","");

	}
}
