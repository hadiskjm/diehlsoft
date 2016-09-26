package action;

import java.io.BufferedOutputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.io.OutputStreamWriter;
import java.io.UnsupportedEncodingException;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Date;
import java.util.Locale;

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

import bean.BeanEstado;
import bean.BeanMenuNivel1;
import bean.BeanMenuNivel2;
import bean.BeanMenuNivel3;
import bean.BeanPersona;
import services.EstadoService;
import services.MenuNivel1Service; 
import services.MenuNivel2Service;
import services.MenuNivel3Service;
import services.PaisService;

public class MenuNivel1Action extends Action{
	MenuNivel1Service mecservice=new MenuNivel1Service();
	MenuNivel2Service medservice=new MenuNivel2Service();
	MenuNivel3Service metservice=new MenuNivel3Service();
	EstadoService estservice=new EstadoService();
	PaisService pisservice=new PaisService();
	
	public ActionForward execute(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {
	
	    	String forwardName = "error";
			String parametro = request.getParameter("event");
			System.out.println("parametro recibido"+parametro);
			
			if (parametro.equals("mecSearch")) {
				forwardName =mecSearch(mapping, form, request, response);
				System.out.println("Enviando al action :"+forwardName);
			}
			if (parametro.equals("mecNew")) {
				forwardName =mecNew(mapping, form, request, response);
				System.out.println("Enviando al action :"+forwardName);
			}
			if (parametro.equals("mecSave")) {
				forwardName =mecSave(mapping, form, request, response);
				System.out.println("Enviando al action :"+forwardName);
			}
			if (parametro.equals("mecUpdate")) {
				forwardName =mecUpdate(mapping, form, request, response);
				System.out.println("Enviando al action :"+forwardName);
			}
			if (parametro.equals("mecsaveUpdate")) {
				forwardName =mecsaveUpdate(mapping, form, request, response);
				System.out.println("Enviando al action :"+forwardName);
			}
			if (parametro.equals("mecViewCorp")) {
				forwardName =mecViewCorp(mapping, form, request, response);
				System.out.println("Enviando al action :"+forwardName);
			}
			if (parametro.equals("mecMenu")) {
				forwardName =mecMenu(mapping, form, request, response);
				System.out.println("Enviando al action :"+forwardName);
			}
			if (parametro.equals("mecCreateMenu")) {
				forwardName =mecCreateMenu(mapping, form, request, response);
				System.out.println("Enviando al action :"+forwardName);
			}
			return mapping.findForward(forwardName);
	}
    @SuppressWarnings("unchecked")
	private String mecCreateMenu(ActionMapping mapping, ActionForm form, HttpServletRequest request,
			HttpServletResponse response) {
            DynaActionForm menunivel1Form = (DynaActionForm)form;
		
			Integer p_intmecNivelUsuario=(Integer)menunivel1Form.get("intmenuNivelUser");;
			
			
			String forwardName="",p_strmecLocale="es_PE",
					mecMenu="",mecAcumula="",medAcumula="",medAcumulaSubmenu="",
					metAcumulaSubmenu="";
			//menu
			String liopen="<li><a href="+this.getServlet().getServletContext().getContextPath();
			String liopenclose=">";
			String liclose="</a> </li>";
			
			
			//submenu
			String lisubmenuopen="<li><a class='sb-toggle-submenu' href='#'>";
			String asubmenuclose="<span class='sb-caret'></span></a>";
			String ulsubmenuopen="<ul class='sb-submenu'>";
			String ulsubmenuclose="</ul>";
			String lisubmenuclose="</li>";
			
			String liopensubmenu="<li><a href="+this.getServlet().getServletContext().getContextPath();
			String liopenclosesubmenu=">";
			String liclosesubmenu="</a> </li>";
			
			//submenu3
					String lisubmenu3open="<li><a class='sb-toggle-submenu' href='#'>";
					String asubmenu3close="<span class='sb-caret'></span></a>";
					String ulsubmenu3open="<ul class='sb-submenu'>";
					String ulsubmenu3close="</ul>";
					String lisubmenu3close="</li>";
					
					String liopensubmenu3="<li><a href="+this.getServlet().getServletContext().getContextPath();
					String liopenclosesubmenu3=">";
					String liclosesubmenu3="</a> </li>";
			
			try {
				
				BeanMenuNivel1 mec1bean=new BeanMenuNivel1();
				mec1bean.setStrmecLocale(p_strmecLocale);
				mec1bean.setIntmecNivelUsuario(p_intmecNivelUsuario);
				
				ArrayList<BeanMenuNivel1> lista=mecservice.mecList(mec1bean);
				if(lista !=null){
				for(BeanMenuNivel1 mecbean : lista){
					//nivel2
					BeanMenuNivel2 medbean=new BeanMenuNivel2();
					medbean.setStrmedLocale(mecbean.getStrmecLocale());
					medbean.setIntmecId(mecbean.getIntmecId());
					medbean.setIntmedNivelUsuario(p_intmecNivelUsuario);
					ArrayList<BeanMenuNivel2> lista2=medservice.medList(medbean);
					if(lista2.size()>1){   
						mecAcumula+=lisubmenuopen+mecbean.getStrmecNombreMenu()+asubmenuclose+ulsubmenuopen;
						
						//************
						for(BeanMenuNivel2 medbean2 : lista2){
							
							//****************************
							BeanMenuNivel3 metbean=new BeanMenuNivel3();
							metbean.setStrmetLocale(medbean2.getStrmedLocale());
							metbean.setIntmedId(medbean2.getIntmedId());
							metbean.setIntmetNivelUsuario(p_intmecNivelUsuario);
							ArrayList<BeanMenuNivel3> lista3=metservice.metList(metbean);
								if(lista3.size()>1){ 
									medAcumula+=lisubmenu3open+medbean2.getStrmedNombreMenu()+asubmenu3close+ulsubmenu3open;
									
									for(BeanMenuNivel3 metbean3 : lista3){
										metAcumulaSubmenu+=liopensubmenu3+metbean3.getStrmetEvento()+metbean3.getStrmetParametro()+liopenclosesubmenu3+metbean3.getStrmetNombreMenu()+liclosesubmenu3;
									}
									medAcumula+=metAcumulaSubmenu+ulsubmenu3close+lisubmenu3close;
									metAcumulaSubmenu="";
								}else{
									medAcumulaSubmenu+=liopensubmenu+medbean2.getStrmedEvento()+medbean2.getStrmedParametro()+liopenclosesubmenu+medbean2.getStrmedNombreMenu()+liclosesubmenu;
								    
								}
							//*******************************
							
						}
					    mecAcumula+=medAcumula+medAcumulaSubmenu+ulsubmenuclose+lisubmenuclose;
					    medAcumulaSubmenu="";
					    medAcumula="";
					    //*************
					}else {
						mecAcumula+=liopen+mecbean.getStrmecEvento()+mecbean.getStrmecParametro()+liopenclose+mecbean.getStrmecNombreMenu()+liclose;
					}
				}
				mecMenu+=mecAcumula;
				}
						
				 try {
				      //OutputStream fout= new FileOutputStream(this.getServlet().getServletContext().getRealPath("\\pages\\")+"\\general\\"+p_intmecNivelUsuario+"c.jsp");//windows
				      OutputStream fout= new FileOutputStream(this.getServlet().getServletContext().getRealPath("/pages/")+"/general/"+p_intmecNivelUsuario+"c.jsp");//linux
				      OutputStream bout= new BufferedOutputStream(fout);
				      OutputStreamWriter out = new OutputStreamWriter(bout,Charset.forName("windows-1252"));
				      System.out.println("entro");
				      out.write(mecMenu);
				      out.flush();
				      out.close();
				    } 
				    catch (UnsupportedEncodingException e) {
				      System.out.println("La Máquina Virtual no soporta la codificación Latin-1.");
				    }
				    catch (IOException e) {
				      System.out.println(e.getMessage()); 
				    }
				    catch (Exception e) {
				      System.out.println("Error : " + e);
				    }
				
				
				forwardName="mecListSearch";
			} catch (Exception e) {
				e.printStackTrace();
				forwardName="error";
			}
			
			return forwardName;
	}
	/*para obtener varias cosas desde el cliente
     * 
	public void doGet(HttpServletRequest request,
		            HttpServletResponse response)
		throws ServletException, IOException {
		response.setContentType("text/html");
		
		
		Enumeration headerNames = request.getHeaderNames();
		while(headerNames.hasMoreElements()) {
		String headerName = (String)headerNames.nextElement();
		System.out.println("<TR><TD>" + headerName);
		System.out.println("    <TD>" + request.getHeader(headerName));
		System.out.println("    <TD>" + request.getLocale());
		}
		System.out.println("</TABLE>\n</BODY></HTML>");
}
	*/
	@SuppressWarnings({ "unused" })
	private String mecMenu(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response) {
		DynaActionForm menunivel1Form = (DynaActionForm)form;
		
		Integer p_intmecNivelUsuario=0;
		BeanPersona perbean=(BeanPersona)request.getSession().getAttribute("beanPersona");
		
		/*para el cambio de idioma automatico*/
		String strIdioma=request.getLocale().toString();
		System.out.println("Locale :"+strIdioma);
		String strIdioma1,strIdioma2;
		strIdioma1=strIdioma.substring(0,2);
		
		if(strIdioma1.equals("en")){
			strIdioma2="US";
		}else{
			strIdioma2="PE";
		}
		
		request.getSession().setAttribute(Globals.LOCALE_KEY,
				new Locale(strIdioma1,strIdioma2));
		
		
		
		if(perbean!=null){
			p_intmecNivelUsuario=perbean.getIntpefId();
			System.out.println("entro y valor es 1:"+p_intmecNivelUsuario);
			
		}else{
			p_intmecNivelUsuario=1;
			System.out.println("entro y valor es 2:"+p_intmecNivelUsuario);
		}
		
		String forwardName="",p_strmecLocale="es_PE",
				mecMenu="",mecAcumula="",medAcumula="",medAcumulaSubmenu="",
				metAcumulaSubmenu="";
		
		
		//menu
		String liopen="<li><a href="+this.getServlet().getServletContext().getContextPath();
		String liopenclose=">";
		String liclose="</a> </li>";
		
		
		//submenu
		String lisubmenuopen="<li><a class='sb-toggle-submenu' href='#'>";
		String asubmenuclose="<span class='sb-caret'></span></a>";
		String ulsubmenuopen="<ul class='sb-submenu'>";
		String ulsubmenuclose="</ul>";
		String lisubmenuclose="</li>";
		
		String liopensubmenu="<li><a href="+this.getServlet().getServletContext().getContextPath();
		String liopenclosesubmenu=">";
		String liclosesubmenu="</a> </li>";
		
		//submenu3
				String lisubmenu3open="<li><a class='sb-toggle-submenu' href='#'>";
				String asubmenu3close="<span class='sb-caret'></span></a>";
				String ulsubmenu3open="<ul class='sb-submenu'>";
				String ulsubmenu3close="</ul>";
				String lisubmenu3close="</li>";
				
				String liopensubmenu3="<li><a href="+this.getServlet().getServletContext().getContextPath();
				String liopenclosesubmenu3=">";
				String liclosesubmenu3="</a> </li>";
		
		try {
			/*
			BeanMenuNivel1 mec1bean=new BeanMenuNivel1();
			mec1bean.setStrmecLocale(p_strmecLocale);
			mec1bean.setIntmecNivelUsuario(p_intmecNivelUsuario);
			
			ArrayList<BeanMenuNivel1> lista=mecservice.mecList(mec1bean);
			if(lista !=null){
			for(BeanMenuNivel1 mecbean : lista){
				//nivel2
				BeanMenuNivel2 medbean=new BeanMenuNivel2();
				medbean.setStrmedLocale(mecbean.getStrmecLocale());
				medbean.setIntmecId(mecbean.getIntmecId());
				medbean.setIntmedNivelUsuario(p_intmecNivelUsuario);
				ArrayList<BeanMenuNivel2> lista2=medservice.medList(medbean);
				if(lista2.size()>1){   
					mecAcumula+=lisubmenuopen+mecbean.getStrmecNombreMenu()+asubmenuclose+ulsubmenuopen;
					
					//************
					for(BeanMenuNivel2 medbean2 : lista2){
						
						//****************************
						BeanMenuNivel3 metbean=new BeanMenuNivel3();
						metbean.setStrmetLocale(medbean2.getStrmedLocale());
						metbean.setIntmedId(medbean2.getIntmedId());
						metbean.setIntmetNivelUsuario(p_intmecNivelUsuario);
						ArrayList<BeanMenuNivel3> lista3=metservice.metList(metbean);
							if(lista3.size()>1){ 
								medAcumula+=lisubmenu3open+medbean2.getStrmedNombreMenu()+asubmenu3close+ulsubmenu3open;
								
								for(BeanMenuNivel3 metbean3 : lista3){
									metAcumulaSubmenu+=liopensubmenu3+metbean3.getStrmetEvento()+metbean3.getStrmetParametro()+liopenclosesubmenu3+metbean3.getStrmetNombreMenu()+liclosesubmenu3;
								}
								medAcumula+=metAcumulaSubmenu+ulsubmenu3close+lisubmenu3close;
								metAcumulaSubmenu="";
							}else{
								medAcumulaSubmenu+=liopensubmenu+medbean2.getStrmedEvento()+medbean2.getStrmedParametro()+liopenclosesubmenu+medbean2.getStrmedNombreMenu()+liclosesubmenu;
							    
							}
						//*******************************
						
					}
				    mecAcumula+=medAcumula+medAcumulaSubmenu+ulsubmenuclose+lisubmenuclose;
				    medAcumulaSubmenu="";
				    medAcumula="";
				    //*************
				}else {
					mecAcumula+=liopen+mecbean.getStrmecEvento()+mecbean.getStrmecParametro()+liopenclose+mecbean.getStrmecNombreMenu()+liclose;
				}
			}
			mecMenu+=mecAcumula;
			}
			HttpSession sessionmecMenu = request.getSession(true);
			sessionmecMenu.setAttribute("mecMenu",mecMenu);
			*/ 
			
			forwardName="mecMenu";
		} catch (Exception e) {
			e.printStackTrace();
			forwardName="error";
		}
		return forwardName;
	}

	private String mecViewCorp(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response) {
		DynaActionForm menunivel1Form = (DynaActionForm)form;
		String forwardName="";
	    Integer p_intmecId=(Integer)menunivel1Form.get("intmecId");
	    
	    try {
			BeanMenuNivel1 mecbean=mecservice.mecSearchxid(p_intmecId);

			if (mecbean != null){
				menunivel1Form.set("strmecMenu",mecbean.getStrmecMenu());
				menunivel1Form.set("strmecLocale",mecbean.getStrmecLocale());
				menunivel1Form.set("strmecTipoSistema",mecbean.getStrmecTipoSistema());
				menunivel1Form.set("strmecNombreImagen",mecbean.getStrmecNombreImagen());
				menunivel1Form.set("strmecNombrePdf",mecbean.getStrmecNombrePdf());
				menunivel1Form.set("strmecNombreMenu",mecbean.getStrmecNombreMenu());
				menunivel1Form.set("strmecTwitterCard",mecbean.getStrmecTwitterCard());
				menunivel1Form.set("strmecTwitterSite",mecbean.getStrmecTwitterSite());
				menunivel1Form.set("strmecTwitterCreator",mecbean.getStrmecTwitterCreator());
				menunivel1Form.set("strmecTwitterTitle",mecbean.getStrmecTwitterTitle());
				menunivel1Form.set("strmecTwitterDescription",mecbean.getStrmecTwitterDescription());
				menunivel1Form.set("strmecTwitterImage",mecbean.getStrmecTwitterImage());
				menunivel1Form.set("strmecGoogleName",mecbean.getStrmecGoogleName());
				menunivel1Form.set("strmecGoogleDescription",mecbean.getStrmecGoogleDescription());
				menunivel1Form.set("strmecGoogleImage",mecbean.getStrmecGoogleImage());
				menunivel1Form.set("strmecOgTitle",mecbean.getStrmecOgTitle());
				menunivel1Form.set("strmecOgType",mecbean.getStrmecOgType());
				menunivel1Form.set("strmecOgUrl",mecbean.getStrmecOgUrl());
				menunivel1Form.set("strmecOgImage",mecbean.getStrmecOgImage());
				menunivel1Form.set("strmecOgDescription",mecbean.getStrmecOgDescription());
				menunivel1Form.set("strmecOgSite_name",mecbean.getStrmecOgSite_name());
				menunivel1Form.set("strmecMuestraContenido",mecbean.getStrmecMuestraContenido());
				menunivel1Form.set("intmecNivelUsuario",mecbean.getIntmecNivelUsuario());
				menunivel1Form.set("strmecEstado",mecbean.getStrmecEstado());
				menunivel1Form.set("strmecEvento",mecbean.getStrmecEvento());
				menunivel1Form.set("intmecPosicion", mecbean.getIntmecPosicion());
			    
				HttpSession sessionMecbean = request.getSession(true);
				sessionMecbean.setAttribute("mecbean",mecbean);
				
				forwardName="mecViewCorp";
			}else{
				forwardName="mecListSearch";
				limpiar(menunivel1Form);
			}
			
	    } catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			forwardName="error";
		}
	 
		return forwardName;
	}

