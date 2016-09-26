package dao;

import java.util.ArrayList;

import bean.BeanPersona;

public interface PersonaDAO {
	
	public BeanPersona perObtenerxUsuarioId(int intusuId) throws Exception;
	public BeanPersona perInsert(BeanPersona bean) throws Exception;
	@SuppressWarnings("rawtypes")
	public ArrayList perSearchList(BeanPersona bean) throws Exception;


}
