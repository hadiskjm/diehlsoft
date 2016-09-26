package services;

import java.util.ArrayList;

import bean.BeanEstado;
import dao.EstadoDAO;
import factories.DAOFactory;

public class EstadoService {
	private DAOFactory objDAOFactory = DAOFactory.getDAOFactory(1);
	private EstadoDAO objEstadoDao =objDAOFactory.getEstadoDAO();
    
	@SuppressWarnings("rawtypes")
	public ArrayList allEstadoModulo(BeanEstado bean) throws Exception{
		ArrayList lista=objEstadoDao.allEstadoModulo(bean);
		return lista;
	}
}
