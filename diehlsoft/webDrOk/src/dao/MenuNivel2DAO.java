package dao;

import java.util.ArrayList;

import bean.BeanMenuNivel2;

public interface MenuNivel2DAO {
	
	public BeanMenuNivel2 medInsert(BeanMenuNivel2 bean) throws Exception;
	public BeanMenuNivel2 medUpdate(BeanMenuNivel2 bean) throws Exception;
	public BeanMenuNivel2 medSearchxid(Integer p_intmedId) throws Exception;
	@SuppressWarnings("rawtypes")
	public ArrayList medSearchList(BeanMenuNivel2 bean) throws Exception;
	@SuppressWarnings("rawtypes")
	public ArrayList medList(BeanMenuNivel2 bean) throws Exception;

}
