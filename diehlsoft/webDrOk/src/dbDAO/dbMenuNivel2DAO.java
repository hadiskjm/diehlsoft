package dbDAO;

import java.util.ArrayList;

import util.ConexionMySql;
import bean.BeanMenuNivel2;

import com.ibatis.sqlmap.client.SqlMapClient;

import dao.MenuNivel2DAO;

public class dbMenuNivel2DAO implements MenuNivel2DAO{
	
	SqlMapClient sqlMap=ConexionMySql.getSqlMap();

	@Override
	public BeanMenuNivel2 medInsert(BeanMenuNivel2 bean) throws Exception {
		sqlMap.insert("SP_MEDINSERT", bean); 
		return bean;
	}

	@SuppressWarnings("rawtypes")
	@Override
	public ArrayList medSearchList(BeanMenuNivel2 bean) throws Exception {
		ArrayList lista = (ArrayList) sqlMap.queryForList("SP_MEDSEARCHLIST",bean);
		return lista;
	}

	@Override
	public BeanMenuNivel2 medUpdate(BeanMenuNivel2 bean) throws Exception {
		sqlMap.update("SP_MEDUPDATE", bean); 
		return bean;
	}

	@Override
	public BeanMenuNivel2 medSearchxid(Integer p_intmedId) throws Exception {
		BeanMenuNivel2 bean= (BeanMenuNivel2) sqlMap.queryForObject("SP_MEDSEARCHXID", p_intmedId); 
		return bean;
	}
	
	@SuppressWarnings("rawtypes")
	@Override
	public ArrayList medList(BeanMenuNivel2 bean) throws Exception {
		ArrayList lista = (ArrayList) sqlMap.queryForList("SP_MEDLIST",bean);
		return lista;
	}

}
