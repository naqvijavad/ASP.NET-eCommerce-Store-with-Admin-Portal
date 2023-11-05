<%@ Page Title="Admin Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Admin.aspx.cs" Inherits="ThePerfumeStore.Admin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

     <div style="text-align: center; font-size: 18px; font-weight: bold; color: #333; margin-top: 20px;">
        usertable<br />
    </div>
    
    <asp:GridView ID="GridView1" runat="server" CssClass="mydatagrid w-100" PagerStyle-CssClass="pager"
 HeaderStyle-CssClass="header" RowStyle-CssClass="rows" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource1">
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
            <asp:BoundField DataField="username" HeaderText="username" SortExpression="username" />
            <asp:BoundField DataField="password" HeaderText="password" SortExpression="password" />
            <asp:BoundField DataField="userType" HeaderText="userType" SortExpression="userType" />
        </Columns>
    </asp:GridView>
    <br />
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ThePerfumeStore_PerfumeData %>" DeleteCommand="DELETE FROM [Users] WHERE [Id] = @Id" InsertCommand="INSERT INTO [Users] ([username], [password], [userType]) VALUES (@username, @password, @userType)" SelectCommand="SELECT * FROM [Users]" UpdateCommand="UPDATE [Users] SET [username] = @username, [password] = @password, [userType] = @userType WHERE [Id] = @Id">
        <DeleteParameters>
            <asp:Parameter Name="Id" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="username" Type="String" />
            <asp:Parameter Name="password" Type="String" />
            <asp:Parameter Name="userType" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="username" Type="String" />
            <asp:Parameter Name="password" Type="String" />
            <asp:Parameter Name="userType" Type="String" />
            <asp:Parameter Name="Id" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <div _designerregion="0">


        <asp:DetailsView ID="DetailsView1" runat="server" AllowPaging="true" AutoGenerateRows="False" DataKeyNames="Id" DataSourceID="SqlDataSource1" 
            CellPadding="4" DefaultMode="Insert" Font-Bold="True"
Font-Names="Verdana" Font-Size="Small" ForeColor="#333333" 
            GridLines="None" Height="50px" Width="125px">



            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
<CommandRowStyle BackColor="#E2DED6" Font-Bold="True" />
<EditRowStyle BackColor="#999999" />
<FieldHeaderStyle BackColor="#E9ECF1" Font-Bold="True" />


            <Fields>


                <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                <asp:BoundField DataField="password" HeaderText="password" SortExpression="password" />
                <asp:BoundField DataField="userType" HeaderText="userType" SortExpression="userType" />

                 <asp:TemplateField HeaderText="username">
            <InsertItemTemplate>
                <asp:TextBox ID="txtUsername" runat="server" Text='<%# Bind("username") %>' />
            </InsertItemTemplate>

        </asp:TemplateField>
                <asp:CommandField ShowInsertButton="True" />
            </Fields>
            <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
<HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />


<HeaderTemplate>
User Information
</HeaderTemplate>
<PagerStyle BackColor="#284775" Font-Names="Verdana" Font-Size="Small"
ForeColor="White" HorizontalAlign="Center" />
<RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
        </asp:DetailsView>




        <br />
        <br />
        <div style="text-align: center; font-size: 18px; font-weight: bold; color: #333; margin-top: 20px;">Product table<br /></div>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ThePerfumeStore_PerfumeData %>" DeleteCommand="DELETE FROM [Product] WHERE [Id] = @Id" InsertCommand="INSERT INTO [Product] ([Name], [price], [color], [size], [imagePath], [Description]) VALUES (@Name, @price, @color, @size, @imagePath, @Description)" SelectCommand="SELECT * FROM [Product]" UpdateCommand="UPDATE [Product] SET [Name] = @Name, [price] = @price, [color] = @color, [size] = @size, [imagePath] = @imagePath, [Description] = @Description WHERE [Id] = @Id">
            <DeleteParameters>
                <asp:Parameter Name="Id" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Name" Type="String" />
                <asp:Parameter Name="price" Type="Decimal" />
                <asp:Parameter Name="color" Type="String" />
                <asp:Parameter Name="size" Type="String" />
                <asp:Parameter Name="imagePath" Type="String" />
                <asp:Parameter Name="Description" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Name" Type="String" />
                <asp:Parameter Name="price" Type="Decimal" />
                <asp:Parameter Name="color" Type="String" />
                <asp:Parameter Name="size" Type="String" />
                <asp:Parameter Name="imagePath" Type="String" />
                <asp:Parameter Name="Description" Type="String" />
                <asp:Parameter Name="Id" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </div>
    <asp:GridView ID="GridView2" runat="server" 
        CssClass="mydatagrid1" PagerStyle-CssClass="pager1"
 HeaderStyle-CssClass="header1" RowStyle-CssClass="rows1" AllowPaging="True" AllowSorting="True" 
        AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource2">
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
            <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
            <asp:BoundField DataField="price" HeaderText="price" SortExpression="price" />
            <asp:BoundField DataField="color" HeaderText="color" SortExpression="color" />
            <asp:BoundField DataField="size" HeaderText="size" SortExpression="size" />
            <asp:BoundField DataField="imagePath" HeaderText="imagePath" SortExpression="imagePath" />
            <asp:BoundField DataField="Description" HeaderText="Description" SortExpression="Description" />
        </Columns>
    </asp:GridView>
    <br />
    <asp:DetailsView ID="DetailsView2" runat="server" AllowPaging="true" AutoGenerateRows="False" DataKeyNames="Id" DataSourceID="SqlDataSource2" 
            CellPadding="4" DefaultMode="Insert" Font-Bold="True"
