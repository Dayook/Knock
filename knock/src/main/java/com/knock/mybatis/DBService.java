package com.knock.mybatis;

import java.io.IOException;
import java.io.Reader;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;


public class DBService {
	private static SqlSessionFactory factory;
	
	static {
		try {

			factory = new SqlSessionFactoryBuilder()
					.build(Resources.getResourceAsReader("com/knock/mybatis/config.xml"));
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	
	public static SqlSessionFactory getFactory() {
		return factory;
	}
}
