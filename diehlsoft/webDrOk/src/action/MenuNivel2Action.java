package action;

import java.util.ArrayList;
import java.util.Date;

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

import services.EstadoService;
import services.MenuNivel1Service;
import services.MenuNivel2Service;
import bean.BeanEstado;
import bean.BeanMenuNivel1;
import bean.BeanMenuNivel2;

public class MenuNivel2Action extends Action{
	MenuNivel1Service mecservice=new MenuNivel1Service();
	MenuNivel2Service medservice=new MenuNivel2Service();
	EstadoService estservice=new EstadoService();
	
	public ActionForward execute(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {
	
	    	String forwardName = "error";
			String parametro = request.getParameter("event");
			System.out.println("parametro recibido"+parametro);
			
			if (parametro.equals("medSearch")) {
				forwardName =medSearch(mapping, form, request, response);
				System.out.println("Enviando al action :"+forwardName);
			}
			if (parametro.equals("medNew")) {
				forwardName =medNew(mapping, form, request, response);
				System.out.println("Enviando al action :"+forwardName);
			}
			if (parametro.equals("medSave")) {
				forwardName =medSave(mapping, form, request, response);
				System.out.println("Enviando al action :"+forwardName);
			}
			if (parametro.equals("medUpdate")) {
				forwardName =medUpdate(mapping, form, request, response);
				System.out.println("Enviando al action :"+forwardName);
			}
			if (parametro.equals("medsaveUpdate")) {
				forwardName =medsaveUpdate(mapping, form, request, response);
				System.out.println("Enviando al action :"+forwardName);
			}
			if (parametro.equals("medViewCorp")) {
				forwardName =medViewCorp(mapping, form, request, response);
				System.out.println("Enviando al action :"+forwardName);
			}
			return mapping.findForward(forwardName);
	}

	private String medViewCorp(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response) {
		DynaActionForm menunivel2Form = (DynaActionForm)form;
		String forwardName="";
	    Integer p_intmedId=(Integer)menunivel2Form.get("intmedId");
	    
	    try {
			BeanMenuNivel2 medbean=medservice.medSearchxid(p_intmedId);

			if (medbean != null){
				menunivel2Form.set("strmedMenu",medbean.getStrmedMenu());
				menunivel2Form.set("strmedLocale",medbean.getStrmedLocale());
				menunivel2Form.set("strmedTipoSistema",medbean.getStrmedTipoSistema());
				menunivel2Form.set("strmedNombreImagen",medbean.getStrmedNombreImagen());
				menunivel2Form.set("strmedNombrePdf",medbean.getStrmedNombrePdf());
				menunivel2Form.set("strmedNombreMenu",medbean.getStrmedNombreMenu());
				menunivel2Form.set("strmedTwitterCard",medbean.getStrmedTwitterCard());
				menunivel2Form.set("strmedTwitterSite",medbean.getStrmedTwitterSite());
				menunivel2Form.set("strmedTwitterCreator",medbean.getStrmedTwitterCreator());
				menunivel2Form.set("strmedTwitterTitle",medbean.getStrmedTwitterTitle());
				menunivel2Form.set("strmedTwitterDescription",medbean.getStrmedTwitterDescription());
				menunivel2Form.set("strmedTwitterImage",medbean.getStrmedTwitterImage());
				menunivel2Form.set("strmedGoogleName",medbean.getStrmedGoogleName());
				menunivel2Form.set("strmedGoogleDescription",medbean.getStrmedGoogleDescription());
				menunivel2Form.set("strmedGoogleImage",medbean.getStrmedGoogleImage());
				menunivel2Form.set("strmedOgTitle",medbean.getStrmedOgTitle());
				menunivel2Form.set("strmedOgType",medbean.getStrmedOgType());
				menunivel2Form.set("strmedOgUrl",medbean.getStrmedOgUrl());
				menunivel2Form.set("strmedOgImage",medbean.getStrmedOgImage());
				menunivel2Form.set("strmedOgDescription",medbean.getStrmedOgDescription());
				menunivel2Form.set("strmedOgSite_name",medbean.getStrmedOgSite_name());
				menunivel2Form.set("strmedMuestraContenido",medbean.getStrmedMuestraContenido());
				menunivel2Form.set("intmedNivelUsuario",medbean.getIntmedNivelUsuario());
				menunivel2Form.set("strmedEstado",medbean.getStrmedEstado());
				menunivel2Form.set("strmedEvento",medbean.getStrmedEvento());
				menunivel2Form.set("intmedPosicion",medbean.getIntmedPosicion());
			    
				HttpSession sessionMecbean = request.getSession(true);
				sessionMecbean.setAttribute("medbean",medbean);
				
				forwardName="medViewCorp";
			}else{
				forwardName="medListSearch";
				limpiar(menunivel2Form);
			}
			
	    } catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			forwardName="error";
		}
	 
		return forwardName;
	}

