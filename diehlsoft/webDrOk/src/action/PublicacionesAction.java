package action;



import java.util.List;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import org.apache.struts.action.DynaActionForm;


import services.ActualidadLaboralService;
import services.BoletinService;
import services.EstadoService;
import services.PerfilService;
import services.UsuarioService;
import bean.BeanActualidadLaboral;
import bean.BeanBoletin;


public class PublicacionesAction extends Action{
	String url="";
	
	UsuarioService ususervice=new UsuarioService();
	PerfilService pefservice=new PerfilService();
	EstadoService estservice=new EstadoService();
	ActualidadLaboralService aclservice=new ActualidadLaboralService();
	BoletinService bolservice=new BoletinService();
	
	public ActionForward execute(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {
	
	    	String forwardName = "error";
			String parametro = request.getParameter("event");
			System.out.println("parametro recibido"+parametro);
			
	
			if (parametro.equals("publicacionesPublic")) {
				forwardName =publicacionesPublic(mapping, form, request, response);
				System.out.println("Enviando al action :"+forwardName);
			}
			
			return mapping.findForward(forwardName);
	}

	
	private String publicacionesPublic(ActionMapping mapping,
			ActionForm form, HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		int p_intbolId=0;
		DynaActionForm actualidadLaboralForm = (DynaActionForm)form;
		

		List<BeanActualidadLaboral> aclSearchListxestado=aclservice.aclSearchListxestado("PUBLICADO");
		actualidadLaboralForm.set("aclSearchListxestado", aclSearchListxestado);
		
		if(aclSearchListxestado !=null){
			for(BeanActualidadLaboral aclbean : aclSearchListxestado){
				p_intbolId=aclbean.getIntbolId();
			}}else{
				System.out.println("no hay data la tabla");
			}
		
        BeanBoletin bolbean=bolservice.bolSearchxid(p_intbolId);
		
		actualidadLaboralForm.set("intbolId", bolbean.getIntbolId());
		actualidadLaboralForm.set("strbolFile", bolbean.getStrbolFile());
		return "publicacionesPublic";
	}
	
	
	
}
