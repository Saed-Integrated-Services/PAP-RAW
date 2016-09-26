<%@ Page Title="Register" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="Paperless_Hospital.Account.Register" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <h2><%: Title %>.</h2>
    <p class="text-danger">
        <asp:Literal runat="server" ID="ErrorMessage" />
    </p>

    <div class="form-horizontal">
        <div class="col-md-6">
            <h4>Create a new account</h4>
        </div>
        <div class="col-md-6">
            <h4>Billing Info</h4>
        </div>
        <hr />
        <asp:ValidationSummary runat="server" CssClass="text-danger" />
        <div class="row">
            <div class="col-md-6">
                <div class="form-group">
                    <asp:Label runat="server" AssociatedControlID="Email" CssClass="col-md-2 control-label">Email</asp:Label>
                    <div class="col-md-10">
                        <asp:TextBox runat="server" ID="Email" CssClass="form-control" TextMode="Email" />
                        <asp:RequiredFieldValidator runat="server" ControlToValidate="Email"
                            CssClass="text-danger" ErrorMessage="The email field is required." />
                    </div>
                </div>
                <div class="form-group">
                    <asp:Label runat="server" AssociatedControlID="company" CssClass="col-md-2 control-label">Company</asp:Label>
                    <div class="col-md-10">
                        <asp:TextBox runat="server" ID="company" CssClass="form-control" TextMode="SingleLine" />
                        <asp:RequiredFieldValidator runat="server" ControlToValidate="company"
                            CssClass="text-danger" ErrorMessage="The Company field is required." />
                    </div>
                </div>
                <div class="form-group">
                    <asp:Label runat="server" AssociatedControlID="contact" CssClass="col-md-2 control-label">Contact</asp:Label>
                    <div class="col-md-10">
                        <asp:TextBox runat="server" ID="contact" CssClass="form-control" TextMode="Email" />
                        <asp:RequiredFieldValidator runat="server" ControlToValidate="contact"
                            CssClass="text-danger" ErrorMessage="The Contact field is required." />
                    </div>
                </div>
                <div class="form-group">
                    <asp:Label runat="server" AssociatedControlID="address" CssClass="col-md-2 control-label">Address</asp:Label>
                    <div class="col-md-10">
                        <asp:TextBox runat="server" ID="address" CssClass="form-control" TextMode="MultiLine" />
                        <asp:RequiredFieldValidator runat="server" ControlToValidate="address"
                            CssClass="text-danger" ErrorMessage="The Address field is required." />
                    </div>
                </div>
                <div class="form-group">
                    <asp:Label runat="server" AssociatedControlID="Password" CssClass="col-md-2 control-label">Password</asp:Label>
                    <div class="col-md-10">
                        <asp:TextBox runat="server" ID="Password" TextMode="Password" CssClass="form-control" />
                        <asp:RequiredFieldValidator runat="server" ControlToValidate="Password"
                            CssClass="text-danger" ErrorMessage="The password field is required." />
                    </div>
                </div>
                <div class="form-group">
                    <asp:Label runat="server" AssociatedControlID="ConfirmPassword" CssClass="col-md-2 control-label">Confirm password</asp:Label>
                    <div class="col-md-10">
                        <asp:TextBox runat="server" ID="ConfirmPassword" TextMode="Password" CssClass="form-control" />
                        <asp:RequiredFieldValidator runat="server" ControlToValidate="ConfirmPassword"
                            CssClass="text-danger" Display="Dynamic" ErrorMessage="The confirm password field is required." />
                        <asp:CompareValidator runat="server" ControlToCompare="Password" ControlToValidate="ConfirmPassword"
                            CssClass="text-danger" Display="Dynamic" ErrorMessage="The password and confirmation password do not match." />
                    </div>
                </div>
                <div class="form-group">
                    <div class="col-md-offset-10 col-md-10">
                        <asp:Button runat="server" OnClick="CreateUser_Click" Text="Register" CssClass="btn btn-default" />
                    </div>
                </div>
            </div>
            <div class="col-md-6">
                <div class="form-group">
                    <asp:Label runat="server" AssociatedControlID="card_number" CssClass="col-md-2 control-label">Card Number</asp:Label>
                    <div class="col-md-10">
                        <asp:TextBox runat="server" ID="card_number" CssClass="form-control" TextMode="Number" />
                        <asp:RequiredFieldValidator runat="server" ControlToValidate="card_number"
                            CssClass="text-danger" ErrorMessage="The Card Number field is required." />
                    </div>
                </div>
                <div class="form-group">
                    <asp:Label runat="server" AssociatedControlID="expiry_date" CssClass="col-md-2 control-label">Expiry Date</asp:Label>
                    <div class="col-md-5">
                        <asp:TextBox runat="server" ID="expiry_date" TextMode="Date" CssClass="form-control" />
                        <asp:RequiredFieldValidator runat="server" ControlToValidate="expiry_date"
                            CssClass="text-danger" ErrorMessage="The Expiry Date field is required." />
                    </div>
                </div>
                <div class="form-group">
                    <asp:Label runat="server" AssociatedControlID="cvv" CssClass="col-md-2 control-label">Cvv</asp:Label>
                    <div class="col-md-10">
                        <asp:TextBox runat="server" ID="cvv" TextMode="Number" CssClass="form-control" />
                        <asp:RequiredFieldValidator runat="server" ControlToValidate="cvv"
                            CssClass="text-danger" Display="Dynamic" ErrorMessage="The Cvv field is required." />
                        <%--<asp:CompareValidator runat="server" ControlToCompare="Password" ControlToValidate="ConfirmPassword"
                            CssClass="text-danger" Display="Dynamic" ErrorMessage="The password and confirmation password do not match." />--%>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
