<%@ Control Language="C#" CodeBehind="ForeignKey.ascx.cs" Inherits="ADS_Proyecto_Final.ForeignKeyField" %>

<asp:HyperLink ID="HyperLink1" runat="server"
    Text="<%# GetDisplayString() %>"
    NavigateUrl="<%# GetNavigateUrl() %>"  />

