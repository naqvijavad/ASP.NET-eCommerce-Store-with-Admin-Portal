<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="ThePerfumeStore._Default" %>

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
            <asp:TextBox type="password" ID="txtPassword" CssClass="form-control" runat="server"></asp:TextBox>
        </div>

        <asp:Button ID="btnLogin" CssClass="btn btn-primary w-100 btn-block mb-4" runat="server" Text="Login" OnClick="_login" style="background-color: #b7bee2; border: 6px solid #b7bee2; transition: background-color 0.3s, border-color 0.3s;" />
        
        <div  style="margin-top: 20px; font-family: 'Segoe UI', sans-serif;">
            <p style="font-size: 16px; color: #333;">Not a User? 
                <a href="#!" style="text-decoration: none; color: #ff9800;">
                    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Register.aspx" style="font-weight: bold;">Create an Account</asp:HyperLink>
                </a>
            </p>
        </div>

    </div>

</asp:Content>