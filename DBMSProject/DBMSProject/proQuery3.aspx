<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="proQuery3.aspx.cs" Inherits="DBMSProject.proQuery3" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        Faculty not assigned to any course</div>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
        <p>
            <asp:SqlDataSource ID="moreThan1SqlDataSource1" runat="server"
                 ConnectionString="Data Source=XE;User ID=SYSTEM;Password=trinetri33;Unicode=True" 
                ProviderName="System.Data.OracleClient" 
                SelectCommand="SELECT FACULTY_ID, F_NAME, L_NAME, COUNT(COURSE_ID) AS EXPR1
        FROM SMS_SAMPLE.FACULTY GROUP BY FACULTY_ID, F_NAME, L_NAME HAVING (COUNT(COURSE_ID) &lt; 1)"></asp:SqlDataSource>
        </p>
        <p>
            &nbsp;</p>
        <asp:GridView ID="GridView1" runat="server" DataSourceID="moreThan1SqlDataSource1">
        </asp:GridView>
    </form>
</body>
</html>
