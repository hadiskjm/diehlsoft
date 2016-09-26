package services;

import java.util.ArrayList;

import bean.BeanMenuNivel3;
import dao.MenuNivel3DAO;
import factories.DAOFactory;

public class MenuNivel3Service {
	
	private DAOFactory objDAOFactory = DAOFactory.getDAOFactory(1);
	private MenuNivel3DAO objMenuNivel3DAO =objDAOFactory.getMenuNivel3DAO();

	public BeanMenuNivel3 metInsert(BeanMenuNivel3 bean) throws Exception{
		BeanMenuNivel3 bean2=objMenuNivel3DAO.metInsert(bean);
		return bean2;
	}
	public BeanMenuNivel3 metUpdate(BeanMenuNivel3 bean) throws Exception{
		BeanMenuNivel3 bean2=objMenuNivel3DAO.metUpdate(bean);
		return bean2;
	}
	public BeanMenuNivel3 metSearchxid(int p_intmetId) throws Exception{
		BeanMenuNivel3 bean=objMenuNivel3DAO.metSearchxid(p_intmetId);
		return bean;
	}
	@SuppressWarnings("rawtypes")
	public ArrayList metSearchList(BeanMenuNivel3 bean) throws Exception{
		ArrayList lista=objMenuNivel3DAO.metSearchList(bean);
		return lista;
	}
	@SuppressWarnings("rawtypes")
	public ArrayList metList(BeanMenuNivel3 bean) throws Exception{
		ArrayList lista=objMenuNivel3DAO.metList(bean);
		return lista;
	}
}
