package services;

import java.util.ArrayList;

import bean.BeanMenuNivel1;
import dao.MenuNivel1DAO;
import factories.DAOFactory;

public class MenuNivel1Service {
	
	private DAOFactory objDAOFactory = DAOFactory.getDAOFactory(1);
	private MenuNivel1DAO objMenuNivel1DAO =objDAOFactory.getMenuNivel1DAO();

	public BeanMenuNivel1 mecInsert(BeanMenuNivel1 bean) throws Exception{
		BeanMenuNivel1 bean2=objMenuNivel1DAO.mecInsert(bean);
		return bean2;
	}
	public BeanMenuNivel1 mecUpdate(BeanMenuNivel1 bean) throws Exception{
		BeanMenuNivel1 bean2=objMenuNivel1DAO.mecUpdate(bean);
		return bean2;
	}
	public BeanMenuNivel1 mecSearchxid(int p_intmecId) throws Exception{
		BeanMenuNivel1 bean=objMenuNivel1DAO.mecSearchxid(p_intmecId);
		return bean;
	}
	@SuppressWarnings("rawtypes")
	public ArrayList mecSearchList(BeanMenuNivel1 bean) throws Exception{
		ArrayList lista=objMenuNivel1DAO.mecSearchList(bean);
		return lista;
	}
	
	@SuppressWarnings("rawtypes")
	public ArrayList mecList(BeanMenuNivel1 bean) throws Exception{
		ArrayList lista=objMenuNivel1DAO.mecList(bean);
		return lista;
	}
}