	private String mecsaveUpdate(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response) {
		DynaActionForm menunivel1Form = (DynaActionForm)form;
		String forwardName="";
		
		BeanMenuNivel1 mecbean;
		try {
			mecbean = mecSaveUpdate(menunivel1Form, request);
				if(mecbean.getIntmecMensaje()==1){
					limpiar(menunivel1Form);
					menunivel1Form.set("flagConfirm","OKUPDATE");
					forwardName="mecListSearch";
				}else if(mecbean.getIntmecMensaje()==2){
					ActionMessages mensaje = new ActionMessages();
					mensaje.add("mensaje", new ActionMessage("menunivel1Form.mecUpdate.error.error"));
					saveErrors(request, mensaje);
					menunivel1Form.set("flagConfirm","ERROR");
					menunivel1Form.set("strmecNombreMenu", mecbean.getStrmecNombreMenu());
					forwardName = "mecUpdate";
					}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			forwardName = "error";
		}
		return forwardName;
	}

	private BeanMenuNivel1 mecSaveUpdate(DynaActionForm form,
			HttpServletRequest request) throws Exception {
	    Date dtemecFechaUpdate=new Date();
	    /*
	    BeanPersona perbean=(BeanPersona)request.getSession().getAttribute("beanPersona");
	    BeanUsuario usubean=ususervice.usuBuscarUserXId(perbean.getIntusuId());
		*/
	
    	BeanMenuNivel1 bean = new BeanMenuNivel1();
    	bean.setIntmecId((Integer) form.get("intmecId"));
    	bean.setStrmecMenu(form.getString("strmecMenu"));;
    	bean.setDtemecFechaUpdate(dtemecFechaUpdate);
    	bean.setStrmecUserUpdate("hrojas");
    	bean.setStrmecLocale(form.getString("strmecLocale"));
    	bean.setStrmecTipoSistema(form.getString("strmecTipoSistema"));
    	bean.setStrmecNombreImagen(form.getString("strmecNombreImagen"));
    	bean.setStrmecNombrePdf(form.getString("strmecNombrePdf"));
    	bean.setStrmecNombreMenu(form.getString("strmecNombreMenu"));
    	bean.setStrmecTwitterCard(form.getString("strmecTwitterCard"));
    	bean.setStrmecTwitterSite(form.getString("strmecTwitterSite"));
    	bean.setStrmecTwitterCreator(form.getString("strmecTwitterCreator"));
    	bean.setStrmecTwitterTitle(form.getString("strmecTwitterTitle"));
    	bean.setStrmecTwitterDescription(form.getString("strmecTwitterDescription"));
    	bean.setStrmecTwitterImage(form.getString("strmecTwitterImage"));
    	bean.setStrmecGoogleName(form.getString("strmecGoogleName"));
    	bean.setStrmecGoogleDescription(form.getString("strmecGoogleDescription"));
    	bean.setStrmecGoogleImage(form.getString("strmecGoogleImage"));
    	bean.setStrmecOgTitle(form.getString("strmecOgTitle"));
    	bean.setStrmecOgType(form.getString("strmecOgType"));
    	bean.setStrmecOgUrl(form.getString("strmecOgUrl"));
    	bean.setStrmecOgImage(form.getString("strmecOgImage"));
    	bean.setStrmecOgDescription(form.getString("strmecOgDescription"));
    	bean.setStrmecOgSite_name(form.getString("strmecOgSite_name"));
    	bean.setStrmecMuestraContenido(form.getString("strmecMuestraContenido"));
    	bean.setIntmecNivelUsuario((Integer)form.get("intmecNivelUsuario"));
       	bean.setStrmecEstado(form.getString("strmecEstado"));
       	bean.setStrmecEvento(form.getString("strmecEvento"));
       	bean.setIntmecPosicion( (Integer)form.get("intmecPosicion") );
       	bean.setIntmecMensaje(0);

        mecservice.mecUpdate(bean);
       return bean;
	}

