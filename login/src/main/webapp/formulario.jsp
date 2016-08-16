<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<!--DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd"-->
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<script src="<%=request.getContextPath()%>/js/jquery.js"></script>
        <script src="<%=request.getContextPath()%>/js/jquery.form.js"></script>
        <script src="<%=request.getContextPath()%>/js/formulario.js"></script>
        <link href="<%=request.getContextPath()%>/css/bootstrap.min.css" rel="stylesheet">
        <link href="<%=request.getContextPath()%>/css/bootstrap-theme.min.css" rel="stylesheet">
        <link href="<%=request.getContextPath()%>/css/style.css" rel="stylesheet">
        <title>Datos</title>
	</head>
	<body>
		<div class="container-fluid">
			<nav class="navbar navbar-inverse" role="navigation">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                        <span class="sr-only">Toggle navigation</span><span class="icon-bar"></span><span class="icon-bar"></span><span class="icon-bar"></span>
                    </button> <a class="navbar-brand" href="index.html">Hermocorp</a><br>
                    
                </div>
                <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                    <ul class="nav navbar-nav navegar">
                        <li class="active">
                            <a href="<%=request.getContextPath()%>">Inicio</a>
                        </li>
                    </ul>
                </div>
            </nav>
            <div class="jumbotron imagen">
                <h1>
                    <kbd> Hermocorp</kbd>
                </h1>
                
            </div>
        	<form id="agregaDatos" onsubmit="return retornaFalso();" method="POST" role="form">
                <input type="hidden" name="contexto" id="contexto" class="paginaActual" value="<%=request.getContextPath()%>"/>
                <table>
                    <thead>
                        <tr class="ui-widget-header">
                            <th>Campo</th>
                            <th>Dato</th>
                        </tr>
                    </thead>
                    <tbody>
                    	<tr>
                            <td>id:</td>
                            <td><input type="number" name="id" class="form-control"/></td>
                        </tr>
                        <tr>
                            <td>Nombre:</td>
                            <td><input type="text" class="form-control" name="nombre" maxlength="100" size="50"/></td>
                        </tr>
                        <tr>
                            <td>Telefono:</td>
                            <td><input type="text" class="form-control" name="telefono" maxlength="100" size="50"/></td>
                        </tr>
                        <tr>
                            <td>RFC:</td>
                            <td><input type="text" class="form-control" name="rfc" maxlength="30" size="50" pattern="[A-Z,Ñ,&]{3,4}[0-9]{2}[0-1][0-9][0-3][0-9][A-Z,0-9]?[A-Z,0-9]?[0-9,A-Z]?"/></td>
                        </tr>
                    </tbody>
                </table>
                <input id="btnGuardar" type="submit" name="Guardar" value="Guardar"/>
            </form>
			<div id="respuesta">
			</div>
            <div class="row">
                <div  class="col-md-12 piepagina">
                    Copyright <span class="glyphicon glyphicon-copyright-mark"></span> 2016 Hermosoking.com
                </div>
            </div>
        </div><!--div container fluid-->
		<script src="<%=request.getContextPath()%>/js/bootstrap.min.js"></script>
	</body>
</html>