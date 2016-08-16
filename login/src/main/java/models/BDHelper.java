package models;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;


public class BDHelper {
	private final String PERSISTENCE_UNIT_NAME = "datos";
	private EntityManagerFactory factory;
	private EntityManager em;
	private static BDHelper instance;
  
	private BDHelper(){
		factory = Persistence.createEntityManagerFactory(PERSISTENCE_UNIT_NAME);
	    em = factory.createEntityManager();
	}
	
	public static BDHelper getInstance(){
		if(instance==null)
			instance=new BDHelper();
		return instance;
	}
	public void addDatos(Datos datos){
		em.getTransaction().begin();
	    em.persist(datos);
	    em.getTransaction().commit();
	}

}