	private String medsaveUpdate(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response) {
		DynaActionForm menunivel2Form = (DynaActionForm)form;
		String forwardName="";
		
		BeanMenuNivel2 medbean;
		try {
			medbean = medSaveUpdate(menunivel2Form, request);
				if(medbean.getIntmedMensaje()==1){
					limpiar(menunivel2Form);
					menunivel2Form.set("flagConfirm","OKUPDATE");
					forwardName="medListSearch";
				}else if(medbean.getIntmedMensaje()==2){
					ActionMessages mensaje = new ActionMessages();
					mensaje.add("mensaje", new ActionMessage("menunivel2Form.medUpdate.error.error"));
					saveErrors(request, mensaje);
					menunivel2Form.set("flagConfirm","ERROR");
					menunivel2Form.set("strmedNombreMenu", medbean.getStrmedNombreMenu());
					forwardName = "medUpdate";
					}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			forwardName = "error";
		}
		return forwardName;
	}

	private BeanMenuNivel2 medSaveUpdate(DynaActionForm form,
			HttpServletRequest request) throws Exception {
	    Date dtemedFechaUpdate=new Date();
	    /*
	    BeanPersona perbean=(BeanPersona)request.getSession().getAttribute("beanPersona");
	    BeanUsuario usubean=ususervice.usuBuscarUserXId(perbean.getIntusuId());
		*/
	
    	BeanMenuNivel2 bean = new BeanMenuNivel2();
    	bean.setIntmedId((Integer) form.get("intmedId"));
    	bean.setStrmedMenu(form.getString("strmedMenu"));;
    	bean.setDtemedFechaUpdate(dtemedFechaUpdate);
    	bean.setStrmedUserUpdate("hrojas");
    	bean.setStrmedLocale(form.getString("strmedLocale"));
    	bean.setStrmedTipoSistema(form.getString("strmedTipoSistema"));
    	bean.setStrmedNombreImagen(form.getString("strmedNombreImagen"));
    	bean.setStrmedNombrePdf(form.getString("strmedNombrePdf"));
    	bean.setStrmedNombreMenu(form.getString("strmedNombreMenu"));
    	bean.setStrmedTwitterCard(form.getString("strmedTwitterCard"));
    	bean.setStrmedTwitterSite(form.getString("strmedTwitterSite"));
    	bean.setStrmedTwitterCreator(form.getString("strmedTwitterCreator"));
    	bean.setStrmedTwitterTitle(form.getString("strmedTwitterTitle"));
    	bean.setStrmedTwitterDescription(form.getString("strmedTwitterDescription"));
    	bean.setStrmedTwitterImage(form.getString("strmedTwitterImage"));
    	bean.setStrmedGoogleName(form.getString("strmedGoogleName"));
    	bean.setStrmedGoogleDescription(form.getString("strmedGoogleDescription"));
    	bean.setStrmedGoogleImage(form.getString("strmedGoogleImage"));
    	bean.setStrmedOgTitle(form.getString("strmedOgTitle"));
    	bean.setStrmedOgType(form.getString("strmedOgType"));
    	bean.setStrmedOgUrl(form.getString("strmedOgUrl"));
    	bean.setStrmedOgImage(form.getString("strmedOgImage"));
    	bean.setStrmedOgDescription(form.getString("strmedOgDescription"));
    	bean.setStrmedOgSite_name(form.getString("strmedOgSite_name"));
    	bean.setStrmedMuestraContenido(form.getString("strmedMuestraContenido"));
    	bean.setIntmedNivelUsuario((Integer)form.get("intmedNivelUsuario"));
       	bean.setStrmedEstado(form.getString("strmedEstado"));
       	bean.setStrmedEvento(form.getString("strmedEvento"));
       	bean.setIntmecId((Integer)form.get("intmecId"));
       	bean.setIntmedPosicion((Integer)form.get("intmedPosicion"));
       	bean.setIntmedMensaje(0);

        medservice.medUpdate(bean);
       return bean;
	}

