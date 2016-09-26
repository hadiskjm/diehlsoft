package dao;

import java.util.ArrayList;

import bean.BeanEstado;

public interface EstadoDAO {
	@SuppressWarnings("rawtypes")
	public ArrayList allEstadoModulo(BeanEstado bean) throws Exception;

}
