<%@ Page Title="Checkout Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="CheckOut.aspx.cs" Inherits="ThePerfumeStore.CheckOut" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <style type="text/css">
        .auto-style1 {
            height: 27px;
        }
    </style>

</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container">
        <div class="py-5 text-center">

            <h1>CheckOut Page</h1>
            
        </div>

        <div>

            <div>

                <form class="needs-validation" novalidate>
            <h2>Contact information </h2>
                    <div class="row">
                        <div class="col-md-6 mb-3">
                            <div class="md-form md-outline my-2">
                                <label for="firstName">First name</label>
                                <asp:TextBox ID="txtFname" class="form-control" runat="server"></asp:TextBox>

                                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtFname" ForeColor="Red" ErrorMessage="Please enter firstname"></asp:RequiredFieldValidator>


                            </div>
                            <div class="invalid-feedback">
                                Valid first name is required.
                            </div>
                        </div>
                        <div class="col-md-6 mb-3">
                            <div class="md-form md-outline my-2">
                                <label for="lastName">Last name</label>

                                <asp:TextBox ID="txtLname" class="form-control" runat="server"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtLname" ForeColor="Red" ErrorMessage="Please enter Lastname"></asp:RequiredFieldValidator>

                            </div>
                            <div class="invalid-feedback">
                                Valid last name is required.
                            </div>
                        </div>
                    </div>

                    <div class="mb-3">
                        <div class="md-form md-outline my-2">
                            <label for="username">Email</label>
                            <asp:TextBox ID="txtEmail" class="form-control" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtEmail" ErrorMessage="Please enter email" ForeColor="Red"></asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtEmail" ErrorMessage="Please enter valid email" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>

                        </div>
                        <div class="invalid-feedback">
                            Your username is required.
                        </div>
                    </div>

                    <div class="mb-3">
                        <div class="md-form md-outline my-2">
                            <label for="username">Confirm Email</label>
                            <asp:TextBox ID="txtEmail_reenter" class="form-control" runat="server"></asp:TextBox>

                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtEmail_reenter" ForeColor="Red" ErrorMessage="Please Re-entera email"></asp:RequiredFieldValidator>
                            <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtEmail" ControlToValidate="txtEmail_reenter" ForeColor="Red" ErrorMessage="email and re-email should be same"></asp:CompareValidator>

                        </div>

                        <div class="invalid-feedback">
                            Your username is required.
                        </div>
                    </div>

                    <div class="mb-3">
                        <div class="md-form md-outline my-2">
                            <label for="username">Phone Number</label>
                            <asp:TextBox ID="txtPhone" placeholder="123-456-7890" class="form-control" runat="server"></asp:TextBox>

                            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtPhone" ForeColor="Red" ErrorMessage="Please enter phone number"></asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtPhone" ForeColor="Red" ErrorMessage="Please enter valid phone number" ValidationExpression="((\(\d{3}\) ?)|(\d{3}-))?\d{3}-\d{4}"></asp:RegularExpressionValidator>

                        </div>
                        <div class="invalid-feedback">
                            Your username is required.
                        </div>
                    </div>

                    <h2>Billing Address </h2>


                    <div class="row">
                        <div class="col-12 mb-3">
                            <div class="md-form md-outline my-2">
                                <label for="email">Address</label>
                                <asp:TextBox ID="txtAddress" class="form-control" runat="server"></asp:TextBox>

                                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="Please enter Address" ForeColor="Red" ControlToValidate="txtAddress"></asp:RequiredFieldValidator>

                            </div>
                            <div class="invalid-feedback">
                                Please enter a valid email address for shipping updates.
                            </div>
                        </div>



                        <div class="col-12 mb-3">
                            <div class="md-form md-outline my-2">
                                <label for="address2">City</label>
                                <asp:TextBox ID="txtCity" class="form-control" runat="server"></asp:TextBox>

                                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="Please enter city" ForeColor="Red" ControlToValidate="txtCity"></asp:RequiredFieldValidator>

                            </div>
                        </div>

                        <div class="col-12 mb-3">
                            <div class="md-form md-outline my-2">
                                <label for="address">State</label>
                                <asp:TextBox ID="txtState" class="form-control" runat="server"></asp:TextBox>

                                <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ErrorMessage="Please enter state" ForeColor="Red" ControlToValidate="txtState"></asp:RequiredFieldValidator>

                            </div>
                            <div class="invalid-feedback">
                                Please enter your shipping address.
                            </div>
                        </div>
                        <div class="col-12 mb-3">
                            <div class="md-form md-outline my-2">
                                <label for="address">Zip Code</label>
                                <asp:TextBox ID="txtZipcode" class="form-control" placeholder="12345" runat="server"></asp:TextBox>

                                <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ForeColor="Red" ErrorMessage="Please enetr zip code" ControlToValidate="txtZipcode"></asp:RequiredFieldValidator>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ForeColor="Red" ErrorMessage="Please enter valid zip code" ControlToValidate="txtZipcode" ValidationExpression="\d{5}(-\d{4})?"></asp:RegularExpressionValidator>

                            </div>
                            <div class="invalid-feedback">
                                Please enter your shipping address.
                            </div>
                        </div>
                    </div>



                    <asp:Button ID="btnCheckout" CssClass="btn btn-lg btn-block w-25" runat="server" Text="Checkout" OnClick="btnCheckout_Click" Style="background-color:#b7bee2; color: black; font-weight: bold;" />
                    <asp:Button ID="btnCancel" runat="server" CssClass="btn btn-lg btn-block w-25" Text="cancel order" CausesValidation="False" PostBackUrl="~/Cart.aspx" Style="background-color:#b7bee2; color: black; font-weight: bold;" />
                    <asp:HyperLink ID="HyperLink1" runat="server" CssClass="w-25" NavigateUrl="~/Home.aspx" Style="color: black; font-weight: bold;">Continue shopping</asp:HyperLink>
                </form>
            </div>
        </div>

        <footer class="my-5 pt-5 text-muted text-center text-small">
            <p class="mb-1"></p>
            <ul class="list-inline">
                <li class="list-inline-item"><a href="#"></a></li>
                <li class="list-inline-item"><a href="#"></a></li>
                <li class="list-inline-item"><a href="#"></a></li>
            </ul>
        </footer>
    </div>

</asp:Content>
