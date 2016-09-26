package dao;

import java.util.ArrayList;

import bean.BeanMenuNivel1;

public interface MenuNivel1DAO {
	
	public BeanMenuNivel1 mecInsert(BeanMenuNivel1 bean) throws Exception;
	public BeanMenuNivel1 mecUpdate(BeanMenuNivel1 bean) throws Exception;
	public BeanMenuNivel1 mecSearchxid(Integer p_intmecId) throws Exception;
	@SuppressWarnings("rawtypes")
	public ArrayList mecSearchList(BeanMenuNivel1 bean) throws Exception;
	@SuppressWarnings("rawtypes")
	public ArrayList mecList(BeanMenuNivel1 bean) throws Exception;

}
