package util;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;

/*
 * JNDI API를 이용해서 DataSource를 하나 반환 받아온다.
 */
public class DataSourceManager {
	
	private DataSource ds;
	
	private static DataSourceManager instance = new DataSourceManager();
	
	private DataSourceManager() {
		//이 안에서 Naming서비스 로직을 작성한다.
		try {
			Context ic = new InitialContext();
			ds = (DataSource)ic.lookup("java:comp/env/jdbc/mysql");
			//외부 이름 접근법
			System.out.println("DataSource Lookup...OK");
			}catch(NamingException e) {
			System.out.println("DataSource Lookup...Fail");
			
			}	
	}
	public static DataSourceManager getInstance() {
		return instance;
	}
	//추가
	//DataSource를 하나 반환 받아온다.
	
	
	public DataSource getConnection() {
		return ds;
	}
	
	
}
