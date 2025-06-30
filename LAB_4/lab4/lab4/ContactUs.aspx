<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/MasterPages.Master" AutoEventWireup="true" CodeBehind="ContactUs.aspx.cs" Inherits="lab4.ContactUs" %>
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
            <h2>Contact Us</h2>
            <p>Please fill out the form below to get in touch with us.</p>

            <div class="contact-form">
                
                <asp:Label ID="lblStatus" runat="server" CssClass="status-label"></asp:Label>

                <div class="form-group">
                    <label for="txtName">Name:</label>
                    <asp:TextBox ID="txtName" runat="server" CssClass="form-input" Placeholder="Enter your name"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvName" runat="server" ControlToValidate="txtName" 
                        ErrorMessage="Name is required!" CssClass="error-message"></asp:RequiredFieldValidator>
                </div>

                <div class="form-group">
                    <label for="txtEmail">Email:</label>
                    <asp:TextBox ID="txtEmail" runat="server" CssClass="form-input" Placeholder="Enter your email"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvEmail" runat="server" ControlToValidate="txtEmail" 
                        ErrorMessage="Email is required!" CssClass="error-message"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="revEmail" runat="server" ControlToValidate="txtEmail"
                        ValidationExpression="\w+@\w+\.\w+" ErrorMessage="Invalid email format!" CssClass="error-message"></asp:RegularExpressionValidator>
                </div>

                <div class="form-group">
                    <label for="txtMessage">Message:</label>
                    <asp:TextBox ID="txtMessage" runat="server" TextMode="MultiLine" Rows="5" CssClass="form-input" Placeholder="Your message"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvMessage" runat="server" ControlToValidate="txtMessage" 
                        ErrorMessage="Message is required!" CssClass="error-message"></asp:RequiredFieldValidator>
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
