package dao;

import java.util.ArrayList;

import bean.BeanActualidadLaboral;

public interface ActualidadLaboralDAO {
	

	public BeanActualidadLaboral aclSearchxid(int p_intaclId) throws Exception;
	@SuppressWarnings("rawtypes")
	public ArrayList aclSearchListxestado(String p_straclEstado) throws Exception;
	@SuppressWarnings("rawtypes")
	public ArrayList aclSearchListxestado2(String p_straclEstado) throws Exception;
	public BeanActualidadLaboral aclActiveOInactive(BeanActualidadLaboral bean) throws Exception;
	public BeanActualidadLaboral aclUpdate(BeanActualidadLaboral bean) throws Exception;
	public BeanActualidadLaboral aclInsert(BeanActualidadLaboral bean) throws Exception;
	@SuppressWarnings("rawtypes")
	public ArrayList aclSearchList(int p_intbolId) throws Exception;
	@SuppressWarnings("rawtypes")
	public ArrayList aclListxbolId(int p_intbolId) throws Exception;
	@SuppressWarnings("rawtypes")
	public ArrayList aclListxbolId2(int p_intbolId) throws Exception;
	@SuppressWarnings("rawtypes")
	public ArrayList aclVisorxId(int p_intaclId) throws Exception;

}
