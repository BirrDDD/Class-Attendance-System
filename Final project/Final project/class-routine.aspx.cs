using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Final_project
{
    public partial class class_routine : System.Web.UI.Page
    {
        public string con = "Server=103.204.87.120;Database=class_attend_a_s;port=3306;username=abir;password=your_password;";
        protected void Page_Load(object sender, EventArgs e)
        {
            //  Assign user name 
            if (Session["userid"] == null)
            {
                Response.Redirect("Login.aspx");
            }
            else
            {

                string emailer = Session["userid"].ToString();
                MySqlConnection mySql = new MySqlConnection(con);
                string conn = "SELECT `Name` FROM `users` WHERE `Email` = '" + emailer + "'";
                mySql.Open();
                MySqlDataReader alua;

                MySqlCommand sda = new MySqlCommand(conn, mySql);

                alua = sda.ExecuteReader();

                while (alua.Read())
                {
                    userid.InnerText = alua.GetString("Name");
                }
                userid1.InnerText = userid.InnerText;
                alua.Close();
                Session["Name"] = userid.InnerText;
            }

            //--- done name




            if (!IsPostBack)
            {
                MySqlConnection conn = new MySqlConnection(con);
                string mysql = "SELECT `Course` , `Serial`  FROM `course`";
                MySqlCommand sqlcomm = new MySqlCommand(mysql, conn);
                conn.Open();
                MySqlDataAdapter sda = new MySqlDataAdapter(sqlcomm);
                DataTable dt = new DataTable();
                sda.Fill(dt);


                courselist.DataTextField = "Course";
                //courselist.DataValueField = "Serial";
                courselist.DataSource = dt;
                courselist.DataBind();
            }

        }

        protected void coursefinder_Click(object sender, EventArgs e)
        {
            MySqlConnection conn = new MySqlConnection(con);
            //string mysql = "SELECT `Teacher Name`,`Course`,`Department`,`Class Time`, `Number of Course Days` FROM `course` WHERE `Course` = \" " + courselist.SelectedItem.Text + " \" ";
            string mysql = "SELECT * FROM `course` WHERE `Course` = \"" + courselist.SelectedItem.Text + "\"";
            MySqlCommand sqlcomm = new MySqlCommand(mysql, conn);
            conn.Open();
            MySqlDataAdapter sda = new MySqlDataAdapter(sqlcomm);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            StringBuilder sb = new StringBuilder();
            foreach (DataColumn dc in dt.Columns)
            {
                sb.Append("<th>");
                sb.Append(dc.ColumnName.ToString());
                sb.Append("</th>");

            }
            theader.Controls.Add(new Label { Text = sb.ToString() });

            StringBuilder sh = new StringBuilder();
            foreach (DataRow dr in dt.Rows)
            {
                sh.Append("<tr>");
                foreach (DataColumn dc in dt.Columns)
                {
                    sh.Append("<td>");
                    sh.Append(dr[dc.ColumnName].ToString());
                    sh.Append("</td>");

                }
                sh.Append("</tr>");

            }
            tbody.Controls.Add(new Label { Text = sh.ToString() });
            conn.Close();

        }

        protected void coursedel_Click(object sender, EventArgs e)
        {
            MySqlConnection conn = new MySqlConnection(con);
            string mysql = "DROP TABLE `" + courselist.SelectedItem.Text + "`";
            MySqlCommand sqlcomm = new MySqlCommand(mysql, conn);
            conn.Open();
            sqlcomm.ExecuteNonQuery();

            string mysql1 = "DELETE FROM `course` WHERE `Course` = \"" + courselist.SelectedItem.Text + "\"";

            MySqlCommand sqlcomm1 = new MySqlCommand(mysql1, conn);
            sqlcomm1.ExecuteNonQuery();
            Response.Redirect(Request.RawUrl);
        }
    }
}