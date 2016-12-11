package action;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;
import org.apache.struts.action.DynaActionForm;

import bean.BeanEstado;
import services.AlternativaService;
import services.PreguntaService;

public class EvaluacionAction extends Action{
	 PreguntaService pgaservice=new PreguntaService();
	 AlternativaService altservice=new AlternativaService();
	public ActionForward execute(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception { 
		
		   
	
	    	String forwardName = "error";
			String parametro = request.getParameter("event");
			System.out.println("parametro recibido"+parametro);
			
			if (parametro.equals("pgaList")) {
				forwardName =pgaList(mapping, form, request, response);
				System.out.println("Enviando al action :"+forwardName);
			}
			
			return mapping.findForward(forwardName);
	}

	@SuppressWarnings("rawtypes")
	private String pgaList(ActionMapping mapping, ActionForm form, HttpServletRequest request,
			HttpServletResponse response) {
		DynaActionForm preguntaNivel1Form = (DynaActionForm)form;
		String forwardName = "";

		BeanEstado  estbeantiposistema= new BeanEstado();
		estbeantiposistema.setStrestLocale("es_PE");//CAMBIAR ESTE DATO SETEADO
		estbeantiposistema.setStrestParaModulo("tiposistema");

		try {

			ArrayList pagList=pgaservice.pagList("nivel1");
			preguntaNivel1Form.set("pagList",pagList);	
			
			ArrayList altListXPregunta=altservice.altListXPregunta();
			preguntaNivel1Form.set("altListXPregunta", altListXPregunta);
			
			forwardName="pagList";
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			forwardName = "error";
		}
		
		
		return forwardName;
	}
	

}
