<%@ Page Title="Cart Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Cart.aspx.cs" Inherits="ThePerfumeStore.Cart" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="Styles/cart.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="cart" style="padding:10px">
        <div class="container">
            <div class="grid_12">
                <h1>Cart</h1>
            </div>
            <ul class="items">

                <asp:Repeater ID="Repeater1" runat="server">

                    <ItemTemplate>
                        <li class="grid_4 item">
                            <a href="#" class="btn-remove">
                                <asp:Button ID="btnRemove" cssClass="far fa-trash-alt btn text-danger" runat="server" Text="Remove" OnClick="_remove" />
                            </a>
                            <div class="preview">
                                <asp:Image ID="imgProduct" ImageUrl=' <%# Eval("image") %>' runat="server" />

                            </div>
                            <div class="details" data-price="15.50">
                                <h3>
                                    <asp:Label ID="lblName" runat="server" Text=' <%# Eval("name") %>'></asp:Label>
                                </h3>
                                <h2>$<asp:Label ID="lblprice" runat="server" Text=' <%# Eval("Price") %>'></asp:Label>
                                </h2>

                                <asp:HiddenField ID="HiddenField1" Value=' <%# Eval("Id") %>' runat="server" />
                            </div>
                            <div class="inner_container align-items-stretch">

                                <div class="col_1of2 align-center picker align-items-stretch">
                                    <div class="details p-0 overflow-none w-100" data-price="15.50">

                                        <h3>Qty:
                                            <asp:Label type="number" ID="txtQuantity" Text='<%# Eval("quantity") %>' runat="server"></asp:Label>
                                        </h3>

                                        <h2>Total:
                                            <asp:Label type="number" ID="Label1" Text='<%# Eval("total") %>' runat="server"></asp:Label>
                                        </h2>

                                    </div>
                                </div>
                            </div>

                        </li>

                    </ItemTemplate>

                </asp:Repeater>
                <li class="grid_4 item mb-10">
                     <div class="details w-100 flex-row justify-content-between" data-price="15.50">
                         <h2></h2>
                    <h2 class="m-10 p-10 mp-g">Total:<asp:Label ID="lblFinalTotal" runat="server" Text=""></asp:Label></h2>
                         </div>
                </li>
            </ul>


            <asp:Button ID="btnGoToCheckout" CssClass="btn btn-secondary w-100" runat="server" Text="Go to Checkout" OnClick="_checkout" Style="background-color:#b7bee2; color: black; font-weight: bold;" />
            
        </div>
    </div>

</asp:Content>
