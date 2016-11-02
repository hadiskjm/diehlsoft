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
import services.MenuNivel3Service;
import bean.BeanEstado;
import bean.BeanMenuNivel1;
import bean.BeanMenuNivel2;
import bean.BeanMenuNivel3;

public class MenuNivel3Action extends Action{
	MenuNivel1Service mecservice=new MenuNivel1Service();
	MenuNivel2Service medservice=new MenuNivel2Service();
	MenuNivel3Service metservice=new MenuNivel3Service();
	EstadoService estservice=new EstadoService();
	
	public ActionForward execute(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {
	
	    	String forwardName = "error";
			String parametro = request.getParameter("event");
			System.out.println("parametro recibido"+parametro);
			
			if (parametro.equals("metSearch")) {
				forwardName =metSearch(mapping, form, request, response);
				System.out.println("Enviando al action :"+forwardName);
			}
			if (parametro.equals("metNew")) {
				forwardName =metNew(mapping, form, request, response);
				System.out.println("Enviando al action :"+forwardName);
			}
			if (parametro.equals("metSave")) {
				forwardName =metSave(mapping, form, request, response);
				System.out.println("Enviando al action :"+forwardName);
			}
			if (parametro.equals("metUpdate")) {
				forwardName =metUpdate(mapping, form, request, response);
				System.out.println("Enviando al action :"+forwardName);
			}
			if (parametro.equals("metsaveUpdate")) {
				forwardName =metsaveUpdate(mapping, form, request, response);
				System.out.println("Enviando al action :"+forwardName);
			}
			if (parametro.equals("metViewCorp")) {
				forwardName =metViewCorp(mapping, form, request, response);
				System.out.println("Enviando al action :"+forwardName);
			}
			if (parametro.equals("metFillMenu2")) {
				forwardName =metFillMenu2(mapping, form, request, response);
				System.out.println("Enviando al action :"+forwardName);
			}
			if (parametro.equals("metFillMenu2Update")) {
				forwardName =metFillMenu2Update(mapping, form, request, response);
				System.out.println("Enviando al action :"+forwardName);
			}
			return mapping.findForward(forwardName);
	}

	

	private String metViewCorp(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response) {
		DynaActionForm menunivel3Form = (DynaActionForm)form;
		String forwardName="";
	    Integer p_intmetId=(Integer)menunivel3Form.get("intmetId");
	    
	    try {
			BeanMenuNivel3 metbean=metservice.metSearchxid(p_intmetId);

			if (metbean != null){
				menunivel3Form.set("strmetMenu",metbean.getStrmetMenu());
				menunivel3Form.set("strmetLocale",metbean.getStrmetLocale());
				menunivel3Form.set("strmetTipoSistema",metbean.getStrmetTipoSistema());
				menunivel3Form.set("strmetNombreImagen",metbean.getStrmetNombreImagen());
				menunivel3Form.set("strmetNombrePdf",metbean.getStrmetNombrePdf());
				menunivel3Form.set("strmetNombreMenu",metbean.getStrmetNombreMenu());
				menunivel3Form.set("strmetTwitterCard",metbean.getStrmetTwitterCard());
				menunivel3Form.set("strmetTwitterSite",metbean.getStrmetTwitterSite());
				menunivel3Form.set("strmetTwitterCreator",metbean.getStrmetTwitterCreator());
				menunivel3Form.set("strmetTwitterTitle",metbean.getStrmetTwitterTitle());
				menunivel3Form.set("strmetTwitterDescription",metbean.getStrmetTwitterDescription());
				menunivel3Form.set("strmetTwitterImage",metbean.getStrmetTwitterImage());
				menunivel3Form.set("strmetGoogleName",metbean.getStrmetGoogleName());
				menunivel3Form.set("strmetGoogleDescription",metbean.getStrmetGoogleDescription());
				menunivel3Form.set("strmetGoogleImage",metbean.getStrmetGoogleImage());
				menunivel3Form.set("strmetOgTitle",metbean.getStrmetOgTitle());
				menunivel3Form.set("strmetOgType",metbean.getStrmetOgType());
				menunivel3Form.set("strmetOgUrl",metbean.getStrmetOgUrl());
				menunivel3Form.set("strmetOgImage",metbean.getStrmetOgImage());
				menunivel3Form.set("strmetOgDescription",metbean.getStrmetOgDescription());
				menunivel3Form.set("strmetOgSite_name",metbean.getStrmetOgSite_name());
				menunivel3Form.set("strmetMuestraContenido",metbean.getStrmetMuestraContenido());
				menunivel3Form.set("intmetNivelUsuario",metbean.getIntmetNivelUsuario());
				menunivel3Form.set("strmetEstado",metbean.getStrmetEstado());
				menunivel3Form.set("strmetEvento",metbean.getStrmetEvento());
				menunivel3Form.set("intmetPosicion", metbean.getIntmetPosicion());
			    
				HttpSession sessionMecbean = request.getSession(true);
				sessionMecbean.setAttribute("metbean",metbean);
				
				forwardName="metViewCorp";
			}else{
				forwardName="metListSearch";
				limpiar(menunivel3Form);
			}
			
	    } catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			forwardName="error";
		}
	 
		return forwardName;
	}

