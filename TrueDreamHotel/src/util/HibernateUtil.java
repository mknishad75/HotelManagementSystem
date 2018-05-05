package util;


import org.hibernate.*;
import org.hibernate.boot.registry.StandardServiceRegistry;
import org.hibernate.boot.registry.StandardServiceRegistryBuilder;
import org.hibernate.cfg.*;



public class HibernateUtil {

	static SessionFactory factory;
	 
	static
	{
		factory = new Configuration().configure("hibernate.cfg.xml").buildSessionFactory();
		/*Configuration cfg=new Configuration();
		cfg=cfg.configure();
		StandardServiceRegistryBuilder ssrbuilder=new StandardServiceRegistryBuilder();
		StandardServiceRegistry ssRegistry=ssrbuilder.applySettings(cfg.getProperties()).build();
		factory=cfg.buildSessionFactory(ssRegistry);*/
		
	}
	public static SessionFactory getSessionFactory()
	{
		return factory;
	}
	
}
