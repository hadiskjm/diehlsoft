package dbDAO;

import java.util.ArrayList;

import util.ConexionMySql;
import bean.BeanMenuNivel3;

import com.ibatis.sqlmap.client.SqlMapClient;

import dao.MenuNivel3DAO;

public class dbMenuNivel3DAO implements MenuNivel3DAO{
	
	SqlMapClient sqlMap=ConexionMySql.getSqlMap();

	@Override
	public BeanMenuNivel3 metInsert(BeanMenuNivel3 bean) throws Exception {
		sqlMap.insert("SP_METINSERT", bean); 
		return bean;
	}

	@SuppressWarnings("rawtypes")
	@Override
	public ArrayList metSearchList(BeanMenuNivel3 bean) throws Exception {
		ArrayList lista = (ArrayList) sqlMap.queryForList("SP_METSEARCHLIST",bean);
		return lista;
	}

	@Override
	public BeanMenuNivel3 metUpdate(BeanMenuNivel3 bean) throws Exception {
		sqlMap.update("SP_METUPDATE", bean); 
		return bean;
	}

	@Override
	public BeanMenuNivel3 metSearchxid(Integer p_intmetId) throws Exception {
		BeanMenuNivel3 bean= (BeanMenuNivel3) sqlMap.queryForObject("SP_METSEARCHXID", p_intmetId); 
		return bean;
	}

	@SuppressWarnings("rawtypes")
	@Override
	public ArrayList metList(BeanMenuNivel3 bean) throws Exception {
		ArrayList lista = (ArrayList) sqlMap.queryForList("SP_METLIST",bean);
		return lista;
	}

}
