package action;


import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
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
import org.apache.struts.upload.FormFile;

import services.EstadoService;
import services.ImagenService;
import services.PerfilService;
import services.UsuarioService;
import bean.BeanImagen;
import bean.BeanEstado;
import bean.BeanPerfil;
import bean.BeanPersona;
import bean.BeanUsuario;

public class ImagenAction extends Action{
	String url="";
	
	UsuarioService ususervice=new UsuarioService();
	PerfilService pefservice=new PerfilService();
	EstadoService estservice=new EstadoService();
	ImagenService imgservice=new ImagenService();
	
	public ActionForward execute(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {
	
	    	String forwardName = "error";
			String parametro = request.getParameter("event");
			System.out.println("parametro recibido"+parametro);
			
			if (parametro.equals("imgSave")) {
				forwardName =imgInsert(mapping, form, request, response);
				System.out.println("Enviando al action :"+forwardName);
			}
			if (parametro.equals("imagenSearch")) {
				forwardName =imagenSearch(mapping, form, request, response);
				System.out.println("Enviando al action :"+forwardName);
			}
			if (parametro.equals("imgSearch")) {
				forwardName =imgSearch(mapping, form, request, response);
				System.out.println("Enviando al action :"+forwardName);
			}
			if (parametro.equals("imgNew")) {
				forwardName =imgNew(mapping, form, request, response);
				System.out.println("Enviando al action :"+forwardName);
			}
			if (parametro.equals("imgUpdate")) {
				forwardName =imgUpdate(mapping, form, request, response);
				System.out.println("Enviando al action :"+forwardName);
			}
			if (parametro.equals("imgsaveUpdate")) {
				forwardName =imgsaveUpdate(mapping, form, request, response);
				System.out.println("Enviando al action :"+forwardName);
			}
			if (parametro.equals("pefDelete")) {
				forwardName =saveActiveInactive(mapping, form, request, response);
				System.out.println("Enviando al action :"+forwardName);
			}
			if (parametro.equals("imgSelect")) {
				forwardName =imgSelect(mapping, form, request, response);
				System.out.println("Enviando al action :"+forwardName);
			}
			if (parametro.equals("imgModCamList")) {
				forwardName =imgModCamList(mapping, form, request, response);
				System.out.println("Enviando al action :"+forwardName);
			}
			if (parametro.equals("imgDelete")) {
				forwardName =imgDelete(mapping, form, request, response);
				System.out.println("Enviando al action :"+forwardName);
			}
			return mapping.findForward(forwardName);
	}
	private String imgDelete(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response) {
		DynaActionForm imagenForm = (DynaActionForm)form;
		Integer p_intimgId=(Integer)imagenForm.get("intimgId");
		
		
		
		BeanImagen bean = new BeanImagen();
    	bean.setIntimgId(p_intimgId);
    	bean.setIntimgMensaje(0);
    	
		String forwardName="";
		BeanImagen imgbean;
		try {
			BeanImagen imgbeandel=imgservice.imgSearchxid(p_intimgId);
			imgbean = imgDelete(bean);

		if(imgbean.getIntimgMensaje()==1){

			
			
			File fichero = new File(this.getServlet().getServletContext().getRealPath("/Archivos/userfiles/")+"/"+imgbeandel.getStrimgModulo()+"/"+"/"+imgbeandel.getStrimgNombre().toString());
			if (fichero.delete()){
				limpiar(imagenForm);
				imagenForm.set("flagConfirm","OKOKOKOK");
				forwardName="imagenSearch";
			}else {
				System.out.println("error 1");
				imagenForm.set("flagConfirm","ERROR");
				forwardName ="imagenSearch";
				
			}

		}else if(imgbean.getIntimgMensaje()==2){
			System.out.println("error 2");
			imagenForm.set("flagConfirm","ERROR");
			forwardName ="imagenSearch";
			}
		
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			forwardName = "error";
		}
		
		return forwardName;
	}
	private BeanImagen imgDelete(BeanImagen bean) throws Exception {

       imgservice.imgDelete(bean);
       return bean;
	}
	@SuppressWarnings("rawtypes")
	private String imgModCamList(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response) throws Exception {
		DynaActionForm imagenForm = (DynaActionForm)form;
		
		BeanImagen bean=new BeanImagen();
		bean.setStrimgModulo(imagenForm.getString("strimgModulo")+"%");
		
		ArrayList imgModCamList=imgservice.imgModCamList(bean);
		imagenForm.set("imgModCamList", imgModCamList);
		
		return "imgModCamList";
	}
	private String imgSelect(ActionMapping mapping,
			ActionForm form, HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		DynaActionForm imagenForm = (DynaActionForm)form;
		
		BeanPersona perbean=(BeanPersona)request.getSession().getAttribute("beanPersona");
		
		BeanEstado  estbeanModulo= new BeanEstado();
		estbeanModulo.setStrestLocale(perbean.getStrperLocale());
		estbeanModulo.setStrestParaModulo("imagenModulo");
		
		BeanEstado  estbeanCampana= new BeanEstado();
		estbeanCampana.setStrestLocale(perbean.getStrperLocale());
		estbeanCampana.setStrestParaModulo("imagenCampana");
		
		@SuppressWarnings("rawtypes")
		ArrayList imgModuloModuloEstado=estservice.allEstadoModulo(estbeanModulo);
		imagenForm.set("imgModuloModuloEstado",imgModuloModuloEstado);	
		
		@SuppressWarnings("rawtypes")
		ArrayList imgCampanaModuloEstado=estservice.allEstadoModulo(estbeanCampana);
		imagenForm.set("imgCampanaModuloEstado",imgCampanaModuloEstado);	

		return "imgSelect";
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
	private String imgsaveUpdate(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response) throws Exception {
		DynaActionForm imagenForm = (DynaActionForm)form;
		BeanImagen imgbean=imgSaveUpdate(imagenForm, request);
		String forwardName="";
		if(imgbean.getIntimgMensaje()==1){
			limpiar(imagenForm);
			imagenForm.set("flagConfirm","OKOKOK");
			forwardName="imagenSearch";
		}else if(imgbean.getIntimgMensaje()==2){
			ActionMessages mensaje = new ActionMessages();
			mensaje.add("mensaje", new ActionMessage("imagenForm.imagenUpdate.error.error"));
			saveErrors(request, mensaje);
			imagenForm.set("flagConfirm","ERROR");
			imagenForm.set("strimgNombreLbl", imgbean.getStrimgNombre());
			forwardName = "imgUpdate";
			}
		return forwardName;
	}
	@SuppressWarnings("rawtypes")
	private String imgUpdate(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response) throws Exception {
		DynaActionForm imagenForm = (DynaActionForm)form;
		Integer p_intimgId=(Integer)imagenForm.get("intimgId");
		BeanImagen imgbean=imgservice.imgSearchxid(p_intimgId);
		String forwardName="";
		
		if(imgbean != null){
			BeanEstado  estbean= new BeanEstado();
			estbean.setStrestLocale("es_PE");//CAMBIAR ESTE DATO SETEADO
			estbean.setStrestParaModulo("imagen");
			
			BeanEstado  estbeanModulo= new BeanEstado();
			estbeanModulo.setStrestLocale("es_PE");//CAMBIAR ESTE DATO SETEADO
			estbeanModulo.setStrestParaModulo("imagenModulo");
			
			ArrayList imgModuloEstado=estservice.allEstadoModulo(estbean);
			imagenForm.set("imgModuloEstado",imgModuloEstado);	
			
			ArrayList imgModuloModuloEstado=estservice.allEstadoModulo(estbeanModulo);
			imagenForm.set("imgModuloModuloEstado",imgModuloModuloEstado);	

			
			imagenForm.set("intimgId", imgbean.getIntimgId());
			imagenForm.set("strimgNombreLbl", imgbean.getStrimgNombre());
			imagenForm.set("strimgEstado", imgbean.getStrimgEstado());
		    imagenForm.set("strimgModulo", imgbean.getStrimgModulo());
			imagenForm.set("flagConfirm","FALSE");
		
		forwardName="imgUpdate";
		}else{
			forwardName="imagenSearch";
			limpiar(imagenForm);
		}
		return forwardName;
	}
	private String imgNew(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response) {
		DynaActionForm imagenForm = (DynaActionForm)form;
		imagenForm.set("flagConfirm","FALSE");
		return "imgNew";
	}
	@SuppressWarnings("rawtypes")
	private String imgSearch(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response) throws Exception {
		DynaActionForm imagenForm = (DynaActionForm)form;
		
		BeanImagen bean=new BeanImagen();
		bean.setStrimgNombre("%"+imagenForm.getString("strimgNombrexMostrar")+"%");
		bean.setStrimgModulo(imagenForm.getString("strimgModulo")+"%");
		bean.setStrimgEstado(imagenForm.getString("strimgEstado")+"%");
		
		ArrayList imgSearchList=imgservice.imgSearchList(bean);

		imagenForm.set("imgSearchList", imgSearchList);
		imagenForm.set("flagConfirm","FALSE");
		limpiar(imagenForm);
		return "imgSearchList";
	}
	@SuppressWarnings("rawtypes")
	private String imagenSearch(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response) throws Exception {
		DynaActionForm imagenForm = (DynaActionForm)form;
		
		//BeanPersona perbean=(BeanPersona)request.getSession().getAttribute("beanPersona");
		
		BeanEstado  estbean= new BeanEstado();
		estbean.setStrestLocale("es_PE");//CAMBIAR ESTE DATO SETEADO
		estbean.setStrestParaModulo("imagen");
		
		BeanEstado  estbeanModulo= new BeanEstado();
		estbeanModulo.setStrestLocale("es_PE");//CAMBIAR ESTE DATO SETEADO
		estbeanModulo.setStrestParaModulo("imagenModulo");
		
		ArrayList imgModuloEstado=estservice.allEstadoModulo(estbean);
		imagenForm.set("imgModuloEstado",imgModuloEstado);	
		
		ArrayList imgModuloModuloEstado=estservice.allEstadoModulo(estbeanModulo);
		imagenForm.set("imgModuloModuloEstado",imgModuloModuloEstado);	

		BeanImagen beanimg=new BeanImagen();
		beanimg.setStrimgNombre("%%");
		beanimg.setStrimgModulo("%%");
		beanimg.setStrimgEstado("%%");
		
		
		ArrayList imgSearchList=imgservice.imgSearchList(beanimg);
		imagenForm.set("imgSearchList", imgSearchList);
		imagenForm.set("flagConfirm","FALSE");
		
		return "imgModuloEstado";
	}
	private String imgInsert(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response) throws Exception {
		DynaActionForm imagenForm = (DynaActionForm)form;
		BeanImagen imgbean=imgSave(imagenForm, request);
		System.out.println("entro aqui primero ");
		String forwardName="";
		if(imgbean.getIntimgId() == 0){
			ActionMessages mensaje = new ActionMessages();
			mensaje.add("mensaje", new ActionMessage("imagenForm.imagenNew.error.error"));
			saveErrors(request, mensaje);
			imagenForm.set("flagConfirm","ERROR");
			imagenForm.set("strimgModulo", imgbean.getStrimgNombre());
			forwardName = "imgNew";	
			
		}else{
			if(imagenForm.getString("saveandadd").equals("saveandadd")){
			System.out.println("url :"+url);
			ActionMessages mensaje = new ActionMessages();
			mensaje.add("mensaje", new ActionMessage("imagenForm.imagenNew.ok.ok"));
			saveErrors(request, mensaje);
			imagenForm.set("flagConfirm","OK");
			forwardName = "imgNew";
			}else if(imagenForm.getString("saveandadd").equals("save")){
		    System.out.println("url :"+url);
			imagenForm.set("flagConfirm","OKOK");
			forwardName = "imagenSearch";
			}
				
		}	
		return forwardName;
	}
	
	 private BeanImagen imgSave(DynaActionForm form,HttpServletRequest request) throws Exception {
		    Date dteimgFechaIngreso=new Date();
		    Date dteimgFechaUpdate=new Date();
		    /*
		    BeanPersona perbean=(BeanPersona)request.getSession().getAttribute("beanPersona");
		    BeanUsuario usubean=ususervice.usuBuscarUserXId(perbean.getIntusuId());
			*/
		    imgFile(form);	
			
	    	BeanImagen bean = new BeanImagen();
	    	bean.setIntimgId(0);
	    	bean.setStrimgNombre(url);
	    	bean.setStrimgModulo(form.getString("strimgModulo"));
	    	bean.setDteimgFechaIngreso(dteimgFechaIngreso);
	    	bean.setDteimgFechaUpdate(dteimgFechaUpdate);
	    	bean.setStrimgUserIngreso("hrojas");
	    	bean.setStrimgUserUpdate("hrojas");
	    	bean.setStrimgEstado(form.getString("strimgEstado"));
	
	        imgservice.imgInsert(bean);
	       return bean;
	}
	 private BeanImagen imgSaveUpdate(DynaActionForm form,HttpServletRequest request) throws Exception {
		    Date dteimgFechaUpdate=new Date();
		    BeanPersona perbean=(BeanPersona)request.getSession().getAttribute("beanPersona");
		    BeanUsuario usubean=ususervice.usuBuscarUserXId(perbean.getIntusuId());
            
		    imgFile(form);	
		    
	    	BeanImagen bean = new BeanImagen();
	    	bean.setIntimgId((int) form.get("intimgId"));
	    	bean.setStrimgNombre(url);
	    	bean.setStrimgModulo(form.getString("strimgModulo"));
	    	bean.setDteimgFechaUpdate(dteimgFechaUpdate);
	    	bean.setStrimgUserUpdate(usubean.getStrusuUserDesc());
	    	bean.setStrimgEstado(form.getString("strimgEstado"));
	    	bean.setIntimgMensaje(0);
	
	       imgservice.imgUpdate(bean);
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
	 private void limpiar(DynaActionForm imagenForm){		 
		 imagenForm.set("strimgNombrexMostrar","");
	}
	
	 private void  imgFile(ActionForm form){
		 DynaActionForm imagenForm =(DynaActionForm)form;
		 FileOutputStream fileoutputstream = null;
		 
			try
			{
				FormFile fichero =(FormFile) imagenForm.get("strimgNombre");
				
				//String ruta = this.getServlet().getServletContext().getRealPath("/imgSubidas/")+"/"+fichero.getFileName(); //en linux
				//String ruta = this.getServlet().getServletContext().getRealPath("\\Archivos\\userfiles\\")+"\\"+imagenForm.getString("strimgModulo")+"\\"+"\\"+fichero.getFileName(); //en windows
				String ruta = this.getServlet().getServletContext().getRealPath("/Archivos/userfiles/")+"/"+imagenForm.getString("strimgModulo")+"/"+"/"+fichero.getFileName(); //en linux
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
