<%@ Page Title="Register" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="Paperless_Hospital.Account.Register" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <h2><%: Title %>.</h2>
    <p class="text-danger">
        <asp:Literal runat="server" ID="ErrorMessage" />
    </p>

    <div class="form-horizontal">
        <h4>Create a new account</h4>
        <hr />
        <asp:ValidationSummary runat="server" CssClass="text-danger" />
        <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="Email" CssClass="col-md-2 control-label">Email</asp:Label>
            <div class="col-md-10">
                <asp:TextBox runat="server" ID="Email" CssClass="form-control" TextMode="Email" />
                <asp:RequiredFieldValidator runat="server" ControlToValidate="Email"
                    CssClass="text-danger" ErrorMessage="The email field is required." />
            </div>
        </div>

        <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="hospital_name" CssClass="col-md-2 control-label">Hospital Name</asp:Label>
            <div class="col-md-10">
                <asp:TextBox runat="server" ID="hospital_name" CssClass="form-control" />
                <asp:RequiredFieldValidator runat="server" ControlToValidate="hospital_name"
                    CssClass="text-danger" ErrorMessage="The Hospital Name field is required." />
            </div>
        </div>

        <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="Plan" CssClass="col-md-2 control-label">Choose Plan</asp:Label>
            <div class="col-md-10">
                <asp:DropDownList runat="server" ID="Plan" CssClass="dropdown">
                    <asp:ListItem>Plan 1</asp:ListItem>
                    <asp:ListItem>Plan 2</asp:ListItem>
                    <asp:ListItem>Plan 3</asp:ListItem>
                    <asp:ListItem>Plan 4</asp:ListItem>
                    <asp:ListItem>Plan 5</asp:ListItem>
                </asp:DropDownList>
                <asp:RequiredFieldValidator runat="server" ControlToValidate="Plan"
                    CssClass="text-danger" ErrorMessage="The plan field is required." />
            </div>
        </div>

        <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="Address1" CssClass="col-md-2 control-label">Address 1</asp:Label>
            <div class="col-md-10">
                <asp:TextBox runat="server" ID="Address1" CssClass="form-control" />
                <asp:RequiredFieldValidator runat="server" ControlToValidate="Address1"
                    CssClass="text-danger" ErrorMessage="This Address field is required." />
            </div>
        </div>

        <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="Address2" CssClass="col-md-2 control-label">Address 2</asp:Label>
            <div class="col-md-10">
                <asp:TextBox runat="server" ID="Address2" CssClass="form-control" />
                <asp:RequiredFieldValidator runat="server" ControlToValidate="Address2"
                    CssClass="text-danger" ErrorMessage="This Address field is required." />
            </div>
        </div>

        <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="State" CssClass="col-md-2 control-label">State</asp:Label>
            <div class="col-md-10">
                <asp:DropDownList runat="server" ID="State" CssClass="dropdown">
                    <asp:ListItem>state 1</asp:ListItem>
                    <asp:ListItem>state 2</asp:ListItem>
                    <asp:ListItem>state 3</asp:ListItem>
                    <asp:ListItem>state 4</asp:ListItem>
                    <asp:ListItem>state 5</asp:ListItem>
                </asp:DropDownList>
                <asp:RequiredFieldValidator runat="server" ControlToValidate="Plan"
                    CssClass="text-danger" ErrorMessage="The state field is required." />
            </div>
        </div>

        <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="Country" CssClass="col-md-2 control-label">Country</asp:Label>
            <div class="col-md-10">
                <asp:DropDownList runat="server" ID="Country" CssClass="dropdown">
                    <asp:ListItem>country 1</asp:ListItem>
                    <asp:ListItem>country 2</asp:ListItem>
                    <asp:ListItem>country 3</asp:ListItem>
                    <asp:ListItem>country 4</asp:ListItem>
                    <asp:ListItem>coutnry 5</asp:ListItem>
                </asp:DropDownList>
                <asp:RequiredFieldValidator runat="server" ControlToValidate="Plan"
                    CssClass="text-danger" ErrorMessage="The state field is required." />
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
            <div class="col-md-offset-2 col-md-10">
                <%--<asp:Button runat="server" OnClick="CreateUser_Click" Text="Register" CssClass="btn btn-default" />--%>
            </div>
            <div class="col-md-offset-2 col-md-10">
                <a class="btn btn-default" href="RegisterAdmin">Next Page &raquo;</a>
            </div>
        </div>
    </div>
</asp:Content>
