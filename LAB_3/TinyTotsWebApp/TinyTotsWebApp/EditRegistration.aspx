<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EditRegistration.aspx.cs" Inherits="TinyTotsWebApp.EditRegistration" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Edit Registration</title>
    <style>
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background-color: #f3f9f3;
            margin: 0;
            padding: 0;
        }

        .green-title {
            color: #2e7d32;
            text-align: center;
            font-size: 28px;
            font-weight: bold;
            margin-top: 30px;
        }

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

        form {
            width: 520px;
            margin: 30px auto;
            padding: 30px;
            background-color: #ffffff;
            border: 1px solid #c8e6c9;
            border-radius: 10px;
            box-shadow: 0 2px 10px rgba(0, 0, 0, 0.05);
        }

        label {
            font-weight: bold;
            display: block;
            margin-bottom: 5px;
            color: #333;
        }

        .form-element {
            margin-bottom: 18px;
        }

        input[type="text"], select {
            width: 100%;
            padding: 8px;
            box-sizing: border-box;
            border: 1px solid #ccc;
            border-radius: 4px;
        }

        .styled-list label {
            display: inline-block;
            margin: 5px 6px 0 0;
            background-color: #e8f5e9;
            border: 1px solid #c8e6c9;
            border-radius: 5px;
            padding: 8px 14px;
            cursor: pointer;
            font-size: 14px;
            color: #2e7d32;
        }

        .styled-list input[type="radio"],
        .styled-list input[type="checkbox"] {
            display: none;
        }

        .styled-list input:checked + label {
            background-color: #4CAF50;
            color: white;
            font-weight: bold;
            border-color: #388e3c;
        }

        #btnEdit {
            background-color: #4CAF50;
            color: white;
            border: none;
            padding: 10px 20px;
            border-radius: 5px;
            font-size: 16px;
            cursor: pointer;
        }

        #btnEdit:hover {
            background-color: #388e3c;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <!-- Navigation -->
        <div class="nav-menu">
            <a href="RegisterChild.aspx">Register Child</a> |
            <a href="RegistrationList.aspx">Registration List</a>
        </div>

        <!-- Title -->
        <h1 class="green-title">Edit Registration</h1>

        <!-- Hidden ID -->
        <asp:HiddenField ID="hfRegistrationId" runat="server" />

        <!-- First Name -->
        <div class="form-element">
            <label for="txtFirstName">First Name:</label>
            <asp:TextBox ID="txtFirstName" runat="server" placeholder="First Name" />
        </div>

        <!-- Second Name -->
        <div class="form-element">
            <label for="txtSecondName">Second Name:</label>
            <asp:TextBox ID="txtSecondName" runat="server" placeholder="Second Name" />
        </div>

        <!-- Race -->
        <div class="form-element">
            <label for="ddlRace">Race:</label>
            <asp:DropDownList ID="ddlRace" runat="server">
                <asp:ListItem>Select</asp:ListItem>
                <asp:ListItem Value="Malay">Malay</asp:ListItem>
                <asp:ListItem Value="Chinese">Chinese</asp:ListItem>
                <asp:ListItem Value="Indian">Indian</asp:ListItem>
                <asp:ListItem Value="Other">Other</asp:ListItem>
            </asp:DropDownList>
        </div>

        <!-- Gender as buttons -->
        <div class="form-element">
            <label>Gender:</label>
            <asp:RadioButtonList ID="rblGender" runat="server" RepeatDirection="Horizontal" CssClass="styled-list">
                <asp:ListItem Value="Boy" Text="Boy" />
                <asp:ListItem Value="Girl" Text="Girl" />
            </asp:RadioButtonList>
        </div>

        <!-- Food Allergies as buttons -->
        <div class="form-element">
            <label>Food Allergies:</label>
            <asp:CheckBoxList ID="cblAllergies" runat="server" RepeatDirection="Horizontal" CssClass="styled-list">
                <asp:ListItem Value="None" Text="None" />
                <asp:ListItem Value="Dairy" Text="Dairy Products" />
                <asp:ListItem Value="Peanuts" Text="Peanuts and Tree Nuts" />
                <asp:ListItem Value="Soybean" Text="Soybean" />
                <asp:ListItem Value="Wheat" Text="Wheat" />
            </asp:CheckBoxList>
        </div>

        <!-- Save Button -->
        <div class="form-element" style="text-align:center;">
            <asp:Button ID="btnEdit" runat="server" Text="Save" OnClick="btnEdit_Click" />
        </div>
    </form>
</body>
</html>
