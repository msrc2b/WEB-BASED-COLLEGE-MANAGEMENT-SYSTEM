﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Department.aspx.cs" Inherits="DBMSProject.admin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        &nbsp;
        <br />
        &nbsp;<asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="View Department Details" />
        &nbsp;&nbsp;&nbsp;
        <br />
        <br />
        <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Academic Excellence" />
        <br />
        <br />
    
    </div>
        <asp:Button ID="Button3" runat="server" OnClick="Button3_Click1" Text="Enrolled Students" />
    </form>
</body>
</html>