	@SuppressWarnings("rawtypes")
	private String mecUpdate(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response) {
		DynaActionForm menunivel1Form = (DynaActionForm)form;
		String forwardName="";
	    Integer p_intmecId=(Integer)menunivel1Form.get("intmecId");
	    
	    BeanEstado  estbeanmenunivel1= new BeanEstado();
		estbeanmenunivel1.setStrestLocale("es_PE");//CAMBIAR ESTE DATO SETEADO
		estbeanmenunivel1.setStrestParaModulo("menunivel1");
		
		BeanEstado  estbeantiposistema= new BeanEstado();
		estbeantiposistema.setStrestLocale("es_PE");//CAMBIAR ESTE DATO SETEADO
		estbeantiposistema.setStrestParaModulo("tiposistema");
		
		BeanEstado  estbeanmostrarcontenido= new BeanEstado();
		estbeanmostrarcontenido.setStrestLocale("es_PE");//CAMBIAR ESTE DATO SETEADO
		estbeanmostrarcontenido.setStrestParaModulo("mostrarcontenido");
	    try {
			BeanMenuNivel1 mecbean=mecservice.mecSearchxid(p_intmecId);
		    
			ArrayList mecListMenuNivel1=estservice.allEstadoModulo(estbeanmenunivel1);
			menunivel1Form.set("mecListMenuNivel1",mecListMenuNivel1);	

			ArrayList mecListTipoSistema=estservice.allEstadoModulo(estbeantiposistema);
			menunivel1Form.set("mecListTipoSistema",mecListTipoSistema);	
			
			ArrayList mecListMostrarContenido=estservice.allEstadoModulo(estbeanmostrarcontenido);
			menunivel1Form.set("mecListMostrarContenido",mecListMostrarContenido);	
			
			
			if (mecbean != null){
				menunivel1Form.set("strmecMenu",mecbean.getStrmecMenu());
				menunivel1Form.set("strmecLocale",mecbean.getStrmecLocale());
				menunivel1Form.set("strmecTipoSistema",mecbean.getStrmecTipoSistema());
				menunivel1Form.set("strmecNombreImagen",mecbean.getStrmecNombreImagen());
				menunivel1Form.set("strmecNombrePdf",mecbean.getStrmecNombrePdf());
				menunivel1Form.set("strmecNombreMenu",mecbean.getStrmecNombreMenu());
				menunivel1Form.set("strmecTwitterCard",mecbean.getStrmecTwitterCard());
				menunivel1Form.set("strmecTwitterSite",mecbean.getStrmecTwitterSite());
				menunivel1Form.set("strmecTwitterCreator",mecbean.getStrmecTwitterCreator());
				menunivel1Form.set("strmecTwitterTitle",mecbean.getStrmecTwitterTitle());
				menunivel1Form.set("strmecTwitterDescription",mecbean.getStrmecTwitterDescription());
				menunivel1Form.set("strmecTwitterImage",mecbean.getStrmecTwitterImage());
				menunivel1Form.set("strmecGoogleName",mecbean.getStrmecGoogleName());
				menunivel1Form.set("strmecGoogleDescription",mecbean.getStrmecGoogleDescription());
				menunivel1Form.set("strmecGoogleImage",mecbean.getStrmecGoogleImage());
				menunivel1Form.set("strmecOgTitle",mecbean.getStrmecOgTitle());
				menunivel1Form.set("strmecOgType",mecbean.getStrmecOgType());
				menunivel1Form.set("strmecOgUrl",mecbean.getStrmecOgUrl());
				menunivel1Form.set("strmecOgImage",mecbean.getStrmecOgImage());
				menunivel1Form.set("strmecOgDescription",mecbean.getStrmecOgDescription());
				menunivel1Form.set("strmecOgSite_name",mecbean.getStrmecOgSite_name());
				menunivel1Form.set("strmecMuestraContenido",mecbean.getStrmecMuestraContenido());
				menunivel1Form.set("intmecNivelUsuario",mecbean.getIntmecNivelUsuario());
				menunivel1Form.set("strmecEstado",mecbean.getStrmecEstado());
				menunivel1Form.set("strmecEvento",mecbean.getStrmecEvento());
				menunivel1Form.set("intmecPosicion", mecbean.getIntmecPosicion());
			    
				forwardName="mecUpdate";
			}else{
				forwardName="mecListSearch";
				limpiar(menunivel1Form);
			}
			
	    } catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			forwardName="error";
		}
	 
