<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SearchForm.aspx.cs" Inherits="TestingDatabase.SearchForm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 237px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">

        <table>
            <tr> 
                <td>
                    <asp:Label ID="lbSearchTitle" runat="server" Text="Search by Book Title"></asp:Label>

                </td>
                <td class="auto-style1">
                    <asp:TextBox ID="txtSearchTitle" runat="server" Width="245px"></asp:TextBox>
                </td>
                <td>
                    <asp:Button ID="btnSearchTitle" runat="server" Text="Search" OnClick="btnSearchTitle_Click" />
                </td>
            </tr>
            <tr> 
                <td>
                    <asp:Label ID="lbSearchPrice" runat="server" Text="Search higher priced books"></asp:Label>

                </td>
                <td class="auto-style1">
                    <asp:TextBox ID="txtSearchPrice" runat="server" Width="245px"></asp:TextBox>
                </td>
                <td>
                    <asp:Button ID="btnSearchPrice" runat="server" Text="Search" OnClick="btnSearchPrice_Click" />
                </td>
            </tr>

            <tr>
                <td>
                    <asp:Label ID="lblDropCategory" runat="server" Text="Search by Category"></asp:Label>

                </td>
                <td class="auto-style1">
                    <asp:DropDownList ID="searchCategory" runat="server" Width="249px">
                        <asp:ListItem Value="0">Choose an option</asp:ListItem>
                        <asp:ListItem Value="Childrens">Childrens</asp:ListItem>
                        <asp:ListItem Value="Comics">Comics</asp:ListItem>
                        <asp:ListItem Value="Drama">Drama</asp:ListItem>
                        <asp:ListItem Value="Games">Games</asp:ListItem>
                        <asp:ListItem Value="Health">Health</asp:ListItem>
                        <asp:ListItem Value="Journals">Journals</asp:ListItem>
                        <asp:ListItem Value="Poetry">Poetry</asp:ListItem>
                        <asp:ListItem Value="Sci-Fi">Sci-Fi</asp:ListItem>
                    </asp:DropDownList>
                </td>

                <td>
                    <asp:Button ID="btnSearchCategory" runat="server" Text="Search" OnClick="btnSearchCategory_Click" />
                </td>
            </tr>

        </table>
        <div>
            <asp:GridView ID="GridView1" runat="server">
            </asp:GridView>
        </div>
        <table>
            <tr>
                <td>
                    <asp:Button ID="btnHome" runat="server" Text="Home" OnClick="btnHome_Click" />
                </td>
                <td>
                    <asp:Button ID="btnListView" runat="server" OnClick="btnListView_Click" Text="List View" />
                </td>

            </tr>
        </table>
    </form>
</body>
</html>
