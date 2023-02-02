<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Default.aspx.vb" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="UTF-8"/>
    <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport"/>
    <title>Sistema de Ticket</title>
    <!-- Favicon-->
    <link rel="icon" href="Plantilla/favicon.ico" type="image/x-icon"/>

    <!-- Google Fonts -->
    <link href="https://fonts.googleapis.com/css?family=Roboto:400,700&subset=latin,cyrillic-ext" rel="stylesheet" type="text/css"/>
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet" type="text/css"/>

    <!-- Bootstrap Core Css -->
    <link href="Plantilla/plugins/bootstrap/css/bootstrap.css" rel="stylesheet"/>

    <!-- Waves Effect Css -->
    <link href="Plantilla/plugins/node-waves/waves.css" rel="stylesheet" />
    <link href="Plantilla/plugins/Mensajes/toastr.min.css" rel="stylesheet" />
    <!-- Animation Css -->
    <link href="Plantilla/plugins/animate-css/animate.css" rel="stylesheet" />

    <!-- Custom Css -->
    <link href="Plantilla/css/style.css" rel="stylesheet"/>
</head>

<body class="login-page">
    <script src="Plantilla/plugins/jquery/jquery.min.js"></script>
    <script src="Plantilla/plugins/Mensajes/toastr.min.js"></script>
    <script src="Plantilla/plugins/Mensajes/custom/mens.js"></script>
    <div class="login-box">
        <div class="logo">
            <a href="javascript:void(0);">Sistema<b>Ticket</b></a>
            <small>Sistema de ticket</small>
        </div>
        <div class="card">
            <div class="body">
                <form runat="server">
                    <div class="msg">Inicie sesión para ingresar</div>
                    <div class="input-group">
                        <span class="input-group-addon">
                            <i class="material-icons">person</i>
                        </span>
                        <div class="form-line">
                            <asp:TextBox runat="server" class="form-control" id="txtCorreo" placeholder="Correo electrónico" required="true" autofocus="true"></asp:TextBox>
                        </div>
                    </div>
                    <div class="input-group">
                        <span class="input-group-addon">
                            <i class="material-icons">lock</i>
                        </span>
                        <div class="form-line">
                            <asp:TextBox TextMode="Password" runat="server" class="form-control" id="txtPass" placeholder="Contraseña" required="true"></asp:TextBox>
                        </div>
                    </div>
                    <div class="row align-center">
                        <%--<div class="col-xs-8 p-t-5">
                            <input type="checkbox" name="rememberme" id="rememberme" class="filled-in chk-col-pink">
                            <label for="rememberme">Remember Me</label>
                        </div>--%>
                        <div class="col-xs-6">
                            <asp:Button runat="server" CssClass="btn btn-block bg-pink waves-effect" ID="btnLogin" Text="Iniciar Sesión" OnClick="btnLogin_Click" />
                        </div>
                        <div class="col-xs-6 align-right text-center">
                            <a href="#">¿Ha olvidado su contraseña?</a>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>

    <!-- Jquery Core Js -->
    

    <!-- Bootstrap Core Js -->
    <script src="Plantilla/plugins/bootstrap/js/bootstrap.js"></script>
    
    <!-- Waves Effect Plugin Js -->
    <script src="Plantilla/plugins/node-waves/waves.js"></script>

    <!-- Validation Plugin Js -->
    <script src="Plantilla/plugins/jquery-validation/jquery.validate.js"></script>

    <!-- Custom Js -->
    <script src="Plantilla/js/admin.js"></script>
    <script src="Plantilla/js/pages/examples/sign-in.js"></script>
</body>

</html>