<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="ADS_Proyecto_Final.WebForm4" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
        <link href="Content/bootstrap.min.css" rel="stylesheet" type="text/css" />
    <link href="Content/Site.css" rel="stylesheet" />
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
         <div class="form-box" id="login-box">
                    <div class="header">Inventario</div>
                    <div class="body bg-gray">
                        <center>
                        <div class="form-group">
                            <label>Usuario:</label>
                            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator runat="server" id="reqName" controltovalidate="TextBox1" ErrorMessage="Campo Obligatorio"
                     ForeColor="Red" Display="Dynamic" ToolTip="El campo es obligatorio" ValidationGroup="miGrupoValidacion">Campo obligatorio</asp:RequiredFieldValidator>
                        </div>
                            <br/>
                        <div class="form-group">
                            <label>Contraseña:</label>
                            <asp:TextBox ID="TextBox2" runat="server" Visible="True" TextMode="Password"></asp:TextBox>
                            <asp:RequiredFieldValidator runat="server" id="RequiredFieldValidator1" controltovalidate="TextBox2" ErrorMessage="Campo Obligatorio"
                     ForeColor="Red" Display="Dynamic" ToolTip="El campo es obligatorio" ValidationGroup="miGrupoValidacion">Campo obligatorio</asp:RequiredFieldValidator>
                        </div>
                        </center>
                    </div>
                    <div class="footer bg-gray">
                       <center> 
                           <asp:Button ID="Button1" runat="server" Text="Ingresar" OnClick="Button1_Click" CausesValidation="True" ValidationGroup="miGrupoValidacion"/>
                       </center>
                    </div>
        </div>
        <div id="logo">
				<img src="https://uploadgerencie.com/imagenes/inventario-periodico.png"/>
		</div>
    </form>
</body>
</html>