		return forwardName;
	}

	private String mecSave(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response) {
		DynaActionForm menunivel1Form = (DynaActionForm)form;
		String forwardName="";
		try{
		BeanMenuNivel1 mecbean=mecSave(menunivel1Form, request);
		System.out.println("entro aqui primero ");
		
		if(mecbean.getIntmecId() == 0){
			ActionMessages mensaje = new ActionMessages();
			mensaje.add("mensaje", new ActionMessage("menunivel1Form.mecNew.error.error"));
			saveErrors(request, mensaje);
			menunivel1Form.set("flagConfirm","ERROR");
			menunivel1Form.set("strmecNombreMenu", mecbean.getStrmecNombreMenu());
			forwardName = "mecNew";	
			
		}else{
			if(menunivel1Form.getString("saveandadd").equals("saveandadd")){
			ActionMessages mensaje = new ActionMessages();
			mensaje.add("mensaje", new ActionMessage("menunivel1Form.mecNew.ok.ok"));
			saveErrors(request, mensaje);
			menunivel1Form.set("flagConfirm","OK");
			limpiar(menunivel1Form);
			forwardName = "mecNew";
			}else if(menunivel1Form.getString("saveandadd").equals("save")){
			menunivel1Form.set("flagConfirm","OKINSERT");
			forwardName = "mecListSearch";
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

	private BeanMenuNivel1 mecSave(DynaActionForm form,
			HttpServletRequest request) throws Exception {
		Date dtemecFechaIngreso=new Date();
	    Date dtemecFechaUpdate=new Date();
	    /*
	    BeanPersona perbean=(BeanPersona)request.getSession().getAttribute("beanPersona");
	    BeanUsuario usubean=ususervice.usuBuscarUserXId(perbean.getIntusuId());
		*/
	
    	BeanMenuNivel1 bean = new BeanMenuNivel1();
    	bean.setIntmecId(0);
    	bean.setStrmecMenu(form.getString("strmecMenu"));;
    	bean.setDtemecFechaIngreso(dtemecFechaIngreso);
    	bean.setDtemecFechaUpdate(dtemecFechaUpdate);
    	bean.setStrmecUserIngreso("hrojas");
    	bean.setStrmecUserUpdate("hrojas");
    	bean.setStrmecLocale(form.getString("strmecLocale"));
    	bean.setStrmecTipoSistema(form.getString("strmecTipoSistema"));
    	bean.setStrmecNombreImagen(form.getString("strmecNombreImagen"));
    	bean.setStrmecNombrePdf(form.getString("strmecNombrePdf"));
    	bean.setStrmecNombreMenu(form.getString("strmecNombreMenu"));
    	bean.setStrmecTwitterCard(form.getString("strmecTwitterCard"));
    	bean.setStrmecTwitterSite(form.getString("strmecTwitterSite"));
    	bean.setStrmecTwitterCreator(form.getString("strmecTwitterCreator"));
    	bean.setStrmecTwitterTitle(form.getString("strmecTwitterTitle"));
    	bean.setStrmecTwitterDescription(form.getString("strmecTwitterDescription"));
    	bean.setStrmecTwitterImage(form.getString("strmecTwitterImage"));
    	bean.setStrmecGoogleName(form.getString("strmecGoogleName"));
    	bean.setStrmecGoogleDescription(form.getString("strmecGoogleDescription"));
    	bean.setStrmecGoogleImage(form.getString("strmecGoogleImage"));
    	bean.setStrmecOgTitle(form.getString("strmecOgTitle"));
    	bean.setStrmecOgType(form.getString("strmecOgType"));
    	bean.setStrmecOgUrl(form.getString("strmecOgUrl"));
    	bean.setStrmecOgImage(form.getString("strmecOgImage"));
    	bean.setStrmecOgDescription(form.getString("strmecOgDescription"));
    	bean.setStrmecOgSite_name(form.getString("strmecOgSite_name"));
    	bean.setStrmecMuestraContenido(form.getString("strmecMuestraContenido"));
    	bean.setIntmecNivelUsuario((Integer)form.get("intmecNivelUsuario"));
       	bean.setStrmecEstado(form.getString("strmecEstado"));
       	bean.setStrmecEvento(form.getString("strmecEvento"));
       	bean.setIntmecPosicion((Integer)form.get("intmecPosicion"));

        mecservice.mecInsert(bean);
       return bean;
	}

	@SuppressWarnings("rawtypes")
	private String mecNew(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response) {
		DynaActionForm menunivel1Form = (DynaActionForm)form;
		menunivel1Form.set("flagConfirm","FALSE");
		String forwardName = "";
		limpiar(menunivel1Form);
		
		BeanEstado  estbeanmenunivel1= new BeanEstado();
		estbeanmenunivel1.setStrestLocale("es_PE");//CAMBIAR ESTE DATO SETEADO
		estbeanmenunivel1.setStrestParaModulo("menunivel1");
		
		BeanEstado  estbeantiposistema= new BeanEstado();
		estbeantiposistema.setStrestLocale("es_PE");//CAMBIAR ESTE DATO SETEADO
		estbeantiposistema.setStrestParaModulo("tiposistema");
		
		BeanEstado  estbeanmostrarcontenido= new BeanEstado();
		estbeanmostrarcontenido.setStrestLocale("es_PE");//CAMBIAR ESTE DATO SETEADO
		estbeanmostrarcontenido.setStrestParaModulo("mostrarcontenido");
		try {
			ArrayList mecListMenuNivel1=estservice.allEstadoModulo(estbeanmenunivel1);
			menunivel1Form.set("mecListMenuNivel1",mecListMenuNivel1);	

			ArrayList mecListTipoSistema=estservice.allEstadoModulo(estbeantiposistema);
			menunivel1Form.set("mecListTipoSistema",mecListTipoSistema);	
			
			ArrayList mecListMostrarContenido=estservice.allEstadoModulo(estbeanmostrarcontenido);
			menunivel1Form.set("mecListMostrarContenido",mecListMostrarContenido);	
			
			forwardName="mecNew";
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			forwardName = "error";
		}
		
		
		return forwardName;
	}

	@SuppressWarnings("rawtypes")
	private String mecSearch(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response) {
        DynaActionForm menunivel1Form = (DynaActionForm)form;
        String forwardName = "";
        
		BeanMenuNivel1 mecbean=new BeanMenuNivel1();
		mecbean.setStrmecNombreMenu("%%");
		mecbean.setStrmecLocale("es_PE");

		try {
			
			ArrayList mecListSearch = mecservice.mecSearchList(mecbean);
			menunivel1Form.set("mecListSearch", mecListSearch);
			System.out.println("Tamaño :"+mecListSearch.size());
			menunivel1Form.set("flagConfirm","FALSE");
			
			forwardName="mecListSearch";
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			forwardName = "error";
		}
		
		
		return forwardName;
	}
	private void limpiar(DynaActionForm menunivel1Form){		 
		        menunivel1Form.set("strmecMenu","");
				menunivel1Form.set("strmecLocale","");
				menunivel1Form.set("strmecTipoSistema","");
				menunivel1Form.set("strmecNombreImagen","");
				menunivel1Form.set("strmecNombrePdf","");
				menunivel1Form.set("strmecNombreMenu","");
				menunivel1Form.set("strmecTwitterCard","");
				menunivel1Form.set("strmecTwitterSite","");
				menunivel1Form.set("strmecTwitterCreator","");
				menunivel1Form.set("strmecTwitterTitle","");
				menunivel1Form.set("strmecTwitterDescription","");
				menunivel1Form.set("strmecTwitterImage","");
				menunivel1Form.set("strmecGoogleName","");
				menunivel1Form.set("strmecGoogleDescription","");
				menunivel1Form.set("strmecGoogleImage","");
				menunivel1Form.set("strmecOgTitle","");
				menunivel1Form.set("strmecOgType","");
				menunivel1Form.set("strmecOgUrl","");
				menunivel1Form.set("strmecOgImage","");
				menunivel1Form.set("strmecOgDescription","");
				menunivel1Form.set("strmecOgSite_name","");
				menunivel1Form.set("strmecMuestraContenido","");
				menunivel1Form.set("intmecNivelUsuario",0);
				menunivel1Form.set("strmecEstado","");
				menunivel1Form.set("strmecEvento","");
				menunivel1Form.set("intmecPosicion", 0);
	}
	
	
	
}
