package dbDAO;

import java.util.ArrayList;

import util.ConexionMySql;

import com.ibatis.sqlmap.client.SqlMapClient;

import bean.BeanEstado;
import dao.EstadoDAO;

public class dbEstadoDAO implements EstadoDAO {
	SqlMapClient sqlMap=ConexionMySql.getSqlMap();
	@SuppressWarnings("rawtypes")
	@Override
	public ArrayList allEstadoModulo(BeanEstado bean) throws Exception {
		ArrayList lista = (ArrayList) sqlMap.queryForList("SP_ESTMODULOALL",bean);
	    return lista;
	}

}
