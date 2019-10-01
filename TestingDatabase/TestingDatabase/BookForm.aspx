<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="BookForm.aspx.cs" Inherits="TestingDatabase.BookForm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            height: 43px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <h1>Add Book
        </h1>
        <table>
            <tr>
                <td>
                    <asp:Label ID="lbBookTitle" runat="server" Text="Book Title"></asp:Label>

                </td>
                <td>
                    <asp:TextBox ID="txtBookTitle" runat="server"></asp:TextBox>

                    <asp:RequiredFieldValidator ID="titleRqValidator" runat="server" ControlToValidate="txtBookTitle" ErrorMessage="Book Title is required" ForeColor="Red"></asp:RequiredFieldValidator>

                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="lbAuthor" runat="server" Text="Author"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtAuthor" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="authorRqValidator" runat="server" ControlToValidate="txtAuthor" ErrorMessage="Title is required" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style1">
                    <asp:Label ID="lbISBN" runat="server" Text="ISBN number"></asp:Label>
                   
                </td>
                <td class="auto-style1">
                    <asp:TextBox ID="txtISBN" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="isbnRqValidator" runat="server" ControlToValidate="txtISBN" ErrorMessage="ISBN number is required" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ValidationExpression="^[0-9-]+$" ErrorMessage="Enter proper ISBN format: 000-0-00-000000-0" ControlToValidate="txtISBN" Display="Dynamic" ForeColor="Red"></asp:RegularExpressionValidator>
                    
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="lbPublishedDate" runat="server" Text="Published Date"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtPublishedDate" runat="server" TextMode="Date"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="dateRqValidator" runat="server" ControlToValidate="txtPublishedDate" ErrorMessage="Date is required" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>

                    <asp:Label ID="lbPublisher" runat="server" Text="Publisher"></asp:Label>

                </td>
 
                <td>
                    <asp:DropDownList ID="publisherDropDown" runat="server">
                        <asp:ListItem Value="Select">Choose an option</asp:ListItem>
                        <asp:ListItem Value="Canadian">Canadian</asp:ListItem>
                        <asp:ListItem Value="International">International</asp:ListItem>
                    </asp:DropDownList>
                    <asp:RequiredFieldValidator InitalValue="0" ID="publisherValidator" runat="server" ControlToValidate="publisherDropDown" ErrorMessage="Publisher needs to be choosen" ForeColor="Red" InitialValue="Select"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="lbCategory" runat="server" Text="Category"></asp:Label>
                </td>
                <td>
                    <asp:DropDownList ID="categoryDropDown" runat="server">
                        <asp:ListItem Value ="Select">Choose an option</asp:ListItem>
                        <asp:ListItem Value='Childrens'>Childrens</asp:ListItem>
                        <asp:ListItem Value="Comics">Comics</asp:ListItem>
                        <asp:ListItem Value="Drama">Drama</asp:ListItem>
                        <asp:ListItem Value="Games">Games</asp:ListItem>
                        <asp:ListItem Value="Health">Health</asp:ListItem>
                        <asp:ListItem Value="Journals">Journals</asp:ListItem>
                        <asp:ListItem Value="Poetry">Poetry</asp:ListItem>
                        <asp:ListItem Value="Sci-Fi">Sci-Fi</asp:ListItem>
                    </asp:DropDownList>
                    <asp:RequiredFieldValidator InitalValue="0" ID="categoryValidator" runat="server" ControlToValidate="categoryDropDown" ErrorMessage="Category needs to be choosen" ForeColor="Red" InitialValue="Select"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="lbPageCount" runat="server" Text="Page Count"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtPageCount" runat="server" TextMode="Number"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="pagesRqValidator" runat="server" ControlToValidate="txtPageCount" ErrorMessage="Page Count is required" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
                    <asp:RangeValidator ID="pageRangeValidator" runat="server" ControlToValidate="txtPageCount" Display="Dynamic" ErrorMessage="Enter proper page format" ForeColor="Red" MaximumValue="2000" MinimumValue="1" Type="Integer"></asp:RangeValidator>
                </td>
            </tr>
   
            <tr>
                <td>
                    <asp:Label ID="lbPrice" runat="server" Text="Price"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtPrice" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="priceRqValidator" runat="server" ControlToValidate="txtPrice" ErrorMessage="Price is required" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
                    <asp:RangeValidator ID="RangeValidator2" runat="server" ControlToValidate="txtPrice" Display="Dynamic" ErrorMessage="Please enter the price in the following format: 00.00" ForeColor="Red" MinimumValue="0.00" Type="Currency" MaximumValue="5000.00"></asp:RangeValidator>
                </td>
            </tr>
        </table>
        <div colspan="2">
            <asp:Button ID="btnAddBook" runat="server" Text="Add Book" OnClick="btnAddBook_Click" />
                            
                    <asp:Button ID="btnHome" runat="server" Text="Home" OnClick="btnHome_Click" CausesValidation="False" EnableTheming="True" />
                
        </div>


    </form>
</body>
</html>
