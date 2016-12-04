package dbDAO;

import java.util.ArrayList;

import com.ibatis.sqlmap.client.SqlMapClient;

import dao.AlternativaDAO;
import util.ConexionMySql;

public class dbAlternativaDAO implements AlternativaDAO {
	SqlMapClient sqlMap=ConexionMySql.getSqlMap();
	@SuppressWarnings("rawtypes")
	@Override
	public ArrayList altListXPregunta(int p_intpgaId) throws Exception {
		ArrayList lista=(ArrayList) sqlMap.queryForList("SP_ALTLISTXPREGUNTA", p_intpgaId);
		return lista;
	}

}
