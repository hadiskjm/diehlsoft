package dbDAO;

import util.ConexionMySql;
import bean.BeanEmail;

import com.ibatis.sqlmap.client.SqlMapClient;

import dao.EmailDAO;

public class dbEmailDAO implements EmailDAO{
	SqlMapClient sqlMap=ConexionMySql.getSqlMap();

	@Override
	public BeanEmail emaSearchXTipo(BeanEmail bean) throws Exception {
		BeanEmail bean2 = (BeanEmail) sqlMap.queryForObject("SP_EMASEARCHXTIPO",bean);
		return bean2;
	}
}
