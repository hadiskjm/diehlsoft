package dao;

import java.util.ArrayList;

import bean.BeanTrabajaNosotros;

public interface TrabajaNosotrosDAO {
	
	public BeanTrabajaNosotros tcnInsert(BeanTrabajaNosotros bean) throws Exception;
	public BeanTrabajaNosotros tcnSearchxid(Integer p_inttcnId) throws Exception;
	@SuppressWarnings("rawtypes")
	public ArrayList tcnSearchList() throws Exception;

}
