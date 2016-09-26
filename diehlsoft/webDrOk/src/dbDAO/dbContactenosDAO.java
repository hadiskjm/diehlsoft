package dbDAO;

import java.util.ArrayList;

import util.ConexionMySql;

import com.ibatis.sqlmap.client.SqlMapClient;

import bean.BeanContactenos;
import dao.ContactenosDAO;

public class dbContactenosDAO implements ContactenosDAO{
	SqlMapClient sqlMap=ConexionMySql.getSqlMap();
	@Override
	public BeanContactenos conInsert(BeanContactenos bean) throws Exception {
		sqlMap.insert("SP_CONINSERT", bean); 
		return bean;
	}

	@SuppressWarnings("rawtypes")
	@Override
	public ArrayList conSearchList() throws Exception {
		ArrayList lista = (ArrayList) sqlMap.queryForList("SP_CONSEARCHLIST");
		return lista;
	}

}
