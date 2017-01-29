<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="studentQuery5.aspx.cs" Inherits="DBMSProject.studentQuery5" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        STUDENT FEES<br />
        <br />
        <br />
        </div>
        <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="Home " style="margin-left: 31px" Width="104px" />
        <asp:Button ID="Button4" runat="server" OnClick="Button4_Click1" Text="Student Home" style="margin-left: 80px" />
        <br />
        <br />
        <asp:SqlDataSource ID="fee_datasource" runat="server" ConnectionString="Data Source=XE;User ID=SYSTEM;Password=trinetri33;Unicode=True" ProviderName="System.Data.OracleClient" SelectCommand="SELECT SMS_SAMPLE.STUDENT.STUDENT_ID, SMS_SAMPLE.STUDENT.F_NAME, SUM(SMS_SAMPLE.ENROLLS_IN.FEES) AS FEES FROM SMS_SAMPLE.STUDENT, SMS_SAMPLE.ENROLLS_IN WHERE SMS_SAMPLE.STUDENT.STUDENT_ID = SMS_SAMPLE.ENROLLS_IN.STUDENT_ID GROUP BY SMS_SAMPLE.STUDENT.STUDENT_ID, SMS_SAMPLE.STUDENT.F_NAME HAVING (SUM(SMS_SAMPLE.ENROLLS_IN.FEES) &gt; '0') ORDER BY SMS_SAMPLE.STUDENT.F_NAME"></asp:SqlDataSource>
        <br />
        <asp:GridView ID="fee_gridview" runat="server" DataSourceID="fee_datasource">
        </asp:GridView>
        <br />
        <br />
    </form>
</body>
</html>
