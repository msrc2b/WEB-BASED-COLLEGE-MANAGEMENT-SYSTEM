<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="InsertStudent.aspx.cs" Inherits="DBMSProject.InsertStudent" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <br />
        <asp:DetailsView ID="DetailsView1" runat="server" DataSourceID="SqlDataSource1" DefaultMode="Insert" Height="162px" OnPageIndexChanging="DetailsView1_PageIndexChanging" Width="213px">
            <Fields>
                <asp:CommandField ShowInsertButton="True" />
            </Fields>
        </asp:DetailsView>
    
    </div>
    
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:StudentConnectionString %>" InsertCommand="INSERT INTO SMS_SAMPLE.STUDENT(STUDENT_ID, F_NAME, L_NAME, M_NAME, STUD_ADDRESS, GENDER) VALUES (:PARAM1, :PARAM2, :PARAM3, :PARAM4, :PARAM5, :PARAM6)" ProviderName="<%$ ConnectionStrings:StudentConnectionString.ProviderName %>">
            <InsertParameters>
                <asp:Parameter Name="Student_Id" Type="String" />
                <asp:Parameter Name="First Name" Type="String" />
                <asp:Parameter Name="Last Name" Type="String" />
                <asp:Parameter Name="Middle Name" Type="String" />
                <asp:Parameter Name="Address" Type="String" />
                <asp:Parameter Name="Gender" Type="String" />
                
                <asp:Parameter Name="PARAM1" />
                <asp:Parameter Name="PARAM2" />
                <asp:Parameter Name="PARAM3" />
                <asp:Parameter Name="PARAM4" />
                <asp:Parameter Name="PARAM5" />
                <asp:Parameter Name="PARAM6" />
                
            </InsertParameters>
        </asp:SqlDataSource>
    </form>
</body>
</html>
