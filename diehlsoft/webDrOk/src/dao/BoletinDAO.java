package dao;

import java.util.ArrayList;

import bean.BeanBoletin;

public interface BoletinDAO {
	

	public BeanBoletin bolSearchxid(int p_intbolId) throws Exception;
	public BeanBoletin bolDelete(BeanBoletin bean) throws Exception;
	public BeanBoletin bolUpdate(BeanBoletin bean) throws Exception;
	public BeanBoletin bolInsert(BeanBoletin bean) throws Exception;
	@SuppressWarnings("rawtypes")
	public ArrayList bolSearchList(BeanBoletin bean) throws Exception;
	@SuppressWarnings("rawtypes")
	public ArrayList bolSearchListBack() throws Exception;

}
