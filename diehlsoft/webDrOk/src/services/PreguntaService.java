package services;

import java.util.ArrayList;

import dao.PreguntaDAO;
import factories.DAOFactory;

public class PreguntaService {
	
	private DAOFactory objDAOFactory = DAOFactory.getDAOFactory(1);
	private PreguntaDAO objPreguntaDao = objDAOFactory.getPreguntaDAO();
	
	@SuppressWarnings("rawtypes")
	public ArrayList pagList(String p_strpgaLevel) throws Exception {
		ArrayList lista=objPreguntaDao.pagList(p_strpgaLevel);
		return lista;
	}

}
