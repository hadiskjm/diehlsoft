package services;

import java.util.ArrayList;

import bean.BeanOpcionPerfil;
import dao.OpcionPerfilDAO;
import factories.DAOFactory;

public class OpcionPerfilService {
	
	private DAOFactory objDAOFactory = DAOFactory.getDAOFactory(1);
	private OpcionPerfilDAO objOpcionPerfilDao =objDAOFactory.getOpcionPerfilDAO();
	
	public BeanOpcionPerfil oppSearchxid(int p_intoppId) throws Exception{
		BeanOpcionPerfil bean=objOpcionPerfilDao.oppSearchxid(p_intoppId);
		return bean;
	}
	public BeanOpcionPerfil oppActiveOInactive(BeanOpcionPerfil bean) throws Exception{
		BeanOpcionPerfil bean2=objOpcionPerfilDao.oppActiveOInactive(bean);
		return bean2;
	}
	public BeanOpcionPerfil oppUpdate(BeanOpcionPerfil bean) throws Exception{
		BeanOpcionPerfil bean2=objOpcionPerfilDao.oppUpdate(bean);
		return bean2;
	}
	public BeanOpcionPerfil oppInsert(BeanOpcionPerfil bean) throws Exception{
		BeanOpcionPerfil bean2=objOpcionPerfilDao.oppInsert(bean);
		return bean2;
	}
	@SuppressWarnings("rawtypes")
	public ArrayList oppSearchList(BeanOpcionPerfil bean) throws Exception{
		ArrayList lista=objOpcionPerfilDao.oppSearchList(bean);
		return lista;
	}

}
