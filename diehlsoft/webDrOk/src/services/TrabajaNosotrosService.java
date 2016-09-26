package services;

import java.util.ArrayList;

import bean.BeanTrabajaNosotros;
import dao.TrabajaNosotrosDAO;
import factories.DAOFactory;

public class TrabajaNosotrosService {
       
	private DAOFactory objDAOFactory = DAOFactory.getDAOFactory(1);
	private TrabajaNosotrosDAO objTrabajaNosotrosDAO =objDAOFactory.getTrabajaNosotrosDAO();
	
	public BeanTrabajaNosotros tcnInsert(BeanTrabajaNosotros bean) throws Exception{
		BeanTrabajaNosotros bean2=objTrabajaNosotrosDAO.tcnInsert(bean);
		return bean2;
	}
	
	public BeanTrabajaNosotros tcnSearchxid(int p_inttcnId) throws Exception{
		BeanTrabajaNosotros bean=objTrabajaNosotrosDAO.tcnSearchxid(p_inttcnId);
		return bean;
	}
	@SuppressWarnings("rawtypes")
	public ArrayList tcnSearchList() throws Exception{
		ArrayList lista=objTrabajaNosotrosDAO.tcnSearchList();
		return lista;
	}
}
