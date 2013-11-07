<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="search.aspx.vb" Inherits="search" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <asp:SqlDataSource ID="SqlDataSource1" runat="server"
         ConnectionString="<%$ ConnectionStrings:cs_players %>" 
        SelectCommand="SELECT * FROM [playerTable]">
    </asp:SqlDataSource>

    <% If Not IsPostBack Then%> 
                                Search for a player by name:&nbsp;&nbsp;&nbsp;
                                <asp:TextBox ID="tb_findPlayer" runat="server" AutoPostBack ="true" ></asp:TextBox>
            
    <% Else%>
                                Search for another player by name:&nbsp;&nbsp;&nbsp; 
                                <asp:TextBox ID="tb_findAnotherPlayer" runat="server"  AutoPostBack ="true" ></asp:TextBox>
                                <br />
                                <br />

                                <asp:GridView ID="GridView1" runat="server" 
                                    AutoGenerateColumns="False" 
                                    DataKeyNames="ID" 
                                    DataSourceID="SqlDataSource1" 
                                    AllowPaging="True" 
                                    AllowSorting="True"
                                      CssClass="cssgridview" 
                                    >

        <Columns>
            <asp:BoundField DataField="name" HeaderText="Name" SortExpression="name" />
            <asp:BoundField DataField="squad" HeaderText="Squad #" SortExpression="squad" />
            <asp:BoundField DataField="age" HeaderText="Age" SortExpression="age" />
            <asp:BoundField DataField="nationality" HeaderText="Nationality" SortExpression="nationality" />
            <asp:BoundField DataField="position" HeaderText="Position" SortExpression="position" />
            <asp:BoundField DataField="matches" HeaderText="Matches" SortExpression="matches" />
            <asp:BoundField DataField="goals" HeaderText="Goals" SortExpression="goals" />
            <asp:BoundField DataField="assists" HeaderText="Assists" SortExpression="assists" />
            <asp:BoundField DataField="marketvalue" HeaderText="Market Value" SortExpression="marketvalue" />
            <asp:HyperLinkField DataNavigateUrlFields="ID" DataNavigateUrlFormatString="playerdetails.aspx?ID={0}" Text="View Detail" />
        </Columns>
    </asp:GridView>
<% End If %> 
</asp:Content>

