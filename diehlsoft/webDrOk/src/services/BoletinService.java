package services;

import java.util.ArrayList;

import bean.BeanBoletin;
import dao.BoletinDAO;
import factories.DAOFactory;

public class BoletinService {
	
	private DAOFactory objDAOFactory = DAOFactory.getDAOFactory(1);
	private BoletinDAO objBoletinDAO =objDAOFactory.getBoletinDAO();
	
	public BeanBoletin bolSearchxid(int p_intbolId) throws Exception{
		BeanBoletin bean=objBoletinDAO.bolSearchxid(p_intbolId);
		return bean;
	}
	public BeanBoletin bolDelete(BeanBoletin bean) throws Exception{
		BeanBoletin bean2=objBoletinDAO.bolDelete(bean);
		return bean2;
	}
	public BeanBoletin bolUpdate(BeanBoletin bean) throws Exception{
		BeanBoletin bean2=objBoletinDAO.bolUpdate(bean);
		return bean2;
	}
	public BeanBoletin bolInsert(BeanBoletin bean) throws Exception{
		BeanBoletin bean2=objBoletinDAO.bolInsert(bean);
		return bean2;
	}
	@SuppressWarnings("rawtypes")
	public ArrayList bolSearchList(BeanBoletin bean) throws Exception{
		ArrayList lista=objBoletinDAO.bolSearchList(bean);
		return lista;
	}
	
	@SuppressWarnings("rawtypes")
	public ArrayList bolSearchListBack() throws Exception{
		ArrayList lista=objBoletinDAO.bolSearchListBack();
		return lista;
	}

}
