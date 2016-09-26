package services;

import java.util.ArrayList;

import bean.BeanPerfil;
import dao.PerfilDAO;
import factories.DAOFactory;

public class PerfilService {
	
	private DAOFactory objDAOFactory = DAOFactory.getDAOFactory(1);
	private PerfilDAO objPerfilDao =objDAOFactory.getPerfilDAO();
	
	public BeanPerfil pefSearchxid(int p_intpefId) throws Exception{
		BeanPerfil bean=objPerfilDao.pefSearchxid(p_intpefId);
		return bean;
	}
	public BeanPerfil pefActiveOInactive(BeanPerfil bean) throws Exception{
		BeanPerfil bean2=objPerfilDao.pefActiveOInactive(bean);
		return bean2;
	}
	public BeanPerfil pefUpdate(BeanPerfil bean) throws Exception{
		BeanPerfil bean2=objPerfilDao.pefUpdate(bean);
		return bean2;
	}
	public BeanPerfil pefInsert(BeanPerfil bean) throws Exception{
		BeanPerfil bean2=objPerfilDao.pefInsert(bean);
		return bean2;
	}
	@SuppressWarnings("rawtypes")
	public ArrayList pefSearchList(BeanPerfil bean) throws Exception{
		ArrayList lista=objPerfilDao.pefSearchList(bean);
		return lista;
	}
	
}
