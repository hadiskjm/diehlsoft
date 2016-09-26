package dao;

import java.util.ArrayList;

import bean.BeanOpcionPerfil;

public interface OpcionPerfilDAO {
	
	public BeanOpcionPerfil oppSearchxid(int p_intoppId) throws Exception;
	public BeanOpcionPerfil oppActiveOInactive(BeanOpcionPerfil bean) throws Exception;
	public BeanOpcionPerfil oppUpdate(BeanOpcionPerfil bean) throws Exception;
	public BeanOpcionPerfil oppInsert(BeanOpcionPerfil bean) throws Exception;
	@SuppressWarnings("rawtypes")
	public ArrayList oppSearchList(BeanOpcionPerfil bean) throws Exception;
}
