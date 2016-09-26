package dao;

import java.util.ArrayList;

import bean.BeanMenuNivel3;

public interface MenuNivel3DAO {
	
	public BeanMenuNivel3 metInsert(BeanMenuNivel3 bean) throws Exception;
	public BeanMenuNivel3 metUpdate(BeanMenuNivel3 bean) throws Exception;
	public BeanMenuNivel3 metSearchxid(Integer p_intmetId) throws Exception;
	@SuppressWarnings("rawtypes")
	public ArrayList metSearchList(BeanMenuNivel3 bean) throws Exception;
	@SuppressWarnings("rawtypes")
	public ArrayList metList(BeanMenuNivel3 bean) throws Exception;

}
