<%@ Page Title="Product Detail" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ProductDetails.aspx.cs" Inherits="ThePerfumeStore.ProdwuctDetails" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

   <div class="container my-5">

        <div class="card details-card p-0">
            <div class="row">
                <div class="col-md-6 col-sm-12 flex-c ">
                    <asp:Image ID="imgProduct" imageUrl="./img/p1.jpg" CssClass="img-fluid details-img" runat="server" />
                </div>
                <div class="col-md-6 col-sm-12 description-container p-5">
                    <div class="main-description">
                        <h3>
                            <asp:Label ID="lblName" runat="server" Text=""></asp:Label></h3>
                        <hr>
                        <p class="product-price" style="color:#0A111A" >$<asp:Label ID="lblPrice" runat="server" Text="" ForeColor="#0A111A"></asp:Label></p>
                        <div style="clear: both"></div>

                        <hr>
                        <div class="subtitle my-3 theme-text">Qty:
                            <asp:TextBox ID="txtQuantity" CssClass="text-center" type="number" Text="1" Width="100" min="1" runat="server" ForeColor="#36454"></asp:TextBox>
                        </div>
                         <div>
                            <div class="subtitle my-3 theme-text">Colors:</div>
                            <div class="select-colors d-flex">
                                
                                <asp:Button ID="btnColor" type="button"  runat="server" CssClass="color" CausesValidation="False" Enabled="False" EnableTheming="False" />
                               
                            </div>
                        </div>

                        <div>
                            <div class="subtitle my-3 theme-text">Size:     
                                <asp:Label ID="lblSize" runat="server" Text=""></asp:Label>
                            </div>
                        </div>


                        <p class="product-title mt-4 mb-1">Product Description</p>
                        <p class="product-description mb-4">
                            <asp:Label ID="lblDescription" runat="server" Text=""></asp:Label>
                        </p>

                        <p class="product-description mb-4">
                            <asp:Button ID="btnAddtoCart" class="btn btn-lg" runat="server" Text="Add to Cart" OnClick="_add_cart" style="background-color: #b7bee2; color:black; font-weight:600;" />
                            &nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:Button ID="Button2" runat="server" class="btn btn-lg" Text="Home" OnClick="_home" style="background-color: #b7bee2; color:black; font-weight:600;"/>
                        </p>
                        <p class="product-description mb-4">
                            &nbsp;
                        </p>
                    </div>
                </div>
            </div>
            <!-- End row -->
        </div>
    </div>
</asp:Content>
