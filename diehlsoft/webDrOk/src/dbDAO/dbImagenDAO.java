package dbDAO;

import java.util.ArrayList;

import util.ConexionMySql;

import com.ibatis.sqlmap.client.SqlMapClient;

import bean.BeanImagen;
import dao.ImagenDAO;

public class dbImagenDAO implements ImagenDAO{
	SqlMapClient sqlMap=ConexionMySql.getSqlMap();
	@Override
	public BeanImagen imgSearchxid(int p_intimgId) throws Exception {
		BeanImagen bean = (BeanImagen) sqlMap.queryForObject("SP_IMGSEARCHXID",p_intimgId);
	    return bean;
	}

	@Override
	public BeanImagen imgUpdate(BeanImagen bean) throws Exception {
		sqlMap.update("SP_IMGUPDATE", bean); 
		return bean;
	}

	@Override
	public BeanImagen imgInsert(BeanImagen bean) throws Exception {
		sqlMap.insert("SP_IMGINSERT", bean); 
		return bean;
	}

	@SuppressWarnings("rawtypes")
	@Override
	public ArrayList imgSearchList(BeanImagen bean) throws Exception {
		ArrayList lista = (ArrayList) sqlMap.queryForList("SP_IMGSEARCHLIST",bean);
		return lista;
	}

	@SuppressWarnings("rawtypes")
	@Override
	public ArrayList imgModCamLIst(BeanImagen bean) throws Exception {
		ArrayList lista = (ArrayList) sqlMap.queryForList("SP_IMGMODCAMLIST",bean);
		return lista;
	}

	@Override
	public BeanImagen imgDelete(BeanImagen bean) throws Exception {
		sqlMap.delete("SP_IMGDELETE", bean); 
		return bean;
	}

}
