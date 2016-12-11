package dbDAO;

import java.util.ArrayList;

import com.ibatis.sqlmap.client.SqlMapClient;

import dao.AlternativaDAO;
import util.ConexionMySql;

public class dbAlternativaDAO implements AlternativaDAO {
	SqlMapClient sqlMap=ConexionMySql.getSqlMap();
	@SuppressWarnings("rawtypes")
	@Override
	public ArrayList altListXPregunta() throws Exception {
		ArrayList lista=(ArrayList) sqlMap.queryForList("SP_ALTLISTXPREGUNTA");
		return lista;
	}

}
