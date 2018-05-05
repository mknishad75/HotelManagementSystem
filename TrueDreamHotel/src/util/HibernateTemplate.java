package util;

import java.awt.Label;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

import domain.AddRoom;
import util.HibernateUtil;

public class HibernateTemplate {
	
	public static Object saveObjct(Object obj)
	{
		Object id=null;
		SessionFactory sf=HibernateUtil.getSessionFactory();
		Session session=sf.openSession();
		Transaction transaction=session.beginTransaction();
		id = session.save(obj);
		transaction.commit();
		session.close();
		
		return id;
		
	}
	public static Object loadObject(Class cls,Serializable s)
	{   Transaction transaction=null;
	    Object value=null;
		try{
		
		SessionFactory sf=HibernateUtil.getSessionFactory();
		Session session=sf.openSession();
		transaction=session.beginTransaction();
		value=session.load(cls,s);
		transaction.commit();
		session.close();
		
		}catch(Exception e)
		{
		if(transaction!=null)
		{
			transaction.rollback();
		}
		e.printStackTrace();
		}
		
		return value;
	}

	public static ArrayList<AddRoom> loadWithPaginaton(Class cls)
	{
		Transaction transaction=null;
		ArrayList<AddRoom> list=new ArrayList<AddRoom>();
	    Object value=null;
		try{
		SessionFactory sf=HibernateUtil.getSessionFactory();
		Session session=sf.openSession();
		transaction=session.beginTransaction();
	    String hql="from AddRoom roomId order by roomId.addRoomId desc";
	    Query query=session.createQuery(hql);
	    //query.setFirstResult(Page);
	    //query.setMaxResults(rcordsPerPage);
	     list=(ArrayList<AddRoom>) query.list();
		transaction.commit();
		session.close();
		}catch(Exception e)
		{
		if(transaction!=null)
		{
			transaction.rollback();
		}
		e.printStackTrace();
		}
		return list;
	}
	
	public static void deleteObject(Class cls,Serializable s)
	{
		int status=0;
		Transaction transaction=null;
		try{
			SessionFactory sf=HibernateUtil.getSessionFactory();
			Session session=sf.openSession();
			transaction=session.beginTransaction();
			Object value=session.load(cls,s);
			session.delete(value);
			transaction.commit();
 			session.close();
		}catch(Exception e)
		{
			e.printStackTrace();
		}
		
	}
	
	public static int updateObject(Object obj)
	{
		int value=0;
		Transaction transaction=null;
		
		try{
			SessionFactory sf=HibernateUtil.getSessionFactory();
			Session session=sf.openSession();
			transaction=session.beginTransaction();
	 		session.update(obj);
			transaction.commit();
			session.close();
		}catch(Exception e)
		{
			e.printStackTrace();
		}
		
		return value;
	}
}