	private String metsaveUpdate(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response) {
		DynaActionForm menunivel3Form = (DynaActionForm)form;
		String forwardName="";
		
		BeanMenuNivel3 metbean;
		try {
			metbean = metSaveUpdate(menunivel3Form, request);
				if(metbean.getIntmetMensaje()==1){
					limpiar(menunivel3Form);
					menunivel3Form.set("flagConfirm","OKUPDATE");
					forwardName="metListSearch";
				}else if(metbean.getIntmetMensaje()==2){
					ActionMessages mensaje = new ActionMessages();
					mensaje.add("mensaje", new ActionMessage("menunivel3Form.metUpdate.error.error"));
					saveErrors(request, mensaje);
					menunivel3Form.set("flagConfirm","ERROR");
					menunivel3Form.set("strmetNombreMenu", metbean.getStrmetNombreMenu());
					forwardName = "metUpdate";
					}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			forwardName = "error";
		}
		return forwardName;
	}

	private BeanMenuNivel3 metSaveUpdate(DynaActionForm form,
			HttpServletRequest request) throws Exception {
	    Date dtemetFechaUpdate=new Date();
	    /*
	    BeanPersona perbean=(BeanPersona)request.getSession().getAttribute("beanPersona");
	    BeanUsuario usubean=ususervice.usuBuscarUserXId(perbean.getIntusuId());
		*/
	
    	BeanMenuNivel3 bean = new BeanMenuNivel3();
    	bean.setIntmetId((Integer) form.get("intmetId"));
    	bean.setStrmetMenu(form.getString("strmetMenu"));;
    	bean.setDtemetFechaUpdate(dtemetFechaUpdate);
    	bean.setStrmetUserUpdate("hrojas");
    	bean.setStrmetLocale(form.getString("strmetLocale"));
    	bean.setStrmetTipoSistema(form.getString("strmetTipoSistema"));
    	bean.setStrmetNombreImagen(form.getString("strmetNombreImagen"));
    	bean.setStrmetNombrePdf(form.getString("strmetNombrePdf"));
    	bean.setStrmetNombreMenu(form.getString("strmetNombreMenu"));
    	bean.setStrmetTwitterCard(form.getString("strmetTwitterCard"));
    	bean.setStrmetTwitterSite(form.getString("strmetTwitterSite"));
    	bean.setStrmetTwitterCreator(form.getString("strmetTwitterCreator"));
    	bean.setStrmetTwitterTitle(form.getString("strmetTwitterTitle"));
    	bean.setStrmetTwitterDescription(form.getString("strmetTwitterDescription"));
    	bean.setStrmetTwitterImage(form.getString("strmetTwitterImage"));
    	bean.setStrmetGoogleName(form.getString("strmetGoogleName"));
    	bean.setStrmetGoogleDescription(form.getString("strmetGoogleDescription"));
    	bean.setStrmetGoogleImage(form.getString("strmetGoogleImage"));
    	bean.setStrmetOgTitle(form.getString("strmetOgTitle"));
    	bean.setStrmetOgType(form.getString("strmetOgType"));
    	bean.setStrmetOgUrl(form.getString("strmetOgUrl"));
    	bean.setStrmetOgImage(form.getString("strmetOgImage"));
    	bean.setStrmetOgDescription(form.getString("strmetOgDescription"));
    	bean.setStrmetOgSite_name(form.getString("strmetOgSite_name"));
    	bean.setStrmetMuestraContenido(form.getString("strmetMuestraContenido"));
    	bean.setIntmetNivelUsuario((Integer)form.get("intmetNivelUsuario"));
       	bean.setStrmetEstado(form.getString("strmetEstado"));
       	bean.setStrmetEvento(form.getString("strmetEvento"));
       	bean.setIntmedId((Integer)form.get("intmedId"));
       	bean.setIntmetPosicion((Integer) form.get("intmetPosicion"));
       	bean.setIntmetMensaje(0);

        metservice.metUpdate(bean);
       return bean;
	}
	@SuppressWarnings("rawtypes")
	private String metFillMenu2Update(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response) {
		DynaActionForm menunivel3Form = (DynaActionForm)form;
		String forwardName = "";
		String p_strmedLocale="es_PE";
		Integer p_intmecId=(Integer)menunivel3Form.get("intmecId");
		
		try {
			BeanMenuNivel2 medbean=new BeanMenuNivel2();
			medbean.setStrmedLocale(p_strmedLocale);
			medbean.setIntmecId(p_intmecId);
			medbean.setIntmedNivelUsuario(3);
			
			ArrayList metListMenuNivel2=medservice.medList(medbean);
			menunivel3Form.set("metListMenuNivel2",metListMenuNivel2);
			
			forwardName = "metUpdate";
		} catch (Exception e) {
			// TODO Auto-generated catch block
						e.printStackTrace();
						forwardName = "error";
		}
		return forwardName;
	}
	@SuppressWarnings("rawtypes")
	private String metUpdate(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response) {
		DynaActionForm menunivel3Form = (DynaActionForm)form;
		String forwardName="";
		String p_strmecLocale="es_PE";
	    Integer p_intmetId=(Integer)menunivel3Form.get("intmetId");
	    
	    BeanEstado  estbeanmenunivel3= new BeanEstado();
		estbeanmenunivel3.setStrestLocale("es_PE");//CAMBIAR ESTE DATO SETEADO
		estbeanmenunivel3.setStrestParaModulo("menunivel3");
		
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
			BeanMenuNivel3 metbean=metservice.metSearchxid(p_intmetId);
		    BeanMenuNivel2 medbean=medservice.medSearchxid(metbean.getIntmedId());
			
			BeanMenuNivel2 medbean2=new BeanMenuNivel2();
			medbean2.setStrmedLocale(medbean.getStrmedLocale());
			medbean2.setIntmecId(medbean.getIntmecId());
			
			ArrayList metListMenuNivel3=estservice.allEstadoModulo(estbeanmenunivel3);
			menunivel3Form.set("metListMenuNivel3",metListMenuNivel3);	

			ArrayList metListTipoSistema=estservice.allEstadoModulo(estbeantiposistema);
			menunivel3Form.set("metListTipoSistema",metListTipoSistema);	
			
			ArrayList metListMostrarContenido=estservice.allEstadoModulo(estbeanmostrarcontenido);
			menunivel3Form.set("metListMostrarContenido",metListMostrarContenido);	
			
			ArrayList metListMenuNivel1=mecservice.mecList(mec1bean);
			menunivel3Form.set("metListMenuNivel1",metListMenuNivel1);	
			
			ArrayList metListMenuNivel2=medservice.medList(medbean2);
			menunivel3Form.set("metListMenuNivel2",metListMenuNivel2);
			
			menunivel3Form.set("strmetMenu",metbean.getStrmetMenu());
			menunivel3Form.set("strmetLocale",metbean.getStrmetLocale());
			menunivel3Form.set("strmetTipoSistema",metbean.getStrmetTipoSistema());
			menunivel3Form.set("strmetNombreImagen",metbean.getStrmetNombreImagen());
			menunivel3Form.set("strmetNombrePdf",metbean.getStrmetNombrePdf());
			menunivel3Form.set("strmetNombreMenu",metbean.getStrmetNombreMenu());
			menunivel3Form.set("strmetTwitterCard",metbean.getStrmetTwitterCard());
			menunivel3Form.set("strmetTwitterSite",metbean.getStrmetTwitterSite());
			menunivel3Form.set("strmetTwitterCreator",metbean.getStrmetTwitterCreator());
			menunivel3Form.set("strmetTwitterTitle",metbean.getStrmetTwitterTitle());
			menunivel3Form.set("strmetTwitterDescription",metbean.getStrmetTwitterDescription());
			menunivel3Form.set("strmetTwitterImage",metbean.getStrmetTwitterImage());
			menunivel3Form.set("strmetGoogleName",metbean.getStrmetGoogleName());
			menunivel3Form.set("strmetGoogleDescription",metbean.getStrmetGoogleDescription());
			menunivel3Form.set("strmetGoogleImage",metbean.getStrmetGoogleImage());
			menunivel3Form.set("strmetOgTitle",metbean.getStrmetOgTitle());
			menunivel3Form.set("strmetOgType",metbean.getStrmetOgType());
			menunivel3Form.set("strmetOgUrl",metbean.getStrmetOgUrl());
			menunivel3Form.set("strmetOgImage",metbean.getStrmetOgImage());
			menunivel3Form.set("strmetOgDescription",metbean.getStrmetOgDescription());
			menunivel3Form.set("strmetOgSite_name",metbean.getStrmetOgSite_name());
			menunivel3Form.set("strmetMuestraContenido",metbean.getStrmetMuestraContenido());
			menunivel3Form.set("intmetNivelUsuario",metbean.getIntmetNivelUsuario());
			menunivel3Form.set("strmetEstado",metbean.getStrmetEstado());
			menunivel3Form.set("strmetEvento",metbean.getStrmetEvento());
			menunivel3Form.set("intmedId", metbean.getIntmedId());
			menunivel3Form.set("intmetPosicion", metbean.getIntmetPosicion());
			
			//extend
			menunivel3Form.set("intmecId", medbean.getIntmecId());
			
			forwardName="metUpdate";
			
	    } catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			forwardName="error";
		}
	 
		return forwardName;
	}

	private String metSave(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response) {
		DynaActionForm menunivel3Form = (DynaActionForm)form;
		String forwardName="";
		try{
		BeanMenuNivel3 metbean=metSave(menunivel3Form, request);
		System.out.println("entro aqui primero ");
		
		if(metbean.getIntmetId() == 0){
			ActionMessages mensaje = new ActionMessages();
			mensaje.add("mensaje", new ActionMessage("menunivel3Form.metNew.error.error"));
			saveErrors(request, mensaje);
			menunivel3Form.set("flagConfirm","ERROR");
			menunivel3Form.set("strmetNombreMenu", metbean.getStrmetNombreMenu());
			forwardName = "metNew";	
			
		}else{
			if(menunivel3Form.getString("saveandadd").equals("saveandadd")){
			ActionMessages mensaje = new ActionMessages();
			mensaje.add("mensaje", new ActionMessage("menunivel3Form.metNew.ok.ok"));
			saveErrors(request, mensaje);
			menunivel3Form.set("flagConfirm","OK");
			limpiar(menunivel3Form);
			forwardName = "metNew";
			}else if(menunivel3Form.getString("saveandadd").equals("save")){
			menunivel3Form.set("flagConfirm","OKINSERT");
			forwardName = "metListSearch";
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

	private BeanMenuNivel3 metSave(DynaActionForm form,
			HttpServletRequest request) throws Exception {
		Date dtemetFechaIngreso=new Date();
	    Date dtemetFechaUpdate=new Date();
	    /*
	    BeanPersona perbean=(BeanPersona)request.getSession().getAttribute("beanPersona");
	    BeanUsuario usubean=ususervice.usuBuscarUserXId(perbean.getIntusuId());
		*/
	
    	BeanMenuNivel3 bean = new BeanMenuNivel3();
    	bean.setIntmetId(0);
    	bean.setStrmetMenu(form.getString("strmetMenu"));;
    	bean.setDtemetFechaIngreso(dtemetFechaIngreso);
    	bean.setDtemetFechaUpdate(dtemetFechaUpdate);
    	bean.setStrmetUserIngreso("hrojas");
    	bean.setStrmetUserUpdate("hrojas");
    	bean.setStrmetLocale(form.getString("strmetLocale"));
    	bean.setStrmetTipoSistema(form.getString("strmetTipoSistema"));
    	bean.setStrmetNombreImagen(form.getString("strmetNombreImagen"));
    	bean.setStrmetNombrePdf(form.getString("strmetNombrePdf"));
    	bean.setStrmetNombreMenu(form.getString("strmetNombreMenu"));
    	bean.setStrmetTwitterCard(form.getString("strmetTwitterCard"));
    	bean.setStrmetTwitterSite(form.getString("strmetTwitterSite"));
    	bean.setStrmetTwitterCreator(form.getString("strmetTwitterCreator"));
    	bean.setStrmetTwitterTitle(form.getString("strmetTwitterTitle"));
    	bean.setStrmetTwitterDescription(form.getString("strmetTwitterDescription"));
    	bean.setStrmetTwitterImage(form.getString("strmetTwitterImage"));
    	bean.setStrmetGoogleName(form.getString("strmetGoogleName"));
    	bean.setStrmetGoogleDescription(form.getString("strmetGoogleDescription"));
    	bean.setStrmetGoogleImage(form.getString("strmetGoogleImage"));
    	bean.setStrmetOgTitle(form.getString("strmetOgTitle"));
    	bean.setStrmetOgType(form.getString("strmetOgType"));
    	bean.setStrmetOgUrl(form.getString("strmetOgUrl"));
    	bean.setStrmetOgImage(form.getString("strmetOgImage"));
    	bean.setStrmetOgDescription(form.getString("strmetOgDescription"));
    	bean.setStrmetOgSite_name(form.getString("strmetOgSite_name"));
    	bean.setStrmetMuestraContenido(form.getString("strmetMuestraContenido"));
    	bean.setIntmetNivelUsuario((Integer)form.get("intmetNivelUsuario"));
       	bean.setStrmetEstado(form.getString("strmetEstado"));
       	bean.setStrmetEvento(form.getString("strmetEvento"));
       	bean.setIntmedId((Integer)form.get("intmedId"));
       	bean.setIntmetPosicion((Integer) form.get("intmetPosicion"));

        metservice.metInsert(bean);
       return bean;
	}
    
	@SuppressWarnings("rawtypes")
	private String metFillMenu2(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response) {
		DynaActionForm menunivel3Form = (DynaActionForm)form;
		String forwardName = "";
		String p_strmedLocale="es_PE";
		Integer p_intmecId=(Integer)menunivel3Form.get("intmecId");
		
		try {
			BeanMenuNivel2 medbean=new BeanMenuNivel2();
			medbean.setStrmedLocale(p_strmedLocale);
			medbean.setIntmecId(p_intmecId);
			medbean.setIntmedNivelUsuario(3);
			medbean.setStrmedTipoSistema("%%");
			
			ArrayList metListMenuNivel2=medservice.medList(medbean);
			menunivel3Form.set("metListMenuNivel2",metListMenuNivel2);
			
			forwardName = "metNew";
		} catch (Exception e) {
			// TODO Auto-generated catch block
						e.printStackTrace();
						forwardName = "error";
		}
		return forwardName;
	}
	@SuppressWarnings("rawtypes")
	private String metNew(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response) {
		DynaActionForm menunivel3Form = (DynaActionForm)form;
		menunivel3Form.set("flagConfirm","FALSE");
		String forwardName = "";
		String p_strmecLocale="es_PE";
		limpiar(menunivel3Form);
		
		BeanEstado  estbeanmenunivel3= new BeanEstado();
		estbeanmenunivel3.setStrestLocale("es_PE");//CAMBIAR ESTE DATO SETEADO
		estbeanmenunivel3.setStrestParaModulo("menunivel3");
		
		BeanEstado  estbeantiposistema= new BeanEstado();
		estbeantiposistema.setStrestLocale("es_PE");//CAMBIAR ESTE DATO SETEADO
		estbeantiposistema.setStrestParaModulo("tiposistema");
		
		BeanEstado  estbeanmostrarcontenido= new BeanEstado();
		estbeanmostrarcontenido.setStrestLocale("es_PE");//CAMBIAR ESTE DATO SETEADO
		estbeanmostrarcontenido.setStrestParaModulo("mostrarcontenido");
		
		BeanMenuNivel1 mec1bean=new BeanMenuNivel1();
		mec1bean.setStrmecLocale(p_strmecLocale);
		mec1bean.setIntmecNivelUsuario(3);
		mec1bean.setStrmecTipoSistema("%%");
		
		try {
			ArrayList metListMenuNivel1=mecservice.mecList(mec1bean);
			menunivel3Form.set("metListMenuNivel1",metListMenuNivel1);	
			
			ArrayList metListMenuNivel3=estservice.allEstadoModulo(estbeanmenunivel3);
			menunivel3Form.set("metListMenuNivel3",metListMenuNivel3);	

			ArrayList metListTipoSistema=estservice.allEstadoModulo(estbeantiposistema);
			menunivel3Form.set("metListTipoSistema",metListTipoSistema);	
			
			ArrayList metListMostrarContenido=estservice.allEstadoModulo(estbeanmostrarcontenido);
			menunivel3Form.set("metListMostrarContenido",metListMostrarContenido);	
			
			forwardName="metNew";
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			forwardName = "error";
		}
		
		
		return forwardName;
	}

	@SuppressWarnings("rawtypes")
	private String metSearch(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response) {
        DynaActionForm menunivel3Form = (DynaActionForm)form;
        String forwardName = "";
        
		BeanMenuNivel3 metbean=new BeanMenuNivel3();
		metbean.setStrmetNombreMenu("%%");
		metbean.setStrmetLocale("es_PE");

		try {
			
			ArrayList metListSearch = metservice.metSearchList(metbean);
			menunivel3Form.set("metListSearch", metListSearch);
			System.out.println("Tamaño :"+metListSearch.size());
			menunivel3Form.set("flagConfirm","FALSE");
			
			forwardName="metListSearch";
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			forwardName = "error";
		}
		
		
		return forwardName;
	}
	private void limpiar(DynaActionForm menunivel3Form){		 
		        menunivel3Form.set("strmetMenu","");
				menunivel3Form.set("strmetLocale","");
				menunivel3Form.set("strmetTipoSistema","");
				menunivel3Form.set("strmetNombreImagen","");
				menunivel3Form.set("strmetNombrePdf","");
				menunivel3Form.set("strmetNombreMenu","");
				menunivel3Form.set("strmetTwitterCard","");
				menunivel3Form.set("strmetTwitterSite","");
				menunivel3Form.set("strmetTwitterCreator","");
				menunivel3Form.set("strmetTwitterTitle","");
				menunivel3Form.set("strmetTwitterDescription","");
				menunivel3Form.set("strmetTwitterImage","");
				menunivel3Form.set("strmetGoogleName","");
				menunivel3Form.set("strmetGoogleDescription","");
				menunivel3Form.set("strmetGoogleImage","");
				menunivel3Form.set("strmetOgTitle","");
				menunivel3Form.set("strmetOgType","");
				menunivel3Form.set("strmetOgUrl","");
				menunivel3Form.set("strmetOgImage","");
				menunivel3Form.set("strmetOgDescription","");
				menunivel3Form.set("strmetOgSite_name","");
				menunivel3Form.set("strmetMuestraContenido","");
				menunivel3Form.set("intmetNivelUsuario",0);
				menunivel3Form.set("strmetEstado","");
				menunivel3Form.set("strmetEvento","");
				menunivel3Form.set("intmetPosicion", 0);
	}
}
