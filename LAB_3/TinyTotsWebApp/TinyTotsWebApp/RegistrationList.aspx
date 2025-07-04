<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RegistrationList.aspx.cs" Inherits="TinyTotsWebApp.RegistrationList" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Registration List</title>
    <style>
    /* Page title */
    .green-title {
        color: #2e7d32;
        text-align: center;
        margin-top: 20px;
        font-size: 28px;
        font-weight: bold;
    }

    /* Navigation bar */
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

    /* Search box and buttons */
    .form-element {
        margin-bottom: 10px;
    }

    #txtSearch {
        padding: 5px;
        border-radius: 4px;
        border: 1px solid #ccc;
    }

    #btnSearch, #btnReset {
        background-color: #4CAF50;
        color: white;
        border: none;
        padding: 6px 12px;
        border-radius: 4px;
        cursor: pointer;
        margin-left: 5px;
    }

    #btnSearch:hover, #btnReset:hover {
        background-color: #388e3c;
    }

    /* Grid container */
    .grid-container {
        display: flex;
        justify-content: center;
        margin-top: 20px;
        margin-bottom: 40px;
    }

    /* GridView improvements */
    .gridview-style {
        width: 90%;
        border-collapse: collapse;
        font-family: Arial, sans-serif;
        font-size: 14px;
    }

    .gridview-style th {
        background-color: #4CAF50;
        color: white;
        padding: 10px;
        border: 1px solid #ddd;
    }

    .gridview-style td {
        text-align: center;
        padding: 10px;
        border: 1px solid #ddd;
    }

    .gridview-style tr:hover {
        background-color: #f9f9f9;
    }

    .gridview-style input[type="submit"],
    .gridview-style a {
        color: #4CAF50;
        font-weight: bold;
        text-decoration: none;
    }

    .gridview-style input[type="submit"]:hover {
        color: red;
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
        <h1 class="green-title">Registration List</h1>

        <!-- Search Bar -->
        <div style="text-align:center; margin-bottom: 20px;">
            <asp:Label ID="lblSearch" runat="server" Text="Search by Name:" Font-Bold="true" />
            <asp:TextBox ID="txtSearch" runat="server" Width="200px" CssClass="form-element" />
            <asp:Button ID="btnSearch" runat="server" Text="Search" OnClick="btnSearch_Click" />
            <asp:Button ID="btnReset" runat="server" Text="Show All" OnClick="btnReset_Click" />
        </div>

        <!-- GridView -->
        <div class="grid-container">
            <asp:GridView ID="gvRegistrations" runat="server"
                          AutoGenerateColumns="False"
                          DataKeyNames="RegistrationId"
                          CssClass="gridview-style"
                          EmptyDataText="No registrations found."
                          OnRowDeleting="gvRegistrations_RowDeleting">
                <Columns>
                    <asp:BoundField DataField="FirstName" HeaderText="First Name" />
                    <asp:BoundField DataField="SecondName" HeaderText="Second Name" />
                    <asp:BoundField DataField="Race" HeaderText="Race" />
                    <asp:BoundField DataField="Gender" HeaderText="Gender" />
                    <asp:BoundField DataField="FoodAllergies" HeaderText="Food Allergies" />

                    <asp:HyperLinkField Text="Edit"
                    DataNavigateUrlFields="RegistrationId"
                    DataNavigateUrlFormatString="EditRegistration.aspx?RegistrationId={0}"
                    HeaderText="Edit" />

                    <asp:CommandField ShowDeleteButton="True" />
                </Columns>
            </asp:GridView>
        </div>
    </form>
</body>
</html>
