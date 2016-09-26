package dbDAO;

import java.util.ArrayList;

import util.ConexionMySql;

import com.ibatis.sqlmap.client.SqlMapClient;

import bean.BeanTrabajaNosotros;
import dao.TrabajaNosotrosDAO;

public class dbTrabajaNosotrosDAO implements TrabajaNosotrosDAO{
	SqlMapClient sqlMap=ConexionMySql.getSqlMap();
	@Override
	public BeanTrabajaNosotros tcnInsert(BeanTrabajaNosotros bean) throws Exception {
		sqlMap.insert("SP_TCNINSERT", bean); 
		return bean;
	}

	@SuppressWarnings("rawtypes")
	@Override
	public ArrayList tcnSearchList() throws Exception {
		ArrayList lista = (ArrayList) sqlMap.queryForList("SP_TCNSEARCHLIST");
		return lista;
	}

	@Override
	public BeanTrabajaNosotros tcnSearchxid(Integer p_inttcnId)
			throws Exception {
		BeanTrabajaNosotros bean = (BeanTrabajaNosotros) sqlMap.queryForObject("SP_TCNSEARCHXID", p_inttcnId);
		return bean;
	}

}
