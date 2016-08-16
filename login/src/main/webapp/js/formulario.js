function retornaFalso(){
    return false;
}
$(document).ready(function() {
	
    $('#agregaDatos').submit(function() {
        
        contexto = $("#contexto").val();
        var empleado ="id=" + document.getElementsByName("id").value;
        empleado+= "&nombre=" + document.getElementsByName("nombre").value; 
        empleado+= "&telefono="+ document.getElementsByName("telefono").value;
        empleado+= "&rfc="+document.getElementsByName("rfc").value;
        var ruta=$('#contexto').val()+ "/AgregaDatosServlet";
        //alert("holi: '" + ruta+"'");
        var opcionesCrear = {
            url: ruta,
            dataType: 'json',
            data: empleado,
            success: function(data) {
                $("#respuesta").empty();
                if(!data.exitoso){
                	$("#respuesta").append("Datos incorrectos: ");
                	$("#respuesta").append(data.mensaje);
                	alert(data.mensaje);
                }else 
                	$("#respuesta").append("Guardado exitoso");
            }
        };
        $(this).ajaxSubmit(opcionesCrear);
        return false;
    });
});