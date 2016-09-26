<%@page import="bean.BeanImagen"%>
<%@page import="bean.BeanActualidadLaboral"%>
<%@page import="bean.BeanOpcionPerfil"%>
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
		BeanImagen bean=new BeanImagen();
		bean.setStrimgNombre("%"+str2+"%");
		
		List<BeanImagen> lista=sqlMap.queryForList("SP_IMGAUCLIST",bean);
		if(lista !=null){
		for(BeanImagen imgbean : lista){
			out.println(imgbean.getStrimgNombre());
		}}else{
			out.println("no hay data la tabla");
		}
		    }catch(Exception e){
			out.println("Error es;"+e);
			}
 

 %>