	@SuppressWarnings("rawtypes")
	private String medUpdate(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response) {
		DynaActionForm menunivel2Form = (DynaActionForm)form;
		String forwardName="";
		String p_strmecLocale="es_PE";
	    Integer p_intmedId=(Integer)menunivel2Form.get("intmedId");
	    
	    BeanEstado  estbeanmenunivel2= new BeanEstado();
		estbeanmenunivel2.setStrestLocale("es_PE");//CAMBIAR ESTE DATO SETEADO
		estbeanmenunivel2.setStrestParaModulo("menunivel2");
		
		BeanEstado  estbeantiposistema= new BeanEstado();
		estbeantiposistema.setStrestLocale("es_PE");//CAMBIAR ESTE DATO SETEADO
		estbeantiposistema.setStrestParaModulo("tiposistema");
		
		BeanEstado  estbeanmostrarcontenido= new BeanEstado();
		estbeanmostrarcontenido.setStrestLocale("es_PE");//CAMBIAR ESTE DATO SETEADO
		estbeanmostrarcontenido.setStrestParaModulo("mostrarcontenido");
		
		BeanMenuNivel1 mec1bean=new BeanMenuNivel1();
		mec1bean.setStrmecLocale(p_strmecLocale);
		mec1bean.setIntmecNivelUsuario(3);
		
	    try {
			BeanMenuNivel2 medbean=medservice.medSearchxid(p_intmedId);
		    
			ArrayList medListMenuNivel2=estservice.allEstadoModulo(estbeanmenunivel2);
			menunivel2Form.set("medListMenuNivel2",medListMenuNivel2);	

			ArrayList medListTipoSistema=estservice.allEstadoModulo(estbeantiposistema);
			menunivel2Form.set("medListTipoSistema",medListTipoSistema);	
			
			ArrayList medListMostrarContenido=estservice.allEstadoModulo(estbeanmostrarcontenido);
			menunivel2Form.set("medListMostrarContenido",medListMostrarContenido);	
			
			ArrayList medListMenuNivel1=mecservice.mecList(mec1bean);
			menunivel2Form.set("medListMenuNivel1",medListMenuNivel1);	
			
			
			if (medbean != null){
				menunivel2Form.set("strmedMenu",medbean.getStrmedMenu());
				menunivel2Form.set("strmedLocale",medbean.getStrmedLocale());
				menunivel2Form.set("strmedTipoSistema",medbean.getStrmedTipoSistema());
				menunivel2Form.set("strmedNombreImagen",medbean.getStrmedNombreImagen());
				menunivel2Form.set("strmedNombrePdf",medbean.getStrmedNombrePdf());
				menunivel2Form.set("strmedNombreMenu",medbean.getStrmedNombreMenu());
				menunivel2Form.set("strmedTwitterCard",medbean.getStrmedTwitterCard());
				menunivel2Form.set("strmedTwitterSite",medbean.getStrmedTwitterSite());
				menunivel2Form.set("strmedTwitterCreator",medbean.getStrmedTwitterCreator());
				menunivel2Form.set("strmedTwitterTitle",medbean.getStrmedTwitterTitle());
				menunivel2Form.set("strmedTwitterDescription",medbean.getStrmedTwitterDescription());
				menunivel2Form.set("strmedTwitterImage",medbean.getStrmedTwitterImage());
				menunivel2Form.set("strmedGoogleName",medbean.getStrmedGoogleName());
				menunivel2Form.set("strmedGoogleDescription",medbean.getStrmedGoogleDescription());
				menunivel2Form.set("strmedGoogleImage",medbean.getStrmedGoogleImage());
				menunivel2Form.set("strmedOgTitle",medbean.getStrmedOgTitle());
				menunivel2Form.set("strmedOgType",medbean.getStrmedOgType());
				menunivel2Form.set("strmedOgUrl",medbean.getStrmedOgUrl());
				menunivel2Form.set("strmedOgImage",medbean.getStrmedOgImage());
				menunivel2Form.set("strmedOgDescription",medbean.getStrmedOgDescription());
				menunivel2Form.set("strmedOgSite_name",medbean.getStrmedOgSite_name());
				menunivel2Form.set("strmedMuestraContenido",medbean.getStrmedMuestraContenido());
				menunivel2Form.set("intmedNivelUsuario",medbean.getIntmedNivelUsuario());
				menunivel2Form.set("strmedEstado",medbean.getStrmedEstado());
				menunivel2Form.set("strmedEvento",medbean.getStrmedEvento());
				menunivel2Form.set("intmecId", medbean.getIntmecId());
			    menunivel2Form.set("intmedPosicion", medbean.getIntmedPosicion());
				
				forwardName="medUpdate";
			}else{
				forwardName="medListSearch";
				limpiar(menunivel2Form);
			}
			
	    } catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			forwardName="error";
		}
	 
