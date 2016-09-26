package services;

import java.util.ArrayList;

import bean.BeanPersona;
import dao.PersonaDAO;
import factories.DAOFactory;

public class PersonaService {
	
	private DAOFactory objDAOFactory = DAOFactory.getDAOFactory(1);
	private PersonaDAO objPersonaDao =objDAOFactory.getPersonaDAO();
	
	public BeanPersona perObtenerxUsuarioId(int intusuId) throws Exception{
		BeanPersona bean=objPersonaDao.perObtenerxUsuarioId(intusuId);
		
		return bean;
	}
	
	public BeanPersona perInsert(BeanPersona bean) throws Exception{
		BeanPersona bean2=objPersonaDao.perInsert(bean);
		return bean2;
	}
	
	@SuppressWarnings("rawtypes")
	public ArrayList perSearchList(BeanPersona bean) throws Exception {
		ArrayList lista=objPersonaDao.perSearchList(bean);
		return lista;
	}
}
