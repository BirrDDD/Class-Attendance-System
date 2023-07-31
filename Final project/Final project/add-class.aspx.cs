using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Final_project
{
    public partial class add_class : System.Web.UI.Page
    {
        public string con = "Server=103.204.87.120;Database=class_attend_a_s;port=3306;username=abir;password=your_password;";
        protected void Page_Load(object sender, EventArgs e)
        {

            successalert.Visible = false;
            errorstuda.Visible = false;
            assigncourse.Visible = false;
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
                courselist.DataValueField = "Serial";
                courselist.DataSource = dt;
                courselist.DataBind();

                string sql = "SELECT *  FROM `student`";
                MySqlCommand sqlcomm1 = new MySqlCommand(sql, conn);

                MySqlDataAdapter sda1 = new MySqlDataAdapter(sqlcomm1);
                DataTable dt1 = new DataTable();
                sda1.Fill(dt1);



                rolllist.DataTextField = "Roll";
                rolllist.DataValueField = "Roll";
                rolllist.DataSource = dt1;
                rolllist.DataBind();
            }



        }

        protected void submit_Click(object sender, EventArgs e)
        {

            MySqlConnection conn = new MySqlConnection(con);
            string mySql = "INSERT INTO `course`(`Teacher Name`, `Course`, `Department`, `Number of Student`, `Class Time`, `Number of Course Days`) VALUES ('" + name.Value.ToString() + "','" + course.Value.ToString() + "','" + dept.Value.ToString() + "','" + studnum.Value.ToString() + "','" + classtime.Value.ToString() + "','" + courseday.Value.ToString() + "')";
            conn.Open();
            string table = "CREATE TABLE " + course.Value.ToString() + "( StudentName varchar(255), StudentRoll varchar(255),ClassTime varchar(255),CourseDays varchar(255) ); ";
            MySqlCommand sdaa = new MySqlCommand(mySql, conn);
            MySqlCommand sdaa1 = new MySqlCommand(table, conn);
            try
            {
                sdaa.ExecuteNonQuery();

                sdaa1.ExecuteNonQuery();
                successalert.Visible = true;
                Response.Redirect("add-class.aspx");

            }
            catch (Exception)
            {
                errorstuda.Visible = true;

            }




        }

        protected void tus_Click(object sender, EventArgs e)
        {
            MySqlConnection conn = new MySqlConnection(con);
            //Getting student name ----------------------------
            string studentnamee = null;
            string mySql1 = "SELECT `Name` FROM `student` WHERE `Roll` = \"" + rolllist.SelectedItem.Text + "\"";
            conn.Open();
            using (MySqlCommand sdaa1 = new MySqlCommand(mySql1, conn))
            {
                using (MySqlDataReader reader = sdaa1.ExecuteReader())
                {
                    if (reader.Read())
                    {
                        studentnamee = reader.GetString(0);
                    }
                }

            }


            conn.Close();
            string time_class = null;
            string daysofclass = null;
            //-----------------------------------------------------------------------------

            string mySql2 = "SELECT `Class Time`, `Number of Course Days` FROM `course` WHERE `Course` = \"" + courselist.SelectedItem.Text + "\"";
            conn.Open();

            using (MySqlCommand sdaa1 = new MySqlCommand(mySql2, conn))
            {
                using (MySqlDataReader reader = sdaa1.ExecuteReader())
                {
                    if (reader.Read())
                    {
                        time_class = reader.GetString(0);
                        daysofclass = reader.GetString(1);
                    }
                }
            }



            //--------------------------------------------------------------------------




            string mySql = "INSERT INTO `" + courselist.SelectedItem.Text + "`(`StudentName`, `StudentRoll`, `ClassTime` , `CourseDays`) VALUES('" + studentnamee + "', '" + rolllist.SelectedItem.Text + "', '" + time_class + "' , '" + daysofclass + "')";

            MySqlCommand sdaa = new MySqlCommand(mySql, conn);
            sdaa.ExecuteNonQuery();

            assigncourse.Visible = true;



        }
    }
}