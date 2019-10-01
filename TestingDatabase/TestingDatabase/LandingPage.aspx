<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LandingPage.aspx.cs" Inherits="TestingDatabase.LandingPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">

        <div align="center">
            <div aria-dropeffect="none" aria-expanded="undefined">
                <h1>ABC Book Store</h1>
                <br />
                <h4>Owner: Malik Sheharaar Talhat</h4>
                <h4>Web Enterprise Application</h4>
                

            </div>

            <br />
            <div colspan="2">
                <asp:Button ID="btnAddBook" runat="server" OnClick="btnAddBook_Click" Text="Add a Book" />
                <asp:Button ID="btnListView" runat="server" OnClick="btnListView_Click" Text="List View" />
                <asp:Button ID="btnCustomSearch" runat="server" OnClick="btnCustomSearch_Click" Text="Custom Search" />
            </div>
        </div>

    </form>
</body>
</html>

