package services;

import java.util.ArrayList;

import dao.AlternativaDAO;
import factories.DAOFactory;

public class AlternativaService {
	
	private DAOFactory objDAOFactory = DAOFactory.getDAOFactory(1);
	private AlternativaDAO objAlternativaDAO = objDAOFactory.getAlternativaDAO();
	
	@SuppressWarnings("rawtypes")
	public ArrayList altListXPregunta(int p_intpgaId) throws Exception {
		ArrayList lista=objAlternativaDAO.altListXPregunta(p_intpgaId);
		return lista;
	}

}
