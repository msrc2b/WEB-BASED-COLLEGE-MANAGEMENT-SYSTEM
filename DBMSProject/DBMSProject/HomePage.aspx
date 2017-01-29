<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="HomePage.aspx.cs" Inherits="DBMSProject.HomePage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    </div>
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Student" />
        <p>
            <asp:Button ID="Button2" runat="server" Text="Professor" OnClick="Button2_Click" />
        </p>
       <p>
            <asp:Button ID="Button3" runat="server" Text="Department" OnClick="Button3_Click" />
        </p>
    </form>
</body>
</html>
