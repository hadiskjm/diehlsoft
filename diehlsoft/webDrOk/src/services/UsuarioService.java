package services;

import bean.BeanUsuario;
import dao.UsuarioDAO;
import factories.DAOFactory;

public class UsuarioService {
	
	private DAOFactory objDAOFactory = DAOFactory.getDAOFactory(1);
	private UsuarioDAO objUsuarioDao =objDAOFactory.getUsuarioDAO();	
	
	//autenticar usuario
	public BeanUsuario  usuAutenticar(String strusuUser, String strusuPassword)throws Exception {
		BeanUsuario bean = objUsuarioDao.usuAutenticar(strusuUser, strusuPassword);
		return bean;		
	}
	public BeanUsuario usuBuscarUserXId(int intusuId) throws Exception{
		BeanUsuario bean=objUsuarioDao.usuBuscarUserXId(intusuId);
		return bean;
	}
	public BeanUsuario usuInsert(BeanUsuario bean) throws Exception{
		BeanUsuario bean2=objUsuarioDao.usuInsert(bean);
		return bean2;
	}
}
