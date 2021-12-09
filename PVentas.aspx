<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="PVentas.aspx.cs" Inherits="ADS_Proyecto_Final.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   <center>
    <div class="container">
        <div class="row">
            <div class="col-md-6 col-lg-6">
                <asp:Label ID="Label1" runat="server" Text="Codigo producto:"></asp:Label>
                <asp:TextBox ID="TextBox1" runat="server" OnTextChanged="TextBox1_TextChanged"></asp:TextBox>
                <asp:RequiredFieldValidator runat="server" id="RequiredFieldValidator1" controltovalidate="TextBox1" ErrorMessage="Campo Obligatorio"
                     ForeColor="Red" Display="Dynamic" ToolTip="El campo es obligatorio" ValidationGroup="miGrupoValidacion">Campo obligatorio</asp:RequiredFieldValidator>
            </div>
            <div class="col-md-6 col-lg-6">
                <asp:Label ID="Label2" runat="server" Text="Cantidad:"></asp:Label>
                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator runat="server" id="RequiredFieldValidr4" controltovalidate="TextBox2" ErrorMessage="Campo Obligatorio"
                     ForeColor="Red" Display="Dynamic" ToolTip="El campo es obligatorio" ValidationGroup="miGrupoValidacion">Campo obligatorio</asp:RequiredFieldValidator>
            </div>
            <br>
            <center>
            <div>
                <asp:Button ID="btnagregar" runat="server" Text="Agregar" OnClick="btnagregar_Click" CausesValidation="True" ValidationGroup="miGrupoValidacion"/>
            </div>
            </center>
            <br>
            <center>
            <div class="col-md-6 col-lg-6">
                <asp:GridView ID="GridView1" runat="server" OnRowDataBound="GridView1_RowDataBound" BorderStyle="None" Font-Size="Medium" class="gridview" BackColor="White" BorderColor="#DEDFDE" BorderWidth="15px" 
                 CellPadding="15" CellSpacing="15" ForeColor="Black" GridLines="Vertical">
                </asp:GridView>
                <br>
                <asp:Button ID="btncompletar" runat="server" Text="Completar" OnClick="btncompletar_Click"/>
            </div>
            </center>
        </div>
    </div>
    </center>
</asp:Content>

