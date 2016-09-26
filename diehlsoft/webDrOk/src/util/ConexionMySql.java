package util;

import java.io.Reader;

import com.ibatis.common.resources.Resources;
import com.ibatis.sqlmap.client.SqlMapClient;
import com.ibatis.sqlmap.client.SqlMapClientBuilder;

public class ConexionMySql {
	
	protected static final SqlMapClient sqlMap;
	
	static {   
        try {   
        	String resource = "SqlMapConfigApplication.xml";
        	Reader reader = Resources.getResourceAsReader(resource);
    		sqlMap = SqlMapClientBuilder.buildSqlMapClient(reader);
        } catch (Exception e) {   
            e.printStackTrace();   
            throw new RuntimeException("No se puede conectar SqlMapConfigApplication.xml");   
        }   
    } 
	
	public static SqlMapClient getSqlMap() {
        return sqlMap;
    }

}
