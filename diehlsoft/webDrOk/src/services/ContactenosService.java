package services;

import java.util.ArrayList;

import bean.BeanContactenos;
import dao.ContactenosDAO;
import factories.DAOFactory;

public class ContactenosService {
       
	private DAOFactory objDAOFactory = DAOFactory.getDAOFactory(1);
	private ContactenosDAO objContactenosDAO =objDAOFactory.getContactenosDAO();
	
	public BeanContactenos conInsert(BeanContactenos bean) throws Exception{
		BeanContactenos bean2=objContactenosDAO.conInsert(bean);
		return bean2;
	}
	@SuppressWarnings("rawtypes")
	public ArrayList conSearchList() throws Exception{
		ArrayList lista=objContactenosDAO.conSearchList();
		return lista;
	}
}
