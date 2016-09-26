package dao;

import java.util.ArrayList;

import bean.BeanContactenos;

public interface ContactenosDAO {
	
	public BeanContactenos conInsert(BeanContactenos bean) throws Exception;
	@SuppressWarnings("rawtypes")
	public ArrayList conSearchList() throws Exception;

}
