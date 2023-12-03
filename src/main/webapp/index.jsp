<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <link rel="stylesheet" type="text/css" href="css/bootstrap.css" />
    <link rel="stylesheet" type="text/css" href="css/style.css" />
</head>
<body class="bg-light">
<div class="container bg-white">
    <div class="row border-bottom">
        <div class="col-12 h2">Control de Acceso</div>
    </div>
</div>
<div class="container bg-light">
    <form method="post" action="jsp/validateAccess.jsp">
        <div class="row body mt-2">
            <div class="col-md-6 align-self-center">Usuario</div>
            <div class="col-md-6 align-self-center"><input type="text" name="user"/></div>
        </div>
        <div class="row body mt-2">
            <div class="col-md-6 align-self-center">Contraseña</div>
            <div class="col-md-6 align-self-center"><input type="text" name="pass"/></div>
        </div>
        <div class="row mt-2">
            <div class="col-md-6">
                &nbsp;
            </div>
            <div class="col-md-6 align-self-center">
                <input class="btn btn-primary" type="submit" value="ACEPTAR">
            </div>
        </div>
    </form>
    <%
        //                                                 v---- RECOGER MENSAJE DE ERROR DEL ÁMBITO request
        String error = (String) request.getAttribute("error");
//            v---- SI ESTÁ PRESENTE INFORMAR DEL ERROR
        if (error != null) {
    %>
    <div class="row mt-2">
        <div class="col-6">
            <div class="alert alert-danger alert-dismissible fade show">
                <strong>Error!</strong> <%=error%>
                <button type="button" class="btn-close" data-bs-dismiss="alert"></button>
            </div>
        </div>
    </div>
    <%
        }
    %>
</div>
<script src="js/bootstrap.bundle.js" ></script>
</body>
</html>