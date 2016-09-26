package dbDAO;

import java.util.ArrayList;

import util.ConexionMySql;

import com.ibatis.sqlmap.client.SqlMapClient;

import bean.BeanActualidadLaboral;
import dao.ActualidadLaboralDAO;

public class dbActualidadLaboralDAO implements ActualidadLaboralDAO{
	SqlMapClient sqlMap=ConexionMySql.getSqlMap();
	@Override
	public BeanActualidadLaboral aclSearchxid(int p_intaclId) throws Exception {
		BeanActualidadLaboral bean = (BeanActualidadLaboral) sqlMap.queryForObject("SP_ACLSEARCHXID",p_intaclId);
	    return bean;
	}

	@Override
	public BeanActualidadLaboral aclActiveOInactive(BeanActualidadLaboral bean)
			throws Exception {
		sqlMap.update("SP_ACLACTIVEOINACTIVE", bean); 
		return bean;
	}

	@Override
	public BeanActualidadLaboral aclUpdate(BeanActualidadLaboral bean)
			throws Exception {
		sqlMap.update("SP_ACLUPDATE", bean); 
		return bean;
	}

	@Override
	public BeanActualidadLaboral aclInsert(BeanActualidadLaboral bean)
			throws Exception {
		sqlMap.insert("SP_ACLINSERT", bean); 
		return bean;
	}

	@SuppressWarnings("rawtypes")
	@Override
	public ArrayList aclSearchList(int p_intbolId) throws Exception {
		ArrayList lista = (ArrayList) sqlMap.queryForList("SP_ACLSEARCHLIST",p_intbolId);
		return lista;
	}
	@SuppressWarnings("rawtypes")
	public ArrayList aclListxbolId(int p_intbolId) throws Exception {
		ArrayList lista = (ArrayList) sqlMap.queryForList("SP_ACLSEARCHLISTXBOLID",p_intbolId);
		return lista;
	}
	@SuppressWarnings("rawtypes")
	public ArrayList aclListxbolId2(int p_intbolId) throws Exception {
		ArrayList lista = (ArrayList) sqlMap.queryForList("SP_ACLSEARCHLISTXBOLID2",p_intbolId);
		return lista;
	}
	@SuppressWarnings("rawtypes")
	public ArrayList aclSearchListxestado(String p_straclEstado)
			throws Exception {
		ArrayList lista = (ArrayList) sqlMap.queryForList("SP_ACLSEARCHLISTXESTADO",p_straclEstado);
		return lista;
	}
	
	@SuppressWarnings("rawtypes")
	public ArrayList aclSearchListxestado2(String p_straclEstado)
			throws Exception {
		ArrayList lista = (ArrayList) sqlMap.queryForList("SP_ACLSEARCHLISTXESTADO2",p_straclEstado);
		return lista;
	}
	
	@SuppressWarnings("rawtypes")
	public ArrayList aclVisorxId(int p_intaclId)
			throws Exception {
		ArrayList lista = (ArrayList) sqlMap.queryForList("SP_ACLSEARCHXID",p_intaclId);
		return lista;
	}


}
