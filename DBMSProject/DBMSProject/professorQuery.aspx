<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="professorQuery.aspx.cs" Inherits="DBMSProject.professoQuery" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="View Professor Details" />
        <br />
        <br />
        <br />
        <br />
        <asp:Button ID="Button3" runat="server" Text="Faculty Course Count" OnClick="Button3_Click" style="height: 26px" />
        <br />
        <br />
        <br />
        <asp:Button ID="Button4" runat="server" Text="Not Assigned to course" OnClick="Button4_Click" />
        <br />
    
    </div>
       
    </form>
</body>
</html>
