package com.common.util;

import org.springframework.beans.BeansException;
import org.springframework.context.ApplicationContext;
import org.springframework.context.ApplicationContextAware;

public class SpringContextUtil implements ApplicationContextAware {

	private static ApplicationContext applicationContext;
	
	@Override
	public void setApplicationContext(ApplicationContext arg0)
			throws BeansException {
		applicationContext = arg0;
	}	
	
	public static ApplicationContext getApplicationContext(){
        return applicationContext;
    }
	
	 public static Object getBeanById(String id){
	        return applicationContext.getBean(id);
	    }
	 
	 public static Object getBeanByClass(Class c){
	        return applicationContext.getBean(c);
	    }
}
