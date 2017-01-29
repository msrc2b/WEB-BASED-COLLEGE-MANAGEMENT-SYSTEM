<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="proQuery5.aspx.cs" Inherits="DBMSProject.proQuery5" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            margin-left: 69px;
        }
        .auto-style2 {
            margin-left: 35px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <p>
            Academic Excellence Students</p>
        <p>
            <asp:Button ID="Button1" runat="server" CssClass="auto-style2" OnClick="Button1_Click" Text="Home" />
            <asp:Button ID="Button2" runat="server" CssClass="auto-style1" OnClick="Button2_Click" Text="Department Home" />
        </p>
        <p>
            &nbsp;</p>
        <p>
            <asp:SqlDataSource ID="excellence_datasource" runat="server" ConnectionString="Data Source=XE;User ID=SYSTEM;Password=trinetri33;Unicode=True" ProviderName="System.Data.OracleClient" SelectCommand="SELECT SMS_SAMPLE.STUDENT.STUDENT_ID, SMS_SAMPLE.STUDENT.F_NAME, SMS_SAMPLE.STUDENT.GPA, SMS_SAMPLE.DEPARTMENT.DEPT_NAME AS DEPARTMENT FROM SMS_SAMPLE.STUDENT, SMS_SAMPLE.DEPARTMENT WHERE SMS_SAMPLE.STUDENT.DNO = SMS_SAMPLE.DEPARTMENT.DEPT_ID AND (SMS_SAMPLE.STUDENT.GPA BETWEEN 3.0 AND 4.0)"></asp:SqlDataSource>
        </p>
        <asp:GridView ID="EXCELLENCE_GridView1" runat="server" DataSourceID="excellence_datasource">
        </asp:GridView>
    </form>
</body>
</html>
