<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="players.aspx.vb" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">



    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:cs_players %>" 
        SelectCommand="SELECT * FROM [playerTable]" DeleteCommand="DELETE FROM [playerTable] WHERE [ID] = @ID" InsertCommand="INSERT INTO [playerTable] ([name], [age], [nationality], [position], [matches], [goals], [assists], [marketvalue], [pictureURL], [squad], [pictureURL2]) VALUES (@name, @age, @nationality, @position, @matches, @goals, @assists, @marketvalue, @pictureURL, @squad, @pictureURL2)" UpdateCommand="UPDATE [playerTable] SET [name] = @name, [age] = @age, [nationality] = @nationality, [position] = @position, [matches] = @matches, [goals] = @goals, [assists] = @assists, [marketvalue] = @marketvalue, [pictureURL] = @pictureURL, [squad] = @squad, [pictureURL2] = @pictureURL2 WHERE [ID] = @ID">
        <DeleteParameters>
            <asp:Parameter Name="ID" Type="Int32" />
        </DeleteParameters>
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
        <UpdateParameters>
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
            <asp:Parameter Name="ID" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>


    <asp:GridView ID="GridView1" 
                                    runat="server" 
                                    AutoGenerateColumns="False" 
                                    DataKeyNames="ID" 
                                    DataSourceID="SqlDataSource1" 
                                    AllowPaging="True"
                                    PageSize="8"                                   
                                    AllowSorting="True"
                                    Gridlines="None"
                                    CssClass="cssgridview"
                                    AlternatingRowStyle-CssClass="alt"
                                    PagerStyle-CssClass="pgr"
        >
        <Columns>
            <asp:BoundField DataField="squad" HeaderText="Squad #" SortExpression="squad" />
            <asp:BoundField DataField="name" HeaderText="Name" SortExpression="name" />
            <asp:ImageField DataImageUrlField="pictureURL">
            </asp:ImageField>
            <asp:HyperLinkField DataNavigateUrlFields="ID" DataNavigateUrlFormatString="playerdetails.aspx?ID={0}" Text="View Player Details" />
        </Columns>
    </asp:GridView>



</asp:Content>

