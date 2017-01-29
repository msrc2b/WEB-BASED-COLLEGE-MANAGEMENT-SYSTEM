<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="proQuery4.aspx.cs" Inherits="DBMSProject.proQuery4" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        List of Engineering departments<br />
        <br />
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" style="margin-left: 37px" Text="Home" Width="109px" />
        <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" style="margin-left: 71px" Text="Department Home" />
        <br />
        <br />
        <asp:SqlDataSource ID="details_datasource" runat="server" ConnectionString="Data Source=XE;User ID=SYSTEM;Password=trinetri33;Unicode=True" ProviderName="System.Data.OracleClient" SelectCommand="SELECT SMS_SAMPLE.COURSE.COURSE_NAME, SMS_SAMPLE.DEPARTMENT.DEPT_NAME AS DEPARTMENTS FROM SMS_SAMPLE.COURSE, SMS_SAMPLE.DEPARTMENT WHERE SMS_SAMPLE.COURSE.DNO = SMS_SAMPLE.DEPARTMENT.DEPT_ID AND (SMS_SAMPLE.DEPARTMENT.DEPT_NAME LIKE '%Engg%')"></asp:SqlDataSource>
        <br />
        <asp:GridView ID="DETAILS_GridView1" runat="server" DataSourceID="details_datasource">
        </asp:GridView>
        </div>
    </form>
</body>
</html>
