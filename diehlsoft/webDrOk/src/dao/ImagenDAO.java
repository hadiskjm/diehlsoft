package dao;

import java.util.ArrayList;

import bean.BeanImagen;

public interface ImagenDAO {

	public BeanImagen imgSearchxid(int p_intimgId) throws Exception;
	public BeanImagen imgUpdate(BeanImagen bean) throws Exception;
	public BeanImagen imgInsert(BeanImagen bean) throws Exception;
	public BeanImagen imgDelete(BeanImagen bean) throws Exception;
	@SuppressWarnings("rawtypes")
	public ArrayList imgSearchList(BeanImagen bean) throws Exception;
	@SuppressWarnings("rawtypes")
	public ArrayList imgModCamLIst(BeanImagen bean) throws Exception;
}
