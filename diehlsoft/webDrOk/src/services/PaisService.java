package services;

import java.util.ArrayList;

import dao.PaisDAO;
import factories.DAOFactory;

public class PaisService {
	
	private DAOFactory objDAOFactory = DAOFactory.getDAOFactory(1);
	private PaisDAO objPaisDao =objDAOFactory.getPaisDAO();
	
	@SuppressWarnings("rawtypes")
	public ArrayList pisListaPais() throws Exception{
	      ArrayList lista=objPaisDao.pisListaPais();
	      return lista;
	}
}
