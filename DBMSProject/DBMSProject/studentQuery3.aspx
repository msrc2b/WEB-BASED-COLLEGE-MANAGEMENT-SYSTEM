<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="studentQuery3.aspx.cs" Inherits="DBMSProject.studentQuery3" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        Enrolled Students<br />
        <br />
        <br />
        <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="Home " style="margin-left: 24px" Width="127px" />
        <asp:Button ID="Button4" runat="server" OnClick="Button4_Click" Text="Student Home" style="margin-left: 84px" />
        <br />
        <br />
        <br />
        <br />
        <br />
        <asp:GridView ID="GridView1" runat="server" DataSourceID="enrolled_in_datasource" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
        </asp:GridView>
        <br />
        <asp:SqlDataSource ID="enrolled_in_datasource" runat="server" ConnectionString="Data Source=XE;User ID=system;Password=trinetri33;Unicode=True" ProviderName="System.Data.OracleClient" SelectCommand="SELECT SMS_SAMPLE.ENROLLED_IN.* FROM SMS_SAMPLE.ENROLLED_IN"></asp:SqlDataSource>
        <br />
        <br />
    
    </div>
    </form>
</body>
</html>
