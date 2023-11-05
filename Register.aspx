<%@ Page Title="Register Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="ThePerfumeStore.Register" %>



<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div style="max-width: 500px; margin: 48px auto; padding: 20px; background-color: #f2f2f2; box-shadow: 0px 2px 5px rgba(0, 0, 0, 0.2); border-radius: 10px; text-align: center;">
         <asp:Label ID="lblWarning" runat="server" ForeColor="Red"></asp:Label>
        <div class="form-outline mb-4" style="border: 1px solid #ced4da; border-radius: 10px; padding: 15px; background-color: #f8f9fa;">
            <label class="form-label" for="form2Example1" style="font-weight: bold; color: #333; font-size: 16px;">Email Address</label>
            <asp:TextBox ID="txtUsername" CssClass="form-control" runat="server"></asp:TextBox>
        </div>


        <div class="form-outline mb-4" style="border: 1px solid #ced4da; border-radius: 10px; padding: 15px; background-color: #f8f9fa;">
            <label class="form-label" for="form2Example1" style="font-weight: bold; color: #333; font-size: 16px;">Password</label>
            <asp:TextBox ID="txtPassword" CssClass="form-control" type="password" runat="server"></asp:TextBox>
        </div>
        <div class="form-outline mb-4" style="border: 1px solid #ced4da; border-radius: 10px; padding: 15px; background-color: #f8f9fa;">
            <label class="form-label" for="form2Example1" style="font-weight: bold; color: #333; font-size: 16px;">User Type:</label>
            <asp:DropDownList ID="ddlUserType" CssClass="form-control" runat="server">
                <asp:ListItem>User</asp:ListItem>
                <asp:ListItem>Admin</asp:ListItem>
            </asp:DropDownList>
        </div>
        
        <asp:Button ID="btnRegister" runat="server"  CssClass="btn btn-primary w-100 btn-block mb-4" Text="Register" OnClick="_Register" style="background-color: #b7bee2; border: 6px solid #b7bee2; transition: background-color 0.3s, border-color 0.3s;" />
        
        <div style="margin-top: 20px; font-family: 'Segoe UI', sans-serif;">
            <p style="font-size: 16px; color: #333;">
                Already User? <a href="#!" style="text-decoration: none; color: #ff9800;">
                    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Login.aspx" style="font-weight: bold;">Login</asp:HyperLink>
                </a>
            </p>

        </div>
    </div>

</asp:Content>
