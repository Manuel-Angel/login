package models;

import java.util.HashMap;

public class Usuarios {
	private static Usuarios instance;
	public static HashMap<String, String> usuarios;
	
	private Usuarios(){
		usuarios = new HashMap<>();
		usuarios.put("manuel@hotmail.com", "123");
		usuarios.put("anilu@hotmail.com", "123");
		usuarios.put("manuel@gmail.com!", "123");
	}
	public static Usuarios getInstance(){
		if(instance==null)
			instance=new Usuarios();
		return instance;
	}
	public boolean autentiate(String user, String pass){
		String password=usuarios.get(user);
		if(password!=null && password.equals(pass))
			return true;
		return false;
	}
}
