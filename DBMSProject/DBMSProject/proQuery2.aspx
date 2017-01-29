<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="proQuery2.aspx.cs" Inherits="DBMSProject.proquery2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        Students Under Particlar Proffessor</div>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
        <p>
            <asp:SqlDataSource ID="particularproSqlDataSource1" runat="server" ConnectionString="Data Source=XE;User ID=SYSTEM;Password=trinetri33;Unicode=True" ProviderName="System.Data.OracleClient" SelectCommand="SELECT L_NAME, F_NAME, STUDENT_ID FROM SMS_SAMPLE.STUDENT WHERE (STUDENT_ID IN (SELECT STUDENT_ID FROM SMS_SAMPLE.ENROLLS_IN WHERE (COURSE_ID IN (SELECT SMS_SAMPLE.COURSE.COURSE_ID FROM SMS_SAMPLE.COURSE, SMS_SAMPLE.FACULTY WHERE SMS_SAMPLE.COURSE.COURSE_ID = SMS_SAMPLE.FACULTY.COURSE_ID AND (SMS_SAMPLE.FACULTY.F_NAME LIKE '%Raghav%'))))) ORDER BY L_NAME, F_NAME"></asp:SqlDataSource>
            <asp:GridView ID="GridView1" runat="server" DataSourceID="particularproSqlDataSource1">
            </asp:GridView>
        </p>
    </form>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
</body>
</html>
