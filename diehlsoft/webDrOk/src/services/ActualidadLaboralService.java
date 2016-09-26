package services;

import java.util.ArrayList;

import bean.BeanActualidadLaboral;
import dao.ActualidadLaboralDAO;
import factories.DAOFactory;

public class ActualidadLaboralService {
	
	private DAOFactory objDAOFactory = DAOFactory.getDAOFactory(1);
	private ActualidadLaboralDAO objActualidadLaboralDAO =objDAOFactory.getActualidadLaboralDAO();
	
	public BeanActualidadLaboral aclSearchxid(int p_intaclId) throws Exception{
		BeanActualidadLaboral bean=objActualidadLaboralDAO.aclSearchxid(p_intaclId);
		return bean;
	}
	public BeanActualidadLaboral aclActiveOInactive(BeanActualidadLaboral bean) throws Exception{
		BeanActualidadLaboral bean2=objActualidadLaboralDAO.aclActiveOInactive(bean);
		return bean2;
	}
	public BeanActualidadLaboral aclUpdate(BeanActualidadLaboral bean) throws Exception{
		BeanActualidadLaboral bean2=objActualidadLaboralDAO.aclUpdate(bean);
		return bean2;
	}
	public BeanActualidadLaboral aclInsert(BeanActualidadLaboral bean) throws Exception{
		BeanActualidadLaboral bean2=objActualidadLaboralDAO.aclInsert(bean);
		return bean2;
	}
	@SuppressWarnings("rawtypes")
	public ArrayList aclSearchList(int p_intbolId) throws Exception{
		ArrayList lista=objActualidadLaboralDAO.aclSearchList(p_intbolId);
		return lista;
	}
	@SuppressWarnings("rawtypes")
	public ArrayList aclListxbolId(int p_intbolId) throws Exception{
		ArrayList lista=objActualidadLaboralDAO.aclListxbolId(p_intbolId);
		return lista;
	}
	@SuppressWarnings("rawtypes")
	public ArrayList aclListxbolId2(int p_intbolId) throws Exception{
		ArrayList lista=objActualidadLaboralDAO.aclListxbolId2(p_intbolId);
		return lista;
	}
	@SuppressWarnings("rawtypes")
	public ArrayList aclSearchListxestado(String p_straclEstado) throws Exception{
		ArrayList lista=objActualidadLaboralDAO.aclSearchListxestado(p_straclEstado);
		return lista;
	}
	@SuppressWarnings("rawtypes")
	public ArrayList aclSearchListxestado2(String p_straclEstado) throws Exception{
		ArrayList lista=objActualidadLaboralDAO.aclSearchListxestado2(p_straclEstado);
		return lista;
	}
	@SuppressWarnings("rawtypes")
	public ArrayList aclVisorxId(int p_intaclId) throws Exception{
		ArrayList lista=objActualidadLaboralDAO.aclVisorxId(p_intaclId);
		return lista;
	}

}
