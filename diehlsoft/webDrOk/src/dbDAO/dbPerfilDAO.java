package dbDAO;


import java.util.ArrayList;

import util.ConexionMySql;

import com.ibatis.sqlmap.client.SqlMapClient;

import bean.BeanPerfil;
import dao.PerfilDAO;

public class dbPerfilDAO implements PerfilDAO{
	SqlMapClient sqlMap=ConexionMySql.getSqlMap();
	@Override
	public BeanPerfil pefSearchxid(int p_intpefId) throws Exception {	
		BeanPerfil bean = (BeanPerfil) sqlMap.queryForObject("SP_PEFSEARCHXID",p_intpefId);
	    return bean;
	}
	
	public BeanPerfil pefActiveOInactive(BeanPerfil bean) throws Exception{
		sqlMap.update("SP_PEFACTIVEOINACTIVE", bean); 
		return bean;
	}
	
	public BeanPerfil pefUpdate(BeanPerfil bean) throws Exception{
		sqlMap.update("SP_PEFUPDATE", bean); 
		return bean;
	}
	@Override
	public BeanPerfil pefInsert(BeanPerfil bean) throws Exception {
		sqlMap.insert("SP_PEFINSERT", bean); 
		return bean;
	}
	@SuppressWarnings("rawtypes")
	@Override
	public ArrayList pefSearchList(BeanPerfil bean) throws Exception {
		ArrayList lista = (ArrayList) sqlMap.queryForList("SP_PEFSEARCHLIST",bean);
		return lista;
	}

}
