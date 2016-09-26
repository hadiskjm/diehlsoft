package dbDAO;

import java.util.ArrayList;

import util.ConexionMySql;

import com.ibatis.sqlmap.client.SqlMapClient;

import bean.BeanOpcionPerfil;
import dao.OpcionPerfilDAO;

public class dbOpcionPerfilDAO implements OpcionPerfilDAO {
	SqlMapClient sqlMap=ConexionMySql.getSqlMap();
	@Override
	public BeanOpcionPerfil oppSearchxid(int p_intoppId) throws Exception {
		BeanOpcionPerfil bean= (BeanOpcionPerfil) sqlMap.queryForObject("SP_OPPSEARCHXID",p_intoppId);
		return bean;
	}

	@Override
	public BeanOpcionPerfil oppActiveOInactive(BeanOpcionPerfil bean)
			throws Exception {
		sqlMap.update("SP_OPPACTIVEOINACTIVE", bean);
		return bean;
	}

	@Override
	public BeanOpcionPerfil oppUpdate(BeanOpcionPerfil bean) throws Exception {
		sqlMap.update("SP_OPPUPDATE",bean);
		return bean;
	}

	@Override
	public BeanOpcionPerfil oppInsert(BeanOpcionPerfil bean) throws Exception {
		sqlMap.insert("SP_OPPINSERT",bean);
		return bean;
	}

	@SuppressWarnings("rawtypes")
	@Override
	public ArrayList oppSearchList(BeanOpcionPerfil bean) throws Exception {
		ArrayList lista=(ArrayList) sqlMap.queryForList("SP_OPPSEARCHLIST", bean);
		return lista;
	}

}
