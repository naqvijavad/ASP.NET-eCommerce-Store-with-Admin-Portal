<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="ThePerfumeStore.Home" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

      <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ThePerfumeStore_PerfumeData %>" SelectCommand="SELECT * FROM [Product]"></asp:SqlDataSource>
    <div class="flex-c">
            <h2>
                <asp:Label ID="lblUserName" runat="server" Text="Label"></asp:Label>
            </h2>
    </div>
   
    <div class="flex">
        <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1" EnableTheming="True">
            <ItemTemplate>
                <div class="product-card">
                    <div class="product-tumb">
                        <asp:Image runat="server" ImageUrl='<%# Eval("imagePath") %>' ID="imgProduct"></asp:Image>
                    </div>
                    <div class="product-details">
                        <h4>
                            <asp:Label runat="server" Text='<%# Eval("Name") %>' ID="lblroductName" ForeColor="#0a111a"></asp:Label>
                        </h4>
                        <div class="product-price">
                            $ <asp:Label runat="server" Text='<%# Eval("price") %>' ID="lblPrice"></asp:Label>
                        </div>
                    </div>
                    <div class="product-bottom-details flex-c">
                        <asp:HyperLink ID="HyperLink1" NavigateUrl='<%# Eval("Id", "~/ProductDetails.aspx?Id={0}") %>' runat="server">

                    <div style="width:250px;background-color: #b7bee2; color: black; font-weight: bold;" class=" mb-3 btn btn-secondary">View Product</div> 
                        </asp:HyperLink>
                    </div>
                </div>

            </ItemTemplate>
        </asp:Repeater>
    </div>


</asp:Content>
