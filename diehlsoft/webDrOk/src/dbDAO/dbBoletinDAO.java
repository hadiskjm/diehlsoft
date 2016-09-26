package dbDAO;

import java.util.ArrayList;

import util.ConexionMySql;

import com.ibatis.sqlmap.client.SqlMapClient;

import bean.BeanBoletin;
import dao.BoletinDAO;

public class dbBoletinDAO implements BoletinDAO{
	SqlMapClient sqlMap=ConexionMySql.getSqlMap();
	@Override
	public BeanBoletin bolSearchxid(int p_intbolId) throws Exception {
		BeanBoletin bean = (BeanBoletin) sqlMap.queryForObject("SP_BOLSEARCHXID",p_intbolId);
	    return bean;
	}

	@Override
	public BeanBoletin bolDelete(BeanBoletin bean)
			throws Exception {
		sqlMap.update("SP_BOLDELETE", bean); 
		return bean;
	}

	@Override
	public BeanBoletin bolUpdate(BeanBoletin bean)
			throws Exception {
		sqlMap.update("SP_BOLUPDATE", bean); 
		return bean;
	}

	@Override
	public BeanBoletin bolInsert(BeanBoletin bean)
			throws Exception {
		sqlMap.insert("SP_BOLINSERT", bean); 
		return bean;
	}

	@SuppressWarnings("rawtypes")
	@Override
	public ArrayList bolSearchList(BeanBoletin bean) throws Exception {
		ArrayList lista = (ArrayList) sqlMap.queryForList("SP_BOLSEARCHLIST",bean);
		return lista;
	}
	
	@SuppressWarnings("rawtypes")
	@Override
	public ArrayList bolSearchListBack() throws Exception {
		ArrayList lista = (ArrayList) sqlMap.queryForList("SP_BOLSEARCHLISTBACK");
		return lista;
	}

}
