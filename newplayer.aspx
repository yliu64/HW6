<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="newplayer.aspx.vb" Inherits="playerdetails" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:cs_players %>" InsertCommand="INSERT INTO [playerTable] ([name], [age], [nationality], [position], [matches], [goals], [assists], [marketvalue], [pictureURL], [squad], [pictureURL2]) VALUES (@name, @age, @nationality, @position, @matches, @goals, @assists, @marketvalue, @pictureURL, @squad, @pictureURL2)" SelectCommand="SELECT * FROM [playerTable] WHERE ([ID] = @ID)">
        <InsertParameters>
            <asp:Parameter Name="name" Type="String" />
            <asp:Parameter Name="age" Type="Int32" />
            <asp:Parameter Name="nationality" Type="String" />
            <asp:Parameter Name="position" Type="String" />
            <asp:Parameter Name="matches" Type="Int32" />
            <asp:Parameter Name="goals" Type="Int32" />
            <asp:Parameter Name="assists" Type="Int32" />
            <asp:Parameter Name="marketvalue" Type="String" />
            <asp:Parameter Name="pictureURL" Type="String" />
            <asp:Parameter Name="squad" Type="Int32" />
            <asp:Parameter Name="pictureURL2" Type="String" />
        </InsertParameters>
        <SelectParameters>
            <asp:QueryStringParameter Name="ID" QueryStringField="ID" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" DataKeyNames="ID" DataSourceID="SqlDataSource1" Height="50px" Width="125px" DefaultMode="Insert">
        <Fields>
            <asp:BoundField DataField="name" HeaderText="Name" SortExpression="name" />
            <asp:BoundField DataField="squad" HeaderText="Squad #" SortExpression="squad" />
            <asp:BoundField DataField="age" HeaderText="Age" SortExpression="age" />
            <asp:BoundField DataField="nationality" HeaderText="Nationality" SortExpression="nationality" />
            <asp:BoundField DataField="position" HeaderText="Position" SortExpression="position" />
            <asp:BoundField DataField="matches" HeaderText="Matches" SortExpression="matches" />
            <asp:BoundField DataField="goals" HeaderText="Goals" SortExpression="goals" />
            <asp:BoundField DataField="assists" HeaderText="Assists" SortExpression="assists" />
            <asp:BoundField DataField="marketvalue" HeaderText="Market Value" SortExpression="marketvalue" />
            <asp:ImageField DataImageUrlField="pictureURL2">
                <ControlStyle Width="460px" />
            </asp:ImageField>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowInsertButton="True" />
        </Fields>
    </asp:DetailsView>
</asp:Content>

