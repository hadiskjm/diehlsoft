package dbDAO;

import util.ConexionMySql;

import com.ibatis.sqlmap.client.SqlMapClient;

import bean.BeanUsuario;
import dao.UsuarioDAO;

public class dbUsuarioDAO implements UsuarioDAO{
	SqlMapClient sqlMap=ConexionMySql.getSqlMap();
	
	public BeanUsuario usuAutenticar(String strusuUser, String strusuPassword)
			throws Exception {
		BeanUsuario bean= new BeanUsuario();
		bean.setStrusuUser(strusuUser);
		bean.setStrusuPassword(strusuPassword);
		
		BeanUsuario usuario=(BeanUsuario) sqlMap.queryForObject("SP_USUAUTENTICAR", bean);	
		
		return usuario;
	}

	@Override
	public BeanUsuario usuBuscarUserXId(int intusuId) throws Exception {
		BeanUsuario usubean=(BeanUsuario)sqlMap.queryForObject("SP_USUSEARCHXID",intusuId);
		return usubean;
	}

	@Override
	public BeanUsuario usuInsert(BeanUsuario bean) throws Exception {
		sqlMap.insert("SP_USUINSERT",bean);
		return bean;
	}

}