Font-Names="Verdana" Font-Size="Small" ForeColor="#333333" 
            GridLines="None" Height="50px" Width="125px">

            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
<CommandRowStyle BackColor="#E2DED6" Font-Bold="True" />
<EditRowStyle BackColor="#999999" />
<FieldHeaderStyle BackColor="#E9ECF1" Font-Bold="True" />
<Fields>
            <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
            <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
            <asp:BoundField DataField="price" HeaderText="price" SortExpression="price" />
            <asp:BoundField DataField="color" HeaderText="color" SortExpression="color" />
            <asp:BoundField DataField="size" HeaderText="size" SortExpression="size" />
            <asp:BoundField DataField="imagePath" HeaderText="imagePath" SortExpression="imagePath" />
            <asp:BoundField DataField="Description" HeaderText="Description" SortExpression="Description" />
            <asp:CommandField ShowInsertButton="True" />
        </Fields>
        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
<HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
<HeaderTemplate>
Product Information
</HeaderTemplate>
<PagerStyle BackColor="#284775" Font-Names="Verdana" Font-Size="Small"
ForeColor="White" HorizontalAlign="Center" />
<RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
    </asp:DetailsView>
    <br />
    <br />
    <div style="text-align: center; font-size: 18px; font-weight: bold; color: #333; margin-top: 20px;"> Order Table<br /></div>
    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ThePerfumeStore_PerfumeData %>" DeleteCommand="DELETE FROM [Order] WHERE [Id] = @Id" InsertCommand="INSERT INTO [Order] ([Items], [address], [firstname], [lastname], [phone], [email], [price], [user]) VALUES (@Items, @address, @firstname, @lastname, @phone, @email, @price, @user)" SelectCommand="SELECT * FROM [Order]" UpdateCommand="UPDATE [Order] SET [Items] = @Items, [address] = @address, [firstname] = @firstname, [lastname] = @lastname, [phone] = @phone, [email] = @email, [price] = @price, [user] = @user WHERE [Id] = @Id">
        <DeleteParameters>
            <asp:Parameter Name="Id" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="Items" Type="String" />
            <asp:Parameter Name="address" Type="String" />
            <asp:Parameter Name="firstname" Type="String" />
            <asp:Parameter Name="lastname" Type="String" />
            <asp:Parameter Name="phone" Type="String" />
            <asp:Parameter Name="email" Type="String" />
            <asp:Parameter Name="price" Type="Decimal" />
            <asp:Parameter Name="user" Type="Int32" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="Items" Type="String" />
            <asp:Parameter Name="address" Type="String" />
            <asp:Parameter Name="firstname" Type="String" />
            <asp:Parameter Name="lastname" Type="String" />
            <asp:Parameter Name="phone" Type="String" />
            <asp:Parameter Name="email" Type="String" />
            <asp:Parameter Name="price" Type="Decimal" />
            <asp:Parameter Name="user" Type="Int32" />
            <asp:Parameter Name="Id" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <asp:GridView ID="GridView3" 
        runat="server" CssClass="mydatagrid1" PagerStyle-CssClass="pager"
 HeaderStyle-CssClass="header" RowStyle-CssClass="rows" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource3">
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
            <asp:BoundField DataField="Items" HeaderText="Items" SortExpression="Items" />
            <asp:BoundField DataField="address" HeaderText="address" SortExpression="address" />
            <asp:BoundField DataField="firstname" HeaderText="firstname" SortExpression="firstname" />
            <asp:BoundField DataField="lastname" HeaderText="lastname" SortExpression="lastname" />
            <asp:BoundField DataField="phone" HeaderText="phone" SortExpression="phone" />
            <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
            <asp:BoundField DataField="price" HeaderText="price" SortExpression="price" />
            <asp:BoundField DataField="user" HeaderText="user" SortExpression="user" />
        </Columns>
    </asp:GridView>

    <br />


    <br />
</asp:Content>
