<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RegisterChild.aspx.cs" Inherits="TinyTotsWebApp.RegisterChild" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Kindergarten Registration Form</title>
    <style>
        /* Title styling */
        .green-title {
            color: #2e7d32;
            text-align: center;
            font-size: 28px;
            font-weight: bold;
            margin-top: 20px;
        }

        /* Navigation menu */
        .nav-menu {
            background-color: #e8f5e9;
            padding: 12px;
            text-align: center;
            border-bottom: 2px solid #c8e6c9;
        }

        .nav-menu a {
            margin: 0 20px;
            text-decoration: none;
            font-weight: bold;
            font-size: 16px;
            color: #2e7d32;
        }

        .nav-menu a:hover {
            color: #1b5e20;
        }

        /* Form container */
        .form-container {
            width: 500px;
            margin: 0 auto;
            padding: 25px;
            border: 1px solid #ccc;
            border-radius: 10px;
            background-color: #f9f9f9;
            box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
        }

        /* Spacing and layout for input elements */
        .form-element {
            margin-bottom: 15px;
            width: 100%;
        }

        input[type="text"],
        select,
        textarea {
            width: 100%;
            padding: 8px;
            box-sizing: border-box;
            border: 1px solid #ccc;
            border-radius: 4px;
        }

        .form-element label {
            font-weight: bold;
        }

        /* Radio & checkbox alignment */
        .form-element input[type="radio"],
        .form-element input[type="checkbox"] {
            margin-right: 5px;
        }

        /* Register Button */
        #btnRegister {
            background-color: #4CAF50;
            color: white;
            border: none;
            padding: 10px 16px;
            border-radius: 5px;
            font-size: 16px;
            cursor: pointer;
        }

        #btnRegister:hover {
            background-color: #388e3c;
        }

        /* Time label */
        #lblTime {
            margin-top: 15px;
            display: block;
            color: #2e7d32;
            font-size: 18px;
            text-align: center;
        }
    </style>
</head>
<body>
    <form runat="server" class="form-container">
        <!-- Navigation -->
        <div class="nav-menu">
            <a href="RegisterChild.aspx">Register Child</a> |
            <a href="RegistrationList.aspx">Registration List</a>
        </div>

        <!-- Title -->
        <h1 class="green-title">Kindergarten Registration Form</h1>

        <!-- Hidden Field -->
        <asp:HiddenField ID="hfRegistrationId" runat="server" />

        <!-- First Name -->
        <label for="txtFirstName">First Name:</label>
        <asp:TextBox ID="txtFirstName" runat="server" CssClass="form-element" placeholder="First Name" />

        <!-- Second Name -->
        <label for="txtSecondName">Second Name:</label>
        <asp:TextBox ID="txtSecondName" runat="server" CssClass="form-element" placeholder="Second Name" />

        <!-- Race -->
        <label for="ddlRace">Race:</label>
        <asp:DropDownList ID="ddlRace" runat="server" CssClass="form-element">
            <asp:ListItem>Select</asp:ListItem>
            <asp:ListItem Value="Malay">Malay</asp:ListItem>
            <asp:ListItem Value="Chinese">Chinese</asp:ListItem>
            <asp:ListItem Value="Indian">Indian</asp:ListItem>
            <asp:ListItem Value="Other">Other</asp:ListItem>
        </asp:DropDownList>

        <!-- Gender -->
        <label for="rblGender">Gender:</label>
        <asp:RadioButtonList ID="rblGender" runat="server" CssClass="form-element">
            <asp:ListItem Value="Boy">Boy</asp:ListItem>
            <asp:ListItem Value="Girl">Girl</asp:ListItem>
        </asp:RadioButtonList>

        <!-- Allergies -->
        <label for="cblAllergies">Food Allergies:</label>
        <asp:CheckBoxList ID="cblAllergies" runat="server" CssClass="form-element">
            <asp:ListItem Value="None">None</asp:ListItem>
            <asp:ListItem Value="Dairy">Dairy Products</asp:ListItem>
            <asp:ListItem Value="Peanuts">Peanuts and Tree Nuts</asp:ListItem>
            <asp:ListItem Value="Soybean">Soybean</asp:ListItem>
            <asp:ListItem Value="Wheat">Wheat</asp:ListItem>
        </asp:CheckBoxList>

        <!-- Submit Button -->
        <asp:Button ID="btnRegister" runat="server" Text="Register" CssClass="form-element" OnClick="btnRegister_Click" />

        <!-- Label for displaying time -->
        <asp:Label ID="lblTime" runat="server" CssClass="form-element" 
                   ForeColor="Green" Font-Bold="true" Font-Size="Large" />

    </form>
</body>
</html>
