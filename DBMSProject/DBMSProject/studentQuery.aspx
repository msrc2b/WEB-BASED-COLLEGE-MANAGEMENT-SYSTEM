<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="studentQuery.aspx.cs" Inherits="DBMSProject.studentQuery" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="studentQuery" runat="server">
    <div>
    
        <asp:Button ID="Button1" runat="server" Text="Add New Student" OnClick="Button1_Click" />
    
        <br />
        <br />
    
        <asp:Button ID="Button2" runat="server" Text="Get Attendance" OnClick="Button2_Click" />
    
        <br />
        <br />
    
        <asp:Button ID="Button3" runat="server" Text="View Enrolled Students" OnClick="Button3_Click" />
    
        <br />
        <br />
    
        <asp:Button ID="Button4" runat="server" Text="View Academics" OnClick="Button4_Click" />
    
        <br />
        <br />
    
        <asp:Button ID="Button5" runat="server" Text="Student Fee" OnClick="Button5_Click" />
    
    </div>
    </form>
</body>
</html>
