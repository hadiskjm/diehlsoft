package dao;

import java.util.ArrayList;

import bean.BeanPerfil;

public interface PerfilDAO {
	
	public BeanPerfil pefSearchxid(int p_intpefId) throws Exception;
	public BeanPerfil pefActiveOInactive(BeanPerfil bean) throws Exception;
	public BeanPerfil pefUpdate(BeanPerfil bean) throws Exception;
	public BeanPerfil pefInsert(BeanPerfil bean) throws Exception;
	@SuppressWarnings("rawtypes")
	public ArrayList pefSearchList(BeanPerfil bean) throws Exception;
	
}
