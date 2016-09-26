package dbDAO;

import java.util.ArrayList;

import util.ConexionMySql;
import bean.BeanMenuNivel1;

import com.ibatis.sqlmap.client.SqlMapClient;

import dao.MenuNivel1DAO;

public class dbMenuNivel1DAO implements MenuNivel1DAO{
	
	SqlMapClient sqlMap=ConexionMySql.getSqlMap();

	@Override
	public BeanMenuNivel1 mecInsert(BeanMenuNivel1 bean) throws Exception {
		sqlMap.insert("SP_MECINSERT", bean); 
		return bean;
	}

	@SuppressWarnings("rawtypes")
	@Override
	public ArrayList mecSearchList(BeanMenuNivel1 bean) throws Exception {
		ArrayList lista = (ArrayList) sqlMap.queryForList("SP_MECSEARCHLIST",bean);
		return lista;
	}

	@Override
	public BeanMenuNivel1 mecUpdate(BeanMenuNivel1 bean) throws Exception {
		sqlMap.update("SP_MECUPDATE", bean); 
		return bean;
	}

	@Override
	public BeanMenuNivel1 mecSearchxid(Integer p_intmecId) throws Exception {
		BeanMenuNivel1 bean= (BeanMenuNivel1) sqlMap.queryForObject("SP_MECSEARCHXID", p_intmecId); 
		return bean;
	}

	@SuppressWarnings("rawtypes")
	@Override
	public ArrayList mecList(BeanMenuNivel1 bean) throws Exception {
		ArrayList lista = (ArrayList) sqlMap.queryForList("SP_MECLIST",bean);
		return lista;
	}

}
