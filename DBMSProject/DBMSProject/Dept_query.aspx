<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Dept_query.aspx.cs" Inherits="DBMSProject.Dept_query" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            margin-left: 77px;
        }
        .auto-style2 {
            margin-left: 47px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        Students who are not enrolled in any courses or having pending status<br />
        <br />
        <asp:Button ID="Button1" runat="server" CssClass="auto-style2" OnClick="Button1_Click" Text="Home" />
        <asp:Button ID="Button2" runat="server" CssClass="auto-style1" OnClick="Button2_Click" Text="Department Home" />
        <br />
        <br />
        <br />
        <asp:SqlDataSource ID="ntenrolled_datasource" runat="server" ConnectionString="Data Source=XE;User ID=SYSTEM;Password=trinetri33;Unicode=True" ProviderName="System.Data.OracleClient" SelectCommand="SELECT SMS_SAMPLE.STUDENT.STUDENT_ID, SMS_SAMPLE.STUDENT.F_NAME, SMS_SAMPLE.STUDENT.L_NAME FROM SMS_SAMPLE.STUDENT MINUS SELECT SMS_SAMPLE.STUDENT.STUDENT_ID, SMS_SAMPLE.STUDENT.F_NAME, SMS_SAMPLE.STUDENT.L_NAME FROM SMS_SAMPLE.ENROLLS_IN, SMS_SAMPLE.STUDENT WHERE SMS_SAMPLE.ENROLLS_IN.STUDENT_ID = SMS_SAMPLE.STUDENT.STUDENT_ID"></asp:SqlDataSource>
        <asp:GridView ID="NTENROLLED_GridView1" runat="server" DataSourceID="ntenrolled_datasource">
        </asp:GridView>
        <br />
    
    </div>
    </form>
</body>
</html>
