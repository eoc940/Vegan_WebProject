

package test;
/*
 * 디비서버 정보의 상수값으로 구성된 인터페이스
 * Driver FQCN
 * DBServer URL
 * DBServer USER
 * DBServer PASSWORD
 */
public interface ServerInfo {
	String DRIVER_NAME = "com.mysql.cj.jdbc.Driver"; 
	String URL = "jdbc:mysql://127.0.0.1:3306/vegan?serverTimezone=UTC&useUnicode=yes&characterEncoding=UTF-8";
	String USER = "root";
	String PASS = "1234";
	
}


