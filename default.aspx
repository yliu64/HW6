<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="default.aspx.vb" Inherits="_default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <a href="about.aspx">
        <asp:Image CssClass="img_legend" ID="Image3" runat="server" ImageUrl="~/images/legend.jpg" />
    </a>
    <a href="players.aspx">
        <asp:Image CssClass="img_first" ID="Image2" runat="server" ImageUrl="~/images/first-team.jpg" GenerateEmptyAlternateText="True" />
    </a>
    <a href="contact.aspx">
        <asp:Image CssClass="img_fans" ID="Image4" runat="server" ImageUrl="~/images/fans.jpg" />
    </a>
    <a href="newplayer.aspx">
        <asp:Image CssClass="img_search" ID="Image5" runat="server" ImageUrl="~/images/search.jpg" />
    </a>
</asp:Content>



