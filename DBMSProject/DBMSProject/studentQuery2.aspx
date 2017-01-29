<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="studentQuery2.aspx.cs" Inherits="DBMSProject.studentQuery2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        Get Student attendance for the courses they are enrolled in.<br />
        <br />
        <br />
        <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="Home " style="width: 56px; margin-left: 30px" />
        <asp:Button ID="Button4" runat="server" PostBackUrl="~/studentQuery.aspx" style="margin-left: 73px" Text="Student Home" />
        <br />
        <br />
        <br />
        <asp:GridView ID="getattendance_view" runat="server" DataSourceID="getattendance_datasource">
        </asp:GridView>
        <asp:SqlDataSource ID="getattendance_datasource" runat="server" ConnectionString="Data Source=XE;User ID=system;Password=trinetri33;Unicode=True" ProviderName="System.Data.OracleClient" SelectCommand="SELECT SMS_SAMPLE.STUDENT.F_NAME, SMS_SAMPLE.ATTENDANCE.COURSE_ID, SMS_SAMPLE.ATTENDANCE.PERCENTAGE FROM SMS_SAMPLE.STUDENT, SMS_SAMPLE.ATTENDANCE WHERE SMS_SAMPLE.STUDENT.STUDENT_ID = SMS_SAMPLE.ATTENDANCE.STUDENT_ID AND (SMS_SAMPLE.ATTENDANCE.PERCENTAGE &lt; '10.0') GROUP BY SMS_SAMPLE.STUDENT.F_NAME, SMS_SAMPLE.ATTENDANCE.COURSE_ID, SMS_SAMPLE.ATTENDANCE.PERCENTAGE"></asp:SqlDataSource>
        <br />
        </div>
    </form>
</body>
</html>
