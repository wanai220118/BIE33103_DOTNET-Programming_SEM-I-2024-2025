<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/MasterPages.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="lab4.MasterPages.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="wrapper">
        <div class="menu">
            <ul>
                <li><a href="Login.aspx">Login</a></li>
                <li><a href="#">About Us</a></li>
                <li><a href="ContactUs.aspx">Contact Us</a></li>
                <li><a href="#">Class</a></li>
                <li><a href="#">Gallery</a></li>
                <li><a href="Default.aspx">Home</a></li>
            </ul>
        </div>

        <div class="content">
            <div class="login-form">
                <div class="login-header">
                    <img src="C:\Users\user\OneDrive\Pictures\abby\id photo.JPG" alt="" class="profile-icon" />
                    <h2>Login</h2>
                    <p>Enter your ID and password.</p>
                </div>
                <asp:Label ID="lblStatus" runat="server" CssClass="status-label"></asp:Label>
                <div class="form-group">
                    <label for="txtID">ID:</label>
                    <asp:TextBox ID="txtID" runat="server" CssClass="form-input" Placeholder="Enter your ID"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvID" runat="server" ControlToValidate="txtID"
                        ErrorMessage="ID is required!" CssClass="error-message"></asp:RequiredFieldValidator>
                </div>
                <div class="form-group">
                    <label for="txtPassword">Password:</label>
                    <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" CssClass="form-input" Placeholder="Enter your password"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvPassword" runat="server" ControlToValidate="txtPassword"
                        ErrorMessage="Password is required!" CssClass="error-message"></asp:RequiredFieldValidator>
                </div>
                 <div class="form-group">
                    <label for="txtConfirmPassword">Confirm Password:</label>
                    <asp:TextBox ID="txtConfirmPassword" runat="server" TextMode="Password" CssClass="form-input" Placeholder="Confirm your password"></asp:TextBox>
                    <asp:CompareValidator ID="cvPassword" runat="server" ControlToValidate="txtConfirmPassword" 
                        ControlToCompare="txtPassword" Operator="Equal" 
                        ErrorMessage="Passwords do not match" ForeColor="Red" CssClass="error-message"></asp:CompareValidator>
                </div>
                <div class="form-actions">
                    <asp:Button ID="btnSubmit" Text="Submit" runat="server" CssClass="btn btn-submit" OnClick="btnSubmit_Click" />
                    <asp:Button ID="btnCancel" Text="Cancel" runat="server" CssClass="btn btn-cancel" OnClick="btnCancel_Click" />
                </div>
            </div>
        </div>

        <div class="clear"></div>

        <div class="footer">
            <h2>Copyright@BIE33103 1-2023/2024</h2>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="bodycontent" runat="server">
</asp:Content>
