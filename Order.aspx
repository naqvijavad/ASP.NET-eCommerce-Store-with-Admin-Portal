<%@ Page Title="Order Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Order.aspx.cs" Inherits="ThePerfumeStore.Order" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <style>
        .card {
        width: 400px;
        margin: 0 auto;
        padding: 20px;
        border: 1px solid #ccc;
        border-radius: 10px;
        background-color: #f7f7f7;
        box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.2);
    }

    .title {
        font-size: 24px;
        font-weight: bold;
        margin-bottom: 10px;
    }

    .info {
        margin-bottom: 20px;
    }

    .row {
        display: flex;
        align-items: center;
        margin-bottom: 10px;
    }

    .col-7, .col-5 {
        flex: 1;
    }

    #heading {
        font-weight: bold;
        margin-right: 10px;
    }

    #details, #name {
        font-size: 14px;
    }

    .pull-right {
        text-align: right;
    }

    .bg-white {
        background-color: white;
        padding: 10px;
        border: 1px solid #ddd;
        border-radius: 5px;
        margin-bottom: 10px;
    }

    .text-xl-center {
        text-align: center;
    }

    .text-dark {
        color: #333;
    }

    .fw-bold {
        font-weight: bold;
    }

    .total {
        background-color: #f0f0f0;
        padding: 10px;
        border-radius: 5px;
        text-align: right;
    }

    .col-9 {
        flex: 1;
    }

    big {
        font-size: 18px;
    }
    </style>


</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

     <div class="flex-c mt-5 pt-5">

</div>
    <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1">
        <ItemTemplate>
            <div class="card">
                <div class="title">Order Reciept</div>
                <div class="info">
                    <div class="row">
                        <div class="col-7">
                            <span id="heading">Name</span><br>
                            <span id="details"><%# Eval("firstname") %> &nbsp; <%# Eval("lastname") %></span><br />
                            <span id="heading">Email.</span><br>
                            <span id="details"><%# Eval("email") %></span>
                        </div>
                        <div class="col-5 pull-right">
                            <span id="heading">Order No.</span><br>
                            <span id="details"><%# Eval("Id") %></span><br />
                            <span id="heading">Mobile No.</span><br>
                            <span id="details"><%# Eval("phone") %></span>
                        </div>
                    </div>
                </div>
                <div class="pricing flex-c bg-white text-xl-center border-dark">
                    <div class="row ">
                          <span id="heading">Billing Address</span><br>

                        <div class="col-9 w-100">
                            <span id="name"><%# Eval("address") %></span>
                        </div>

                    </div>

                </div>
                
                <div class="pricing flex-c text-xl-center">
                    <div class="row ">
                        <span id="heading" class="text-dark fw-bold">Purchased Items</span><br>
                        <div class="col-9 w-100">
                            <span id="name"><%# Eval("Items") %></span>
                        </div>

                    </div>

                </div>
                <div class="total">
                    <div class="row">
                        <div class="col-9">Total bill payed</div>
                        <div class="col-3"><big>$ <%# Eval("price") %></big></div>
                    </div>
                </div>
            </div>
            <div>
                <footer class="my-5 pt-5 text-muted text-center text-small">
                    <p class="mb-1"></p>
                    <ul class="list-inline">
                        <li class="list-inline-item"><a href="#"></a></li>
                        <li class="list-inline-item"><a href="#"></a></li>
                        <li class="list-inline-item"><a href="#"></a></li>
                    </ul>
                </footer>
            </div>
        </ItemTemplate>
    </asp:Repeater>

   
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ThePerfumeStore_PerfumeData %>" SelectCommand="SELECT * FROM [Order] WHERE ([user] = @user)">
        <SelectParameters>
            <asp:SessionParameter DefaultValue="1" Name="user" SessionField="userId" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
</asp:Content>
