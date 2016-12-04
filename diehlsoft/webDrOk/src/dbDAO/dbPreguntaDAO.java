package dbDAO;

import java.util.ArrayList;

import com.ibatis.sqlmap.client.SqlMapClient;

import dao.PreguntaDAO;
import util.ConexionMySql;

public class dbPreguntaDAO implements PreguntaDAO{
	SqlMapClient sqlMap=ConexionMySql.getSqlMap();
	@SuppressWarnings("rawtypes")
	@Override
	public ArrayList pagList(String p_strpgaLevel) throws Exception {
		ArrayList lista=(ArrayList) sqlMap.queryForList("SP_PGALIST", p_strpgaLevel);
		return lista;
	}

}
