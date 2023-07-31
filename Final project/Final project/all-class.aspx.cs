using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Text;
using System.Data;
using MySql.Data.MySqlClient;

namespace Final_project
{
    public partial class all_class : System.Web.UI.Page
    {
        public string con = "Server=103.204.87.120;Database=class_attend_a_s;port=3306;username=abir;password=your_password;";
        protected void Page_Load(object sender, EventArgs e)
        {
            successalert.Visible = false;

            errorstuda.Visible = false;

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





        }

        protected void addstudent_Click(object sender, EventArgs e)
        {
            MySqlConnection conn = new MySqlConnection(con);
            string mySql = "INSERT INTO `student`(`Name`, `Email`, `Roll` , `Department` , `Number`) VALUES('" + studname.Value.ToString() + "', '" + studemail.Value.ToString() + "', '" + studroll.Value.ToString() + "' , '" + studdept.Value.ToString() + "', '" + studnumber.Value.ToString() + "')";
            conn.Open();
            MySqlCommand sdaa = new MySqlCommand(mySql, conn);
            try
            {
                sdaa.ExecuteNonQuery();
                successalert.Visible = true;

            }
            catch (Exception)
            {
                errorstuda.Visible = true;
            }


            conn.Close();



        }
    }
}