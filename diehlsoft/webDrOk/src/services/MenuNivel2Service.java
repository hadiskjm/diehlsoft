package services;

import java.util.ArrayList;

import bean.BeanMenuNivel2;
import dao.MenuNivel2DAO;
import factories.DAOFactory;

public class MenuNivel2Service {
	
	private DAOFactory objDAOFactory = DAOFactory.getDAOFactory(1);
	private MenuNivel2DAO objMenuNivel2DAO =objDAOFactory.getMenuNivel2DAO();

	public BeanMenuNivel2 medInsert(BeanMenuNivel2 bean) throws Exception{
		BeanMenuNivel2 bean2=objMenuNivel2DAO.medInsert(bean);
		return bean2;
	}
	public BeanMenuNivel2 medUpdate(BeanMenuNivel2 bean) throws Exception{
		BeanMenuNivel2 bean2=objMenuNivel2DAO.medUpdate(bean);
		return bean2;
	}
	public BeanMenuNivel2 medSearchxid(int p_intmedId) throws Exception{
		BeanMenuNivel2 bean=objMenuNivel2DAO.medSearchxid(p_intmedId);
		return bean;
	}
	@SuppressWarnings("rawtypes")
	public ArrayList medSearchList(BeanMenuNivel2 bean) throws Exception{
		ArrayList lista=objMenuNivel2DAO.medSearchList(bean);
		return lista;
	}
	@SuppressWarnings("rawtypes")
	public ArrayList medList(BeanMenuNivel2 bean) throws Exception{
		ArrayList lista=objMenuNivel2DAO.medList(bean);
		return lista;
	}
}
