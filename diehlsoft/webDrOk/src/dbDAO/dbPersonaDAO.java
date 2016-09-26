package dbDAO;

import java.util.ArrayList;

import util.ConexionMySql;

import com.ibatis.sqlmap.client.SqlMapClient;

import bean.BeanPersona;
import dao.PersonaDAO;

public class dbPersonaDAO implements PersonaDAO{
	SqlMapClient sqlMap=ConexionMySql.getSqlMap();
	@Override
	public BeanPersona perObtenerxUsuarioId(int intusuId) throws Exception {	
		BeanPersona bean=(BeanPersona) sqlMap.queryForObject("SP_PEROBTENER", intusuId);
		return bean;
	}
	@Override
	public BeanPersona perInsert(BeanPersona bean) throws Exception {
		BeanPersona bean2=(BeanPersona) sqlMap.queryForObject("SP_PERINSERT", bean);
		return bean2;
	}
	    
	@SuppressWarnings("rawtypes")
	@Override
	public ArrayList perSearchList(BeanPersona bean) throws Exception {
		ArrayList lista=(ArrayList) sqlMap.queryForList("SP_PERSEARCHLIST", bean);
		return lista;
	}

}
