<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="studentQuery4.aspx.cs" Inherits="DBMSProject.studentQuery4" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        View Academics<br />
        <br />
        <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="Home " style="margin-left: 34px" />
        <asp:Button ID="Button4" runat="server" OnClick="Button4_Click" Text="Student Query" style="margin-left: 67px" />
        <br />
        <br />
        <asp:SqlDataSource ID="academics_datasource" runat="server" ConnectionString="Data Source=XE;Persist Security Info=True;User ID=system;Password=trinetri33;Unicode=True" ProviderName="System.Data.OracleClient" SelectCommand="SELECT SMS_SAMPLE.COURSE.COURSE_NAME, COUNT(SMS_SAMPLE.GRADE.STUDENT_ID) AS NUM_OF_STUDENTS FROM SMS_SAMPLE.STUDENT, SMS_SAMPLE.GRADE, SMS_SAMPLE.EXAM, SMS_SAMPLE.COURSE WHERE SMS_SAMPLE.STUDENT.STUDENT_ID = SMS_SAMPLE.GRADE.STUDENT_ID AND SMS_SAMPLE.GRADE.EXAM_ID = SMS_SAMPLE.EXAM.EXAM_ID AND SMS_SAMPLE.EXAM.COURSE_ID = SMS_SAMPLE.COURSE.COURSE_ID GROUP BY SMS_SAMPLE.COURSE.COURSE_NAME"></asp:SqlDataSource>
        <asp:GridView ID="ACADEMICS_GRIDVIEW" runat="server" DataSourceID="academics_datasource">
        </asp:GridView>
        <br />
        <br />
        </div>
    </form>
</body>
</html>
