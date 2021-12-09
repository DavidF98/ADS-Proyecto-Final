<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="PInventario.aspx.cs" Inherits="ADS_Proyecto_Final.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="row">
            <div class="col-md-2 col-lg-2">
                <asp:Label ID="Label1" runat="server" Text="Codigo"></asp:Label>
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator runat="server" id="RequiredFieldValidator1" controltovalidate="TextBox1" ErrorMessage="Campo Obligatorio"
                     ForeColor="Red" Display="Dynamic" ToolTip="El campo es obligatorio" ValidationGroup="miGrupoValidacion">Campo obligatorio</asp:RequiredFieldValidator>
            </div>
            <div class="col-md-2 col-lg-2">
                <asp:Label ID="Label2" runat="server" Text="Descripcion"></asp:Label>
                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator runat="server" id="reqName" controltovalidate="TextBox2" ErrorMessage="Campo Obligatorio"
                     ForeColor="Red" Display="Dynamic" ToolTip="El campo es obligatorio" ValidationGroup="miGrupoValidacion">Campo obligatorio</asp:RequiredFieldValidator>
            </div>
            <div class="col-md-2 col-lg-2">
                <asp:Label ID="Label3" runat="server" Text="Garantia"></asp:Label>
                <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator runat="server" id="Requiredator2" controltovalidate="TextBox3" ErrorMessage="Campo Obligatorio"
                     ForeColor="Red" Display="Dynamic" ToolTip="El campo es obligatorio" ValidationGroup="miGrupoValidacion">Campo obligatorio</asp:RequiredFieldValidator>
            </div>
            <div class="col-md-2 col-lg-2">
                <asp:Label ID="Label4" runat="server" Text="Precio"></asp:Label>
                <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator runat="server" id="RequiredFieldValidat" controltovalidate="TextBox4" ErrorMessage="Campo Obligatorio"
                     ForeColor="Red" Display="Dynamic" ToolTip="El campo es obligatorio" ValidationGroup="miGrupoValidacion">Campo obligatorio</asp:RequiredFieldValidator>
            </div>
            <div class="col-md-2 col-lg-2">
                <asp:Label ID="Label5" runat="server" Text="Existencia"></asp:Label>
                <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator runat="server" id="RequiredFieldValidr4" controltovalidate="TextBox5" ErrorMessage="Campo Obligatorio"
                     ForeColor="Red" Display="Dynamic" ToolTip="El campo es obligatorio" ValidationGroup="miGrupoValidacion">Campo obligatorio</asp:RequiredFieldValidator>
            </div>
        </div>
        <br>
        <center>
            <asp:Button ID="btn_agregar" runat="server" Text="Agregar" OnClick="btn_agregar_Click" CausesValidation="True" ValidationGroup="miGrupoValidacion"/>
            <asp:Button ID="btnmodificar" runat="server" Text="Editar" OnClick="btnmodificar_Click" CausesValidation="True" ValidationGroup="miGrupoValidacion"/>
        </center>      
    </div>
    <br>
    <center>
        <div class="scrolling-table-container">
             <asp:GridView ID="GridView1" runat="server" 
             BorderStyle="None" Font-Size="Medium" class="gridview" BackColor="White" BorderColor="#DEDFDE" BorderWidth="15px" 
                 CellPadding="15" CellSpacing="15" ForeColor="Black" GridLines="Vertical">
                 <AlternatingRowStyle BackColor="White" />
                 <FooterStyle BackColor="#CCCC99" />
                 <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
                 <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
                 <RowStyle BackColor="#F7F7DE" />
                 <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
                 <SortedAscendingCellStyle BackColor="#FBFBF2" />
                 <SortedAscendingHeaderStyle BackColor="#848384" />
                 <SortedDescendingCellStyle BackColor="#EAEAD3" />
                 <SortedDescendingHeaderStyle BackColor="#575357" />
             </asp:GridView>
         </div>
    </center>
</asp:Content>
