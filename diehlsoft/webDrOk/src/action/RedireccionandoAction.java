package action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;


public class RedireccionandoAction extends Action {

	public ActionForward execute ( ActionMapping mapping,
            ActionForm form,
            HttpServletRequest request,
            HttpServletResponse response)
            throws Exception {

		String forwardName = "failure";
		String parametro = request.getParameter("event");
		
		if (parametro.equals("consultarVacacionesPorArea")) {
			System.out.println("Enviando perfilSearch");
			forwardName = "consultarVacacionesPorArea";
		}
		if (parametro.equals("actualidadLaboralPublic")) {
			System.out.println("Enviando home");
			forwardName = "actualidadLaboralPublic";
		}
		if (parametro.equals("resumenXAnno")) {
			System.out.println("Enviando perfilSearch");
			forwardName = "resumenXAnno";
		}
		if (parametro.equals("registrarVacacionesAdicionales")) {
			System.out.println("Enviando administrarExpedientes");
			forwardName = "administrarExpedientes";
		}
		if (parametro.equals("nuevoExpediente")) {
			System.out.println("Enviando nuevoExpediente");
			forwardName = "nuevoExpediente";
		}
		if (parametro.equals("nuevoActosProcesales")) {
			System.out.println("Enviando nuevoActosProcesales");
			forwardName = "nuevoActosProcesales";
		}
		if (parametro.equals("consultarTarea")) {
			System.out.println("Enviando consultarTarea");
			forwardName = "consultarTarea";
		}
		if (parametro.equals("nuevoTarea")) {
			System.out.println("Enviando nuevoTarea");
			forwardName = "nuevoTarea";
		}
		if (parametro.equals("perfilSearch")) {
			System.out.println("Enviando perfilSearch");
			forwardName = "perfilSearch";
		}
		if (parametro.equals("opcionPerfilSearch")) {
			System.out.println("Enviando opcionPerfilSearch");
			forwardName = "opcionPerfilSearch";
		}
		if (parametro.equals("boletinSearch")) {
			System.out.println("Enviando boletinSearch");
			forwardName = "boletinSearch";
		}
		if (parametro.equals("imagenSearch")) {
			System.out.println("Enviando imagenSearch");
			forwardName = "imagenSearch";
		}
		if (parametro.equals("criterioPublic")) {
			System.out.println("Enviando criterioPublic");
			forwardName = "criterioPublic";
		}
		if (parametro.equals("gestionPersonasPublic")) {
			System.out.println("Enviando gestionPersonasPublic");
			forwardName = "gestionPersonasPublic";
		}
		if (parametro.equals("regulacionLaboralPublic")) {
			System.out.println("Enviando regulacionLaboralPublic");
			forwardName = "regulacionLaboralPublic";
		}
		if (parametro.equals("notasPrensaPublic")) {
			System.out.println("Enviando notasPrensaPublic");
			forwardName = "notasPrensaPublic";
		}
		if (parametro.equals("publicacionesPublic")) {
			System.out.println("Enviando publicacionesPublic");
			forwardName = "publicacionesPublic";
		}
		if (parametro.equals("homeEducation")) {
			System.out.println("Enviando homeEducation");
			forwardName = "homeEducation";
		}
		if (parametro.equals("homeNews")) {
			System.out.println("Enviando homeNews");
			forwardName = "homeNews";
		}
		if (parametro.equals("homeCorp")) {
			System.out.println("Enviando homeCorp");
			forwardName = "homeCorp";
		}
		if (parametro.equals("mecSearch")) {
			System.out.println("Enviando mecSearch");
			forwardName = "mecSearch";
		}
		if (parametro.equals("medSearch")) {
			System.out.println("Enviando medSearch");
			forwardName = "medSearch";
		}
		if (parametro.equals("metSearch")) {
			System.out.println("Enviando metSearch");
			forwardName = "metSearch";
		}
		if (parametro.equals("conSearch")) {
			System.out.println("Enviando conSearch");
			forwardName = "conSearch";
		}
		if (parametro.equals("tcnSearch")) {
			System.out.println("Enviando tcnSearch");
			forwardName = "tcnSearch";
		}
		if (parametro.equals("perNew")) {
			System.out.println("Enviando perNew");
			forwardName = "perNew";
		}
		if (parametro.equals("aviso")) {
			System.out.println("Enviando aviso");
			forwardName = "aviso";
		}
		return mapping.findForward(forwardName);
	}

}
