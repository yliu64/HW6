<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="players.aspx.vb" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">



    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:cs_players %>" 
        SelectCommand="SELECT * FROM [playerTable]">
    </asp:SqlDataSource>


    <asp:GridView ID="GridView1" 
                                    runat="server" 
                                    AutoGenerateColumns="False" 
                                    DataKeyNames="Id" 
                                    DataSourceID="SqlDataSource1" 
                                    AllowPaging="True"
                                    PageSize="6"
                                    Gridlines="None"
                                    CssClass="cssgridview" AllowSorting="True"
        >
        <Columns>
            <asp:BoundField DataField="squad" HeaderText="Squad Number" SortExpression="squad" />
            <asp:BoundField DataField="name" HeaderText="Name" SortExpression="name" />
            <asp:ImageField DataImageUrlField="pictureURL">
            </asp:ImageField>
            <asp:CommandField ShowSelectButton="True" />
        </Columns>
    </asp:GridView>



</asp:Content>

