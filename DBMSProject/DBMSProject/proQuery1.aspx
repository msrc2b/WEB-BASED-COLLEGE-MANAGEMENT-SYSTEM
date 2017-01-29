<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="proQuery1.aspx.cs" Inherits="DBMSProject.proQuery1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        View Professor Details</div>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
        <p>
            <asp:SqlDataSource ID="viewProSqlDataSource1" runat="server" ConnectionString="Data Source=XE;User ID=SYSTEM;Password=trinetri33;Unicode=True" ProviderName="System.Data.OracleClient" SelectCommand="SELECT SMS_SAMPLE.DEPARTMENT.DEPT_NAME, SMS_SAMPLE.FACULTY.F_NAME, SMS_SAMPLE.FACULTY.L_NAME FROM SMS_SAMPLE.DEPARTMENT, SMS_SAMPLE.FACULTY WHERE SMS_SAMPLE.DEPARTMENT.DEPT_ID = SMS_SAMPLE.FACULTY.DNO AND (SMS_SAMPLE.DEPARTMENT.DEPT_NAME = 'Computer Science') ORDER BY SMS_SAMPLE.DEPARTMENT.DEPT_NAME"></asp:SqlDataSource>
        </p>
        <asp:GridView ID="GridView1" runat="server" DataSourceID="viewProSqlDataSource1">
        </asp:GridView>
    </form>
</body>
</html>
