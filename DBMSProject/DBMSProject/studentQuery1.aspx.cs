using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data;
using System.Configuration;
using System.Data.OracleClient;
using Oracle.DataAccess.Client; // ODP.NET Oracle managed provider

using Oracle.DataAccess.Types;

namespace DBMSProject
{
    public partial class studentQuery1 : System.Web.UI.Page
    {
        private object f_name;

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {


            Response.Redirect("~/HomePage.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/studentQuery.aspx");
        }

        // OleDbConnection con = new OleDbConnection("Provider=system.Data.OracleClient;Data Source=XE;User ID=system;Password=trinetri33;Unicode=True");
        //protected void Button1_Click1(object sender, EventArgs e)
        //{
        //    //string oradb = "Data Source=ORCL;User Id=system;Password=trinetri33;";

        //    //OracleConnection conn = new OracleConnection(oradb); // C#

        //    //conn.Open();
        //    //OracleCommand cmd = new OracleCommand();

        //    //cmd.Connection = conn;

        //   // cmd.CommandText = "select department_name from departments where department_id = 10";
        //    //cmd.CommandType = CommandType.Text;
        //    con.Open();
        //    OleDbDataAdapter oda = new OleDbDataAdapter("Select student_id,f_name,l_name from student", con);
        //    DataTable dt = new DataTable();
        //    oda.Fill(dt);
        //    dataGridView1.DataSource = dt;
        //    con.Close();

        //}


        protected void Button1_Click1(object sender, EventArgs e)
        {
            //string oradb = "Data Source=ORCL;User Id=system;Password=trinetri33;";

            string connectionString = "Data Source=XE;User ID=system;Password=trinetri33;Unicode=True";
            OracleConnection connection = new OracleConnection(connectionString);
           
           // connection.Open();
            //System.Configuration.ConfigurationManager.ConnectionStrings["connectionString"].ConnectionString;
                    
            OracleCommand cmd = new OracleCommand();

            cmd.Connection = connection;

            cmd.CommandText = "insert into student values('" + student_Id.Text + "','" + l_name.Text + "','" + m_name.Text + "','" + stud_address.Text + "','" + gender.Text + "','" + gpa.Text + "','" + dob.Text + "','" + dno.Text + "')";
            cmd.ExecuteNonQuery();
            cmd.CommandType = CommandType.Text;
            connection.Close();



        }

        protected void SqlDataSource1_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
        {

        }
    }
}