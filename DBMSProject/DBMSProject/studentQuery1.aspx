<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="studentQuery1.aspx.cs" Inherits="DBMSProject.studentQuery1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        Add New Student</div>

        <p>
            <asp:Label ID="Label1" runat="server" Text="Student ID"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="student_Id" runat="server"></asp:TextBox>
        </p>
         
        <p>
            <asp:Label ID="Label2" runat="server" Text="Last Name"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="l_name" runat="server"></asp:TextBox>
        </p>
        <p>
            <asp:Label ID="Label3" runat="server" Text="Middle Name"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="m_name" runat="server"></asp:TextBox>
        </p>
        <p>
            <asp:Label ID="Label4" runat="server" Text="Address"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="stud_address" runat="server"></asp:TextBox>
        </p>
        <p>
            <asp:Label ID="Label5" runat="server" Text="Gender"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="gender" runat="server"></asp:TextBox>
        </p>
        <p>
            <asp:Label ID="Label6" runat="server" Text="GPA"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="gpa" runat="server" TextMode="Number"></asp:TextBox>
        </p>
        <p>
            <asp:Label ID="Label7" runat="server" Text="Date of Birth"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="dob" runat="server" TextMode="Date"></asp:TextBox>
        </p>
        <p>
            <asp:Label ID="Label8" runat="server" Text="Department Id"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="dno" runat="server"></asp:TextBox>
        </p>
        <p>
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click1" Text="ADD" />
        </p>
        <p>
            <asp:GridView ID="dataGridView1" runat="server" DataSourceID="SqlDataSource2" AutoGenerateColumns="False" DataKeyNames="STUDENT_ID">
                <Columns>
                    <asp:BoundField DataField="STUDENT_ID" HeaderText="STUDENT_ID" ReadOnly="True" SortExpression="STUDENT_ID" />
                    <asp:BoundField DataField="F_NAME" HeaderText="F_NAME" SortExpression="F_NAME" />
                    <asp:BoundField DataField="L_NAME" HeaderText="L_NAME" SortExpression="L_NAME" />
                    <asp:BoundField DataField="M_NAME" HeaderText="M_NAME" SortExpression="M_NAME" />
                    <asp:BoundField DataField="STUD_ADDRESS" HeaderText="STUD_ADDRESS" SortExpression="STUD_ADDRESS" />
                    <asp:BoundField DataField="GENDER" HeaderText="GENDER" SortExpression="GENDER" />
                    <asp:BoundField DataField="GPA" HeaderText="GPA" SortExpression="GPA" />
                    <asp:BoundField DataField="DOB" HeaderText="DOB" SortExpression="DOB" />
                    <asp:BoundField DataField="DNO" HeaderText="DNO" SortExpression="DNO" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:StudentConnectionString %>" ProviderName="<%$ ConnectionStrings:StudentConnectionString.ProviderName %>" SelectCommand="SELECT STUDENT_ID, F_NAME, L_NAME, M_NAME, STUD_ADDRESS, GENDER, GPA, DOB, DNO FROM SMS_SAMPLE.STUDENT"></asp:SqlDataSource>
        </p>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>

        <p>
            &nbsp;</p>
    </form>
</body>
</html>
