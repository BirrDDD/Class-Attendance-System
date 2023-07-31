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
    public partial class all_student : System.Web.UI.Page
    {
        public string con = "Server=103.204.87.120;Database=class_attend_a_s;port=3306;username=abir;password=your_password;";
        protected void Page_Load(object sender, EventArgs e)
        {

            errordel.Visible = false;

            //  Assign user name 
            if (Session["userid"] == null)
            {
                Response.Redirect("Login.aspx");
            }
            else
            {

                string emailer = Session["userid"].ToString();
                MySqlConnection mySql = new MySqlConnection(con);
                string conn12 = "SELECT `Name` FROM `users` WHERE `Email` = '" + emailer + "'";
                mySql.Open();
                MySqlDataReader alua;

                MySqlCommand sda12 = new MySqlCommand(conn12, mySql);

                alua = sda12.ExecuteReader();

                while (alua.Read())
                {
                    userid.InnerText = alua.GetString("Name");
                }
                userid1.InnerText = userid.InnerText;
                alua.Close();
                Session["Name"] = userid.InnerText;
            }

            //--- done name





            MySqlConnection conn = new MySqlConnection(con);
            string mysql = "SELECT `Name`, `Roll`, `Email`,`Number`,`Department`,`Address` FROM `student`";
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


        }

        protected void deleteID_Click(object sender, EventArgs e)
        {
            MySqlConnection conn = new MySqlConnection(con);
            string mysql = "DELETE FROM `student` WHERE `Roll` = '" + deletestudent.Value.ToString() + "'";
            MySqlCommand sqlcomm = new MySqlCommand(mysql, conn);
            conn.Open();
            sqlcomm.ExecuteNonQuery();
            errordel.InnerText = "Student info from roll " + deletestudent.Value.ToString() + " Has been deleted";
            errordel.Visible = true;
            conn.Close();
            deletestudent.Value = string.Empty;



        }
    }
}