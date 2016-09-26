<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="bean.BeanPerfil"%>
<%@page import="bean.BeanPersona"%>
<%@page import="java.util.List"%>
<%@page import="com.ibatis.common.resources.Resources"%>
<%@page import="com.ibatis.sqlmap.client.SqlMapClient"%>
<%@page import="com.ibatis.sqlmap.client.SqlMapClientBuilder"%>
<%@page import="java.io.Reader"%>
 <% 
 BeanPersona beanp= (BeanPersona)session.getAttribute("beanPersona");
 
 SqlMapClient sqlMap;
 try{      
	    String resource = "SqlMapConfigApplication.xml";
		Reader reader = Resources.getResourceAsReader (resource);
		sqlMap = SqlMapClientBuilder.buildSqlMapClient(reader);
		
		String str2=(String)request.getParameter("q");
		BeanPerfil bean=new BeanPerfil();
		bean.setStrpefDescripcion("%"+str2+"%");
		bean.setStrpefLocale(beanp.getStrperLocale());
		
		List<BeanPerfil> lista=sqlMap.queryForList("SP_PEFAUCLIST",bean);
		if(lista !=null){
		for(BeanPerfil beanP : lista){
			out.println(beanP.getStrpefDescripcion());
		}}else{
			out.println("no hay data la tabla");
		}
		    }catch(Exception e){
			out.println("Error es;"+e);
			}
 

 %>