		return forwardName;
	}

	private String medSave(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response) {
		DynaActionForm menunivel2Form = (DynaActionForm)form;
		String forwardName="";
		try{
		BeanMenuNivel2 medbean=medSave(menunivel2Form, request);
		System.out.println("entro aqui primero ");
		
		if(medbean.getIntmedId() == 0){
			ActionMessages mensaje = new ActionMessages();
			mensaje.add("mensaje", new ActionMessage("menunivel2Form.medNew.error.error"));
			saveErrors(request, mensaje);
			menunivel2Form.set("flagConfirm","ERROR");
			menunivel2Form.set("strmedNombreMenu", medbean.getStrmedNombreMenu());
			forwardName = "medNew";	
			
		}else{
			if(menunivel2Form.getString("saveandadd").equals("saveandadd")){
			ActionMessages mensaje = new ActionMessages();
			mensaje.add("mensaje", new ActionMessage("menunivel2Form.medNew.ok.ok"));
			saveErrors(request, mensaje);
			menunivel2Form.set("flagConfirm","OK");
			limpiar(menunivel2Form);
			forwardName = "medNew";
			}else if(menunivel2Form.getString("saveandadd").equals("save")){
			menunivel2Form.set("flagConfirm","OKINSERT");
			forwardName = "medListSearch";
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

	private BeanMenuNivel2 medSave(DynaActionForm form,
			HttpServletRequest request) throws Exception {
		Date dtemedFechaIngreso=new Date();
	    Date dtemedFechaUpdate=new Date();
	    /*
	    BeanPersona perbean=(BeanPersona)request.getSession().getAttribute("beanPersona");
	    BeanUsuario usubean=ususervice.usuBuscarUserXId(perbean.getIntusuId());
		*/
	
    	BeanMenuNivel2 bean = new BeanMenuNivel2();
    	bean.setIntmedId(0);
    	bean.setStrmedMenu(form.getString("strmedMenu"));;
    	bean.setDtemedFechaIngreso(dtemedFechaIngreso);
    	bean.setDtemedFechaUpdate(dtemedFechaUpdate);
    	bean.setStrmedUserIngreso("hrojas");
    	bean.setStrmedUserUpdate("hrojas");
    	bean.setStrmedLocale(form.getString("strmedLocale"));
    	bean.setStrmedTipoSistema(form.getString("strmedTipoSistema"));
    	bean.setStrmedNombreImagen(form.getString("strmedNombreImagen"));
    	bean.setStrmedNombrePdf(form.getString("strmedNombrePdf"));
    	bean.setStrmedNombreMenu(form.getString("strmedNombreMenu"));
    	bean.setStrmedTwitterCard(form.getString("strmedTwitterCard"));
    	bean.setStrmedTwitterSite(form.getString("strmedTwitterSite"));
    	bean.setStrmedTwitterCreator(form.getString("strmedTwitterCreator"));
    	bean.setStrmedTwitterTitle(form.getString("strmedTwitterTitle"));
    	bean.setStrmedTwitterDescription(form.getString("strmedTwitterDescription"));
    	bean.setStrmedTwitterImage(form.getString("strmedTwitterImage"));
    	bean.setStrmedGoogleName(form.getString("strmedGoogleName"));
    	bean.setStrmedGoogleDescription(form.getString("strmedGoogleDescription"));
    	bean.setStrmedGoogleImage(form.getString("strmedGoogleImage"));
    	bean.setStrmedOgTitle(form.getString("strmedOgTitle"));
    	bean.setStrmedOgType(form.getString("strmedOgType"));
    	bean.setStrmedOgUrl(form.getString("strmedOgUrl"));
    	bean.setStrmedOgImage(form.getString("strmedOgImage"));
    	bean.setStrmedOgDescription(form.getString("strmedOgDescription"));
    	bean.setStrmedOgSite_name(form.getString("strmedOgSite_name"));
    	bean.setStrmedMuestraContenido(form.getString("strmedMuestraContenido"));
    	bean.setIntmedNivelUsuario((Integer)form.get("intmedNivelUsuario"));
       	bean.setStrmedEstado(form.getString("strmedEstado"));
       	bean.setStrmedEvento(form.getString("strmedEvento"));
       	bean.setIntmecId((Integer)form.get("intmecId"));
        bean.setIntmedPosicion((Integer) form.get("intmedPosicion"));
       	
        medservice.medInsert(bean);
       return bean;
	}

	@SuppressWarnings("rawtypes")
	private String medNew(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response) {
		DynaActionForm menunivel2Form = (DynaActionForm)form;
		menunivel2Form.set("flagConfirm","FALSE");
		String forwardName = "";
		String p_strmecLocale="es_PE";
		limpiar(menunivel2Form);
		
		BeanEstado  estbeanmenunivel2= new BeanEstado();
		estbeanmenunivel2.setStrestLocale("es_PE");//CAMBIAR ESTE DATO SETEADO
		estbeanmenunivel2.setStrestParaModulo("menunivel2");
		
		BeanEstado  estbeantiposistema= new BeanEstado();
		estbeantiposistema.setStrestLocale("es_PE");//CAMBIAR ESTE DATO SETEADO
		estbeantiposistema.setStrestParaModulo("tiposistema");
		
		BeanEstado  estbeanmostrarcontenido= new BeanEstado();
		estbeanmostrarcontenido.setStrestLocale("es_PE");//CAMBIAR ESTE DATO SETEADO
		estbeanmostrarcontenido.setStrestParaModulo("mostrarcontenido");
		
		BeanMenuNivel1 mec1bean=new BeanMenuNivel1();
		mec1bean.setStrmecLocale(p_strmecLocale);
		mec1bean.setIntmecNivelUsuario(3);
		
		try {
			ArrayList medListMenuNivel1=mecservice.mecList(mec1bean);
			menunivel2Form.set("medListMenuNivel1",medListMenuNivel1);	
			
			ArrayList medListMenuNivel2=estservice.allEstadoModulo(estbeanmenunivel2);
			menunivel2Form.set("medListMenuNivel2",medListMenuNivel2);	

			ArrayList medListTipoSistema=estservice.allEstadoModulo(estbeantiposistema);
			menunivel2Form.set("medListTipoSistema",medListTipoSistema);	
			
			ArrayList medListMostrarContenido=estservice.allEstadoModulo(estbeanmostrarcontenido);
			menunivel2Form.set("medListMostrarContenido",medListMostrarContenido);	
			
			forwardName="medNew";
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			forwardName = "error";
		}
		
		
		return forwardName;
	}

	@SuppressWarnings("rawtypes")
	private String medSearch(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response) {
        DynaActionForm menunivel2Form = (DynaActionForm)form;
        String forwardName = "";
        
		BeanMenuNivel2 medbean=new BeanMenuNivel2();
		medbean.setStrmedNombreMenu("%%");
		medbean.setStrmedLocale("es_PE");

		try {
			
			ArrayList medListSearch = medservice.medSearchList(medbean);
			menunivel2Form.set("medListSearch", medListSearch);
			System.out.println("Tamaño :"+medListSearch.size());
			menunivel2Form.set("flagConfirm","FALSE");
			
			forwardName="medListSearch";
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			forwardName = "error";
		}
		
		
		return forwardName;
	}
	private void limpiar(DynaActionForm menunivel2Form){		 
		        menunivel2Form.set("strmedMenu","");
				menunivel2Form.set("strmedLocale","");
				menunivel2Form.set("strmedTipoSistema","");
				menunivel2Form.set("strmedNombreImagen","");
				menunivel2Form.set("strmedNombrePdf","");
				menunivel2Form.set("strmedNombreMenu","");
				menunivel2Form.set("strmedTwitterCard","");
				menunivel2Form.set("strmedTwitterSite","");
				menunivel2Form.set("strmedTwitterCreator","");
				menunivel2Form.set("strmedTwitterTitle","");
				menunivel2Form.set("strmedTwitterDescription","");
				menunivel2Form.set("strmedTwitterImage","");
				menunivel2Form.set("strmedGoogleName","");
				menunivel2Form.set("strmedGoogleDescription","");
				menunivel2Form.set("strmedGoogleImage","");
				menunivel2Form.set("strmedOgTitle","");
				menunivel2Form.set("strmedOgType","");
				menunivel2Form.set("strmedOgUrl","");
				menunivel2Form.set("strmedOgImage","");
				menunivel2Form.set("strmedOgDescription","");
				menunivel2Form.set("strmedOgSite_name","");
				menunivel2Form.set("strmedMuestraContenido","");
				menunivel2Form.set("intmedNivelUsuario",0);
				menunivel2Form.set("strmedEstado","");
				menunivel2Form.set("strmedEvento","");
				menunivel2Form.set("intmedPosicion", 0);
	}
}
