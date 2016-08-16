package servlets;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;

import models.BDHelper;
import models.Datos;

/**
 * Servlet implementation class AgregaDatosServlet
 */
public class AgregaDatosServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AgregaDatosServlet() {
        super();
        // TODO Auto-generated constructor stub
    }
    
	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		Respuesta resp= guarda(request);
        
        try (PrintWriter out = response.getWriter()) {
            Gson gson = new Gson();
            out.write(gson.toJson(resp));
        }
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}
	
	private Respuesta guarda(HttpServletRequest request){
        String nombre= request.getParameter("nombre");
        String idParam=request.getParameter("id");
        String telefono=request.getParameter("telefono");
        String rfc= request.getParameter("rfc");
        
        if(nombre ==null || idParam==null || rfc==null || telefono==null){
            return new Respuesta(false,"Error, llene todos los datos");
        }
        if(nombre.isEmpty()||nombre.isEmpty()||nombre.isEmpty() || telefono.isEmpty()){
            return new Respuesta(false,"Error, llene todos los datos");
        }
        int id;
        try{
        	id=Integer.parseInt(idParam);
        }catch(NumberFormatException ex){
        	return new Respuesta(false,"El id debe de ser numerico");
        }
        if(nombre.length()>100){
        	return new Respuesta(false,"El nombre no debe de tener mas de 100 caracteres");
        }
        if(telefono.length()>10){
        	return new Respuesta(false,"El telefono no puede tener mas de 10 digitos");
        }
        if(!rfc.matches("[A-Z,Ñ,&]{3,4}[0-9]{2}[0-1][0-9][0-3][0-9][A-Z,0-9]?[A-Z,0-9]?[0-9,A-Z]?")){
        	return new Respuesta(false,"El RFC no es correcto");
        }
        BDHelper helper= BDHelper.getInstance();
        Datos datos= new Datos();
        datos.setId(id);
        datos.setNombre(nombre);
        datos.setTelefono(telefono);
        datos.setRFC(rfc);
        helper.addDatos(datos);
        
        return new Respuesta(true, "Datos guardados correctamente");
    }
	class Respuesta {
        private boolean exitoso;
        private String mensaje;
        public Respuesta(boolean exito, String mensj){
            exitoso=exito;
            mensaje=mensj;
        }
        public boolean isExitoso() {
            return exitoso;
        }
        public void setExitoso(boolean exitoso) {
            this.exitoso = exitoso;
        }
        public String getMensaje() {
            return mensaje;
        }
        public void setMensaje(String mensaje) {
            this.mensaje = mensaje;
        }
    }
}
