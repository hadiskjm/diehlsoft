package dbDAO;

import java.util.ArrayList;

import util.ConexionMySql;

import com.ibatis.sqlmap.client.SqlMapClient;

import dao.PaisDAO;

public class dbPaisDAO implements PaisDAO{
	
    SqlMapClient sqlMap=ConexionMySql.getSqlMap();
	@SuppressWarnings("rawtypes")
	@Override
	public ArrayList pisListaPais() throws Exception {
		ArrayList lista = (ArrayList) sqlMap.queryForList("SP_PISPAIS");
	    return lista;
	}

}
