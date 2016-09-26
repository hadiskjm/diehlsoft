package services;

import java.util.ArrayList;

import bean.BeanImagen;
import dao.ImagenDAO;
import factories.DAOFactory;

public class ImagenService {
	
	private DAOFactory objDAOFactory = DAOFactory.getDAOFactory(1);
	private ImagenDAO objImagenDAO =objDAOFactory.getImagenDAO();
	
	public BeanImagen imgSearchxid(int p_intimgId) throws Exception{
		BeanImagen bean=objImagenDAO.imgSearchxid(p_intimgId);
		return bean;
	}

	public BeanImagen imgUpdate(BeanImagen bean) throws Exception{
		BeanImagen bean2=objImagenDAO.imgUpdate(bean);
		return bean2;
	}
	public BeanImagen imgInsert(BeanImagen bean) throws Exception{
		BeanImagen bean2=objImagenDAO.imgInsert(bean);
		return bean2;
	}
	@SuppressWarnings("rawtypes")
	public ArrayList imgSearchList(BeanImagen bean) throws Exception{
		ArrayList lista=objImagenDAO.imgSearchList(bean);
		return lista;
	}
	
	@SuppressWarnings("rawtypes")
	public ArrayList imgModCamList(BeanImagen bean) throws Exception{
		ArrayList lista=objImagenDAO.imgModCamLIst(bean);
		return lista;
	}
    
	public BeanImagen imgDelete(BeanImagen bean) throws Exception{
		BeanImagen bean2=objImagenDAO.imgDelete(bean);
		return bean2;
	}

